import math
import numpy as np
import torch
import pytorch_kinematics as pk
import random




class node:
    def __init__(self, position, parent, distToGoal = float('inf')):
        self.position = position
        self.parent = parent
        self.distToGoal = distToGoal



class JT_RRT:
    def __init__(self, start, goal, kinetic_chain, joint_limits, max_iter, distance_threshold, step_size, goal_bias = 1):
        self.x_goal = torch.tensor(goal)
        self.kinematic_chain = kinetic_chain
        self.start_node = node(torch.tensor(start), None, self.goaldistance(start, self.x_goal))
        self.max_iter = max_iter
        self.distance_threshold = distance_threshold
        self.goal_bias = goal_bias # Probability of extending towards the goal
        self.step_size = step_size
        self.joint_limits = joint_limits
        self.nodes = [self.start_node]
        self.path = []
        self.path_found = False
        self.goalUnreachable = False


    def GrowRRT(self):
        q_new = self.nodes[-1]
        i = 0
        while(self.nodes[-1].distToGoal > self.distance_threshold) and not self.goalUnreachable:
            p = np.random.rand()
            if p < self.goal_bias:
                self.ExtendTowardsGoal()
                print(self.nodes[-1].distToGoal, self.nodes[-2].distToGoal)
                if self.nodes[-1].distToGoal == self.nodes[-2].distToGoal:
                    print('two last nodes: ', self.nodes[-1].position, self.nodes[-2].position)
                    self.goalUnreachable = True
                    break
            else:
                q_new = self.ExtendRandom()
                if q_new != None:
                    self.nodes.append(q_new)
            print(f"Iteration: {i}, Nodes in tree: {len(self.nodes)}, Distance to goal: {self.nodes[-1].distToGoal}")

            i += 1
            if i > self.max_iter:
                print('Max iterations reached')
                break
        if self.goalUnreachable:
            print('Goal unreachable')
        else:
            print('Path found')
            self.path_found = True
            self.path = self.ExtractPath()
    
    def ExtractPath(self):
        path = []
        current_node = self.nodes[-1]
        while current_node != None:
            path.append(current_node.position)
            current_node = current_node.parent
        return path
    
    def get_path_cartesian(self):
        path = []
        for joint_configuration in self.path:
            matrix = self.kinematic_chain.forward_kinematics(joint_configuration.tolist(),end_only= True).get_matrix()
            position = matrix[0, :3, 3]
            orientation = pk.matrix_to_euler_angles(matrix[0,:3,:3], "XYZ")
            path.append(torch.cat((position, orientation)))
        return path


    def ExtendRandom(self):
        #q_rand = [random.uniform(self.joint_limits[i][0], self.joint_limits[i][1]) for i in range(len(self.joint_limits))]
        q_rand = torch.tensor([random.uniform(self.joint_limits[i][0], self.joint_limits[i][1]) for i in range(len(self.joint_limits))])
        q_near = self.ClosestNode(q_rand)
        delta_q = q_rand - q_near.position
        if torch.norm(delta_q) > self.step_size:
            delta_q = (delta_q / torch.norm(delta_q)) * self.step_size
        q_new = q_near.position + delta_q

        if self.is_collision_free(q_near, q_new):
            new_node = node(q_new, q_near, self.goaldistance(q_new, self.x_goal))
            return new_node
        else:
            return None
    
    def ClosestNode(self, q_rand):
        min_dist = float('inf')
        closest_node = None
        for node in self.nodes:
            dist = sum([(node.position[i] - q_rand[i])**2 for i in range(len(self.joint_limits))])
            if dist < min_dist:
                min_dist = dist
                closest_node = node
        return closest_node
    
    def goaldistance(self, joint_configuration, x_goal):

        
        matrix = self.kinematic_chain.forward_kinematics(joint_configuration,end_only= True).get_matrix()
        # Extract position and orientation from the transformation matrix
        position = matrix[0, :3, 3]
        orientation = pk.matrix_to_euler_angles(matrix[0,:3,:3], "XYZ")
        # Combine position and orientation into a single vector
        temp = torch.cat((position, orientation))
        temp = x_goal - temp
        print(torch.norm(temp))
        return torch.norm(temp)
    
    def ExtendTowardsGoal(self):
        q_old = self.ClosestNodeToGoal()
        j = 0
        while q_old.distToGoal > self.distance_threshold and j < self.max_iter:
            j += 1
            #Calculate the Jacobian transpose and q_new based on the Jacobian transpose
            JT = torch.transpose(self.kinematic_chain.jacobian(q_old.position.tolist())[0],0,1)
            delta_x = self.WorkspaceDelta(q_old)
            delta_q = torch.matmul(JT, delta_x)
            q_new = q_old.position + delta_q

            #Check if the new joint configuration is within the joint limits
            #for i in range(len(q_new)):
            #    if q_new[i] < self.joint_limits[i][0]:
            #        print('Joint limit reached - lower bound, joint: ', i)
            #        q_new[i] = self.joint_limits[i][0]
            #    elif q_new[i] > self.joint_limits[i][1]:
            #        print('Joint limit reached - upper bound, joint: ', i)
            #        q_new[i] = self.joint_limits[i][1]

            #Check if the new joint configuration is collision free
            if self.is_collision_free(q_old, q_new):
                new_node = node(q_new, q_old, self.goaldistance(q_new, self.x_goal))
                self.nodes.append(new_node)
            else:
                break
            q_old = new_node

    def is_collision_free(self, q_old, q_new):
        return True

    def WorkspaceDelta(self, q_old):

        matrix = self.kinematic_chain.forward_kinematics(q_old.position.tolist(),end_only= True).get_matrix()
        position = matrix[0, :3, 3]
        orientation = pk.matrix_to_euler_angles(matrix[0,:3,:3], "XYZ")
        x_old = torch.cat((position, orientation))
        if torch.norm(x_old - self.x_goal) < self.step_size:
            return self.x_goal - x_old
        else:
            return (self.x_goal - x_old) / torch.norm(self.x_goal - x_old) * self.step_size
    
    def ClosestNodeToGoal(self):
        min_dist = float('inf')
        closest_node = None
        for node in self.nodes:
            if node.distToGoal < min_dist:
                min_dist = node.distToGoal
                closest_node = node
        return closest_node



chain = pk.build_serial_chain_from_urdf(open("panda.urdf").read(),"panda_link7")

x_goal = [0.5, 0.5, 0.5, 0, np.pi/2 , 0]
#start_config = [0,-0.785398163,0,-2.35619449,0,1.57079632679,0.785398163397]
start_config = [0,0,0,0,0,0,0]
joint_limits = [
    (-2.8973, 2.8973),  # Joint 1
    (-1.7628, 1.7628),  # Joint 2
    (-2.8973, 2.8973),  # Joint 3
    (-3.0718, -0.0698), # Joint 4
    (-2.8973, 2.8973),  # Joint 5
    (-0.0175, 3.7525),  # Joint 6
    (-2.8973, 2.8973)   # Joint 7
]

matrix = chain.forward_kinematics(start_config,end_only= True).get_matrix()
position = matrix[0, :3, 3]
orientation = pk.matrix_to_euler_angles(matrix[0,:3,:3], "XYZ")
x_start = torch.cat((position, orientation))
#x_goal = (x_start + torch.tensor([0.2, 0, 0, 0, 0, 0])).tolist()


print(x_start)
print(x_goal)

JT_RRT = JT_RRT(start_config, x_goal, chain, joint_limits, 1000, 0.2, 0.5)
JT_RRT.GrowRRT()

cartesian_path = JT_RRT.get_path_cartesian()

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# Separate the x, y, and z coordinates
x = [pos[0] for pos in cartesian_path]
y = [pos[1] for pos in cartesian_path]
z = [pos[2] for pos in cartesian_path]


# Extract the orientation values
roll = [ori[3] for ori in cartesian_path]
pitch = [ori[4] for ori in cartesian_path]
yaw = [ori[5] for ori in cartesian_path]

# Convert the orientation values to direction vectors
scale = 0.2
dx = [scale*math.cos(yaw[i]) * math.cos(pitch[i]) for i in range(len(yaw))]
dy = [scale*math.sin(yaw[i]) * math.cos(pitch[i]) for i in range(len(yaw))]
dz = [scale*math.sin(pitch[i]) for i in range(len(pitch))]

# Plot the direction vectors
fig = plt.figure()
# Create a new figure

# Create a 3D axis
ax = fig.add_subplot(111, projection='3d')

ax.quiver(x, y, z, dx, dy, dz, color='red')
# Plot the path
#ax.plot(x, y, z)

# Set labels
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

# Show the plot
plt.show()