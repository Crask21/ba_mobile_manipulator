#!/usr/bin/env python

import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseResult
from navigation_via_cost_function.srv import *
import sys
import tf
import moveit_commander
import moveit_msgs.msg
from moveit_msgs.msg import RobotState
from sensor_msgs.msg import JointState

import geometry_msgs.msg
from moveit_commander.conversions import pose_to_list
from math import pi, tau, dist, fabs, cos, sin
from navigation_via_cost_function.srv import *
import time
from std_msgs.msg import String, Header
import argparse
import random
import numpy as np
import csv




def all_close(goal, actual, tolerance):
    """
    Convenience method for testing if the values in two lists are within a tolerance of each other.
    For Pose and PoseStamped inputs, the angle between the two quaternions is compared (the angle
    between the identical orientations q and -q is calculated correctly).
    @param: goal       A list of floats, a Pose or a PoseStamped
    @param: actual     A list of floats, a Pose or a PoseStamped
    @param: tolerance  A float
    @returns: bool
    """
    if type(goal) is list:
        for index in range(len(goal)):
            if abs(actual[index] - goal[index]) > tolerance:
                return False

    elif type(goal) is geometry_msgs.msg.PoseStamped:
        return all_close(goal.pose, actual.pose, tolerance)

    elif type(goal) is geometry_msgs.msg.Pose:
        x0, y0, z0, qx0, qy0, qz0, qw0 = pose_to_list(actual)
        x1, y1, z1, qx1, qy1, qz1, qw1 = pose_to_list(goal)
        # Euclidean distance
        d = dist((x1, y1, z1), (x0, y0, z0))
        # phi = angle between orientations
        cos_phi_half = fabs(qx0 * qx1 + qy0 * qy1 + qz0 * qz1 + qw0 * qw1)
        return d <= tolerance and cos_phi_half >= cos(tolerance / 2.0)

    return True

class MoveGroupPythonInterfaceTutorial(object):
    """MoveGroupPythonInterfaceTutorial"""

    def __init__(self):
        super(MoveGroupPythonInterfaceTutorial, self).__init__()

        ## BEGIN_SUB_TUTORIAL setup
        ##
        ## First initialize `moveit_commander`_ and a `rospy`_ node:
        moveit_commander.roscpp_initialize(sys.argv)
        #rospy.init_node("move_group_python_interface_tutorial", anonymous=True)

        ## Instantiate a `RobotCommander`_ object. Provides information such as the robot's
        ## kinematic model and the robot's current joint states
        if demo == True:
            ns = ""
        else:
            ns = "/robot"
        if demo == True:
            robot_description = "robot_description"
        else:
            robot_description = "/robot/robot_description"

        robot = moveit_commander.RobotCommander(robot_description=robot_description)
        ## Instantiate a `PlanningSceneInterface`_ object.  This provides a remote interface
        ## for getting, setting, and updating the robot's internal understanding of the
        ## surrounding world:
        scene = moveit_commander.PlanningSceneInterface(ns=ns)
        # scene.acm_set_allowed()

        ## Instantiate a `MoveGroupCommander`_ object.  This object is an interface
        ## to a planning group (group of joints).  In this tutorial the group is the primary
        ## arm joints in the Panda robot, so we set the group's name to "panda_arm".
        ## If you are using a different robot, change this value to the name of your robot
        ## arm planning group.
        ## This interface can be used to plan and execute motions:
        group_name = "whole_body"
        move_group = moveit_commander.MoveGroupCommander(group_name, robot_description=robot_description,ns=ns)
        # move_group.allow_looking(True)
        move_group.allow_replanning(True)

        ## Create a `DisplayTrajectory`_ ROS publisher which is used to display
        ## trajectories in Rviz:
        display_trajectory_publisher = rospy.Publisher(
            "/move_group/display_planned_path",
            moveit_msgs.msg.DisplayTrajectory,
            queue_size=20,
        )

        ## BEGIN_SUB_TUTORIAL basic_info
        ##
        ## Getting Basic Information
        ## ^^^^^^^^^^^^^^^^^^^^^^^^^
        # We can get the name of the reference frame for this robot:
        planning_frame = move_group.get_planning_frame()
        print("============ Planning frame: %s" % planning_frame)

        # We can also print the name of the end-effector link for this group:
        eef_link = move_group.get_end_effector_link()
        print("============ End effector link: %s" % eef_link)

        # We can get a list of all the groups in the robot:
        group_names = robot.get_group_names()
        print("============ Available Planning Groups:", robot.get_group_names())

        # Sometimes for debugging it is useful to print the entire state of the
        # robot:
        print("============ Printing robot state")
        print(robot.get_current_state())
        print("")
        ## END_SUB_TUTORIAL

        # Misc variables
        self.box_name = ""
        self.robot = robot
        self.scene = scene
        self.move_group = move_group
        self.display_trajectory_publisher = display_trajectory_publisher
        self.planning_frame = planning_frame
        self.eef_link = eef_link
        self.group_names = group_names

    def go_to_pose_goal(self, pose_goal):

        self.move_group.set_pose_target(pose_goal)


        ## Now, we call the planner to compute the plan and execute it.
        # `go()` returns a boolean indicating whether the planning and execution was successful.
        success = self.move_group.go(wait=True)
        # Calling `stop()` ensures that there is no residual movement
        self.move_group.stop()
        # It is always good to clear your targets after planning with poses.
        # Note: there is no equivalent function for clear_joint_value_targets().
        self.move_group.clear_pose_targets()


        # For testing:
        # Note that since this section of code will not be included in the tutorials
        # we use the class variable rather than the copied state variable
        current_pose = self.move_group.get_current_pose().pose
        return all_close(pose_goal, current_pose, 0.01)

    def go_to_joint_state(self, joint_goal):
        self.move_group.go(joint_goal, wait=True)
        self.move_group.stop()

def feedback_callback(feedback):
    #print(feedback)
    pass

def publish_goal(robot_name):
    # Initialize the ROS node
    rospy.init_node('navigation')

    # --------------------------- run cost_opt_service --------------------------- #
    # Create a service client
    service_client = rospy.ServiceProxy('/cost_opt', get_position)
    # Wait for the service to be ready
    service_client.wait_for_service()
    response = service_client()

    # ------------------------------ prepare moveit ------------------------------ #
    moveitGroup = MoveGroupPythonInterfaceTutorial()

    listener = tf.TransformListener()
    listener.waitForTransform("/robot_map", "/person_hand", rospy.Time(0), rospy.Duration(0.1))
    position, quaternion = listener.lookupTransform("/robot_map", "/person_hand", rospy.Time(0))
    #print("Position and quaternion of person_hand with respect to robot_map")
    #print(position, quaternion)

    # listener.waitForTransform("/panda_link0", "/robot_odom", rospy.Time(0), rospy.Duration(4.0))
    # position_base_link0, quaternion_base_link0 = listener.lookupTransform("/panda_link0", "/robot_odom", rospy.Time(0))
    # print("Position and quaternion of base_link0 with respect to odom")
    # print(position_base_link0, quaternion_base_link0)

    # Panda arm offset from summit_base_link = [0.2 -0.15 0.580] (+0.127 for wheel radius)
    panda_arm_offset = [0.2, 0.15, 0.580+0.127]
    pose_goal = geometry_msgs.msg.Pose()
    x_temp = position[0] - (response.x + panda_arm_offset[0]*cos(response.theta))
    y_temp = position[1] - (response.y + panda_arm_offset[1]*sin(response.theta))
    pose_goal.position.x = x_temp*cos(-response.theta) - y_temp*sin(-response.theta)
    pose_goal.position.y = x_temp*sin(-response.theta) + y_temp*cos(-response.theta)
    pose_goal.position.z = position[2] - panda_arm_offset[2]
    orientation = tf.transformations.quaternion_from_euler(pi, 0, 0)
    pose_goal.orientation.x = orientation[0]
    pose_goal.orientation.y = orientation[1]
    pose_goal.orientation.z = orientation[2]
    pose_goal.orientation.w = orientation[3]

    #print("Pose goal: ", pose_goal)







    client = actionlib.SimpleActionClient('/robot/move_base', MoveBaseAction)
    # waits until the action server is up and running
    client.wait_for_server()

    # Create a new MoveBaseActionGoal message
    goal = MoveBaseGoal()
    goal.target_pose.header.stamp = rospy.Time.now()

    # Set the goal position (example: x=1.0, y=2.0, z=0.0)
    goal.target_pose.header.frame_id = 'robot_map'
    goal.target_pose.pose.position.x = response.x
    goal.target_pose.pose.position.y = response.y
    quaternion = tf.transformations.quaternion_from_euler(0, 0, response.theta)
    goal.target_pose.pose.orientation.x = quaternion[0]
    goal.target_pose.pose.orientation.y = quaternion[1]
    goal.target_pose.pose.orientation.z = quaternion[2]
    goal.target_pose.pose.orientation.w = quaternion[3]


    # Publish the goal
    #publisher.publish(goal)
    # ----------------------------- Perform movements ---------------------------- #
    client.send_goal(goal, feedback_cb=feedback_callback)
    moveitGroup.go_to_pose_goal(pose_goal)
    client.wait_for_result()


    #rospy.loginfo('Published goal position for robot: {}'.format(robot_name))


def realtime_follow(robot_name):
    # -------------------------- Initialize the ROS node ------------------------- #
    rospy.init_node('navigation')
    print("Demo: ", demo)

    # --------------------------- run cost_opt_service --------------------------- #
    # Create a service client
    #service_client = rospy.ServiceProxy('/cost_opt', get_position)

    # ------------------------------ prepare moveit ------------------------------ #
    print("Initializing moveit-------------------------------------")
    moveitGroup = MoveGroupPythonInterfaceTutorial()
    listener = tf.TransformListener()
    pose_goal = geometry_msgs.msg.Pose()
    print("Moveit initialized-------------------------------------")
    input("Press Enter to start following the person")

    listener.waitForTransform("/world", "/person_hand", rospy.Time(0), rospy.Duration(0.3)) #Wait for transform to be available
    # ----------------------------- Perform movements ---------------------------- #
    while not rospy.is_shutdown():
        print("running --------------------------------------")
        time_ = time.time()
        listener.waitForTransform("/world", "/person_hand", rospy.Time(0), rospy.Duration(0.05))
        position, quaternion = listener.lookupTransform("/world", "/person_hand", rospy.Time(0))
        quaternion= tf.transformations.quaternion_multiply(quaternion, tf.transformations.quaternion_about_axis(pi, [1, 0, 0]))
        pose_goal.position.x = position[0]
        pose_goal.position.y = position[1]
        pose_goal.position.z = position[2]
        pose_goal.orientation.x = quaternion[0]
        pose_goal.orientation.y = quaternion[1]
        pose_goal.orientation.z = quaternion[2]
        pose_goal.orientation.w = quaternion[3]
        
        # moveitGroup.go_to_pose_goal(pose_goal)
        # (plan, fraction) = moveitGroup.move_group.compute_cartesian_path([pose_goal], 0.01, 0.0)
        # print(plan)
        # print("Time to plan: ", time.time()-time_)
        # time__ = time.time()
        # moveitGroup.move_group.execute(plan, wait=True)
        # print("Time to execute: ", time.time()-time__)
        moveitGroup.go_to_pose_goal(pose_goal)
        # rospy.sleep(0.05)
        # if(input("Press Enter to continue")==" "):
        #     moveitGroup.move_group.execute(plan, wait=True)

def log_position_error(robot_name):


    # -------------------- Prepare person hand at set position ------------------- #
    req = set_positionRequest()
    req.x = -1
    req.y = -1
    req.z = 0
    req.theta = 0
    person_position_service = rospy.ServiceProxy('update_person_position',set_position)
    person_position_service.call(req)
    hand_position_service = rospy.ServiceProxy('update_hand_position',set_position)
    hand_position = (0.4, -0.2, 1.2)
    req.x = hand_position[0]
    req.y = hand_position[1]
    req.z = hand_position[2]
    req.theta = -0.2
    hand_position_service.call(req)
    publish_goal(robot_name)


    input("Wait for keypress")

    # ---------- prepare data logging of hand and end effector position ---------- #
    log_duration = 10 #seconds
    rate = rospy.Rate(20)
    hand_position = []
    ee_position = []


    listener = tf.TransformListener()
    listener.waitForTransform("/robot_map", "/person_hand", rospy.Time(0), rospy.Duration(0.025))
    position, quaternion = listener.lookupTransform("/robot_map", "/person_hand", rospy.Time(0))

    start_time = rospy.Time.now().secs
    time = rospy.Time.secs
    while time - start_time < 1:
        listener.waitForTransform("/robot_map", "/person_hand", rospy.Time(0), rospy.Duration(0.025))
        position, quaternion = listener.lookupTransform("/robot_map", "/person_hand", rospy.Time(0))
        hand_position.append(position)
        listener.waitForTransform("/robot_map", "/panda_link8", rospy.Time(0), rospy.Duration(0.025))
        position, quaternion = listener.lookupTransform("/robot_map", "/panda_link8", rospy.Time(0))
        ee_position.append(position)
        rate.sleep()

    req.x = 0.55
    hand_position_service.call(req)
    publish_goal(robot_name)

    while time - start_time < log_duration:
        listener.waitForTransform("/robot_map", "/person_hand", rospy.Time(0), rospy.Duration(0.025))
        position, quaternion = listener.lookupTransform("/robot_map", "/person_hand", rospy.Time(0))
        hand_position.append(position)
        listener.waitForTransform("/robot_map", "/panda_link8", rospy.Time(0), rospy.Duration(0.025))
        position, quaternion = listener.lookupTransform("/robot_map", "/panda_link8", rospy.Time(0))
        ee_position.append(position)
        rate.sleep()

def run_once(robot_name):
    # Initialize the ROS node
    global demo
    rospy.init_node('navigation')
    print("Demo: ", demo)

    input("Press Enter to publish goal for robot: {}".format(robot_name))
    # --------------------------- run cost_opt_service --------------------------- #
    print("Running cost_opt_service-------------------------------------")
    # Create a service client
    service_client = rospy.ServiceProxy('/cost_opt', get_goal_configuration)
    # Wait for the service to be ready
    service_client.wait_for_service()
    response = service_client()

    print("response: ", response.q_goal, "\t Type: ", type(response.q_goal))

    # ------------------------------ prepare moveit ------------------------------ #
    moveitGroup = MoveGroupPythonInterfaceTutorial()
    #moveitGroup.go_to_joint_state(response.q_goal)
    

    # ----------------------------- Perform movements

def run_once_go_to_pose():
    # Initialize the ROS node
    global demo
    rospy.init_node('navigation')
    print("Demo: ", demo)
    input("Press Enter to publish goal for robot: {}".format("robot"))

    # ------------------------------ prepare moveit ------------------------------ #
    moveitGroup = MoveGroupPythonInterfaceTutorial()

    # -------------------- Prepare person hand at set position ------------------- #
    listener = tf.TransformListener()
    listener.waitForTransform("/world", "/person_hand", rospy.Time(0), rospy.Duration(0.3))

    
    position, quaternion = listener.lookupTransform("/world", "/person_hand", rospy.Time(0))
    quaternion= tf.transformations.quaternion_multiply(quaternion, tf.transformations.quaternion_about_axis(pi, [1, 0, 0]))

    pose_goal = geometry_msgs.msg.Pose()
    pose_goal.position.x = position[0]
    pose_goal.position.y = position[1]
    pose_goal.position.z = position[2]
    pose_goal.orientation.x = quaternion[0]
    pose_goal.orientation.y = quaternion[1]
    pose_goal.orientation.z = quaternion[2]
    pose_goal.orientation.w = quaternion[3]
    # (plan, fraction) = moveitGroup.move_group.compute_cartesian_path([pose_goal], 0.01, 0.0)

    # print("Plan: ", plan)

    # moveitGroup.move_group.execute(plan, wait=True)
    moveitGroup.go_to_pose_goal(pose_goal)
    


def manipulability_test():
    # -------------------------- Initialize the ROS node ------------------------- #
    rospy.init_node('navigation')
    # print("Demo: ", demo)

    # --------------------------- run cost_opt_service --------------------------- #
    # Create a service client
    service_client = rospy.ServiceProxy('/cost_opt', get_goal_configuration)
    GetIK_client = rospy.ServiceProxy('/compute_ik', moveit_msgs.srv.GetPositionIK)

    # ------------------------------ prepare moveit ------------------------------ #
    # print("Initializing moveit-------------------------------------")
    moveitGroup = MoveGroupPythonInterfaceTutorial()
    listener = tf.TransformListener()
    pose_goal = geometry_msgs.msg.Pose()
    set_person_position_service = rospy.ServiceProxy('update_person_position',set_position)
    set_hand_position_service = rospy.ServiceProxy('update_hand_position',set_position)
    # print("Moveit initialized-------------------------------------")

    input("Press Enter to start random person position test")

    Manip_index_cost_opt = []
    Manip_index_IK = []
    IK_cost_success = []
    IK_success = []
    position_success_x = []
    position_success_y = []
    position_success_theta = []
    position_fail_x = []
    position_fail_y = []
    position_fail_theta = []
    Cost_time = []
    Cost_time_IK = []
    IK_time = []
    j = 0
    samples = 30


    height_list = np.linspace(0.3, 1.4, 17)
    for height in height_list:
        Manip_index_cost_opt.append([])
        Manip_index_IK.append([])
        IK_cost_success.append(0)
        IK_success.append(0)
        position_success_x.append([])
        position_success_y.append([])
        position_success_theta.append([])
        position_fail_x.append([])
        position_fail_y.append([])
        position_fail_theta.append([])


        for i in range(samples):
            # print("=============================================")
            print("Height: ", height, "\titeration: ", i)
            set_person_position_service.wait_for_service()
            x_rand = random.uniform(-3,-1.5)
            # x_rand = 4
            y_rand = random.uniform(-3,-1.5)
            # y_rand = 0.1
            orientation_rand = 0
            theta_rand = random.uniform(-0.2, 0.2)
            # theta_rand = 0
            set_person_position_service.call(x_rand,y_rand, 0, orientation_rand)
            set_hand_position_service.wait_for_service()
            set_hand_position_service.call(0.5, -0.3, height, theta_rand)
            # set_person_position_service.call(-2,-2, 0.0, 0.0)
            service_client.wait_for_service()
            response = service_client()

            if response.time_cost < 10000:
                Cost_time.append((response.time_cost)/1000)
                Cost_time_IK.append(response.time_IK/1000)


            if response.success == True:
                # print("Failed to find a solution")
                jacobian = moveitGroup.move_group.get_jacobian_matrix(list(response.q_goal))
                A = np.dot(jacobian,jacobian.transpose())
                # eigenvalues = np.linalg.eigvals(A)
                # print("Eigen_max: ", max(eigenvalues), "\t Eigen_min: ", min(eigenvalues))
                # print("Eigen_ratio: ", max(eigenvalues)/min(eigenvalues))
                # print("Eigen_index: ", np.sqrt(np.linalg.det(A)))
                Manip_index_cost_opt[j].append(np.sqrt(np.linalg.det(A)))
                IK_cost_success[j] += 1
                position_success_x[j].append(response.q_goal[0]-x_rand-0.5)
                position_success_y[j].append(response.q_goal[1]-y_rand+0.3)
                position_success_theta[j].append(response.q_goal[2])
            else:
                position_fail_x[j].append(response.q_goal[0]-x_rand-0.5*cos(theta_rand))
                position_fail_y[j].append(response.q_goal[1]-y_rand+0.3*sin(theta_rand))
                position_fail_theta[j].append(response.q_goal[2])


            # ------------------------------ Compute IK ------------------------------ #
            
            listener.waitForTransform("/world", "/person_hand", rospy.Time(0), rospy.Duration(0.3))
            (trans, rot) = listener.lookupTransform("/world", "/person_hand", rospy.Time(0))
            request = moveit_msgs.srv.GetPositionIKRequest()
            request.ik_request.group_name = "whole_body"
            request.ik_request.robot_state.joint_state.name = moveitGroup.move_group.get_active_joints()
            request.ik_request.robot_state.joint_state.position = moveitGroup.move_group.get_current_joint_values()
            request.ik_request.pose_stamped.header.frame_id = "world"

            request.ik_request.pose_stamped.pose.position.x = trans[0]
            request.ik_request.pose_stamped.pose.position.y = trans[1]
            request.ik_request.pose_stamped.pose.position.z = trans[2]
            rot = tf.transformations.quaternion_multiply(rot, tf.transformations.quaternion_about_axis(pi, [1, 0, 0]))
            request.ik_request.pose_stamped.pose.orientation.x = rot[0]
            request.ik_request.pose_stamped.pose.orientation.y = rot[1]
            request.ik_request.pose_stamped.pose.orientation.z = rot[2]
            request.ik_request.pose_stamped.pose.orientation.w = rot[3]

            GetIK_client.wait_for_service()
            start_time = time.time()
            response = GetIK_client(request)
            end_time = time.time()
            IK_time.append((end_time-start_time)*1000)
            if response.error_code.val == 1:
                jacobian = moveitGroup.move_group.get_jacobian_matrix(list(response.solution.joint_state.position))
                A = np.dot(jacobian,jacobian.transpose())
                # eigenvalues = np.linalg.eigvals(A)
                # print("Eigen_max: ", max(eigenvalues), "\t Eigen_min: ", min(eigenvalues))
                # print("Eigen_ratio: ", max(eigenvalues)/min(eigenvalues))
                # print("Eigen_index: ", np.sqrt(np.linalg.det(A)))
                Manip_index_IK[j].append(np.sqrt(np.linalg.det(A)))
                IK_success[j] += 1
            else:
                # print("Failed to find a solution for IK")
                continue
        if len(Manip_index_cost_opt[j]) == 0:
            Manip_index_cost_opt[j].append(0)
        if len(Manip_index_IK[j]) == 0:
            Manip_index_IK[j].append(0)

        j += 1
        time.sleep(0.1)
    # print("Manip_index_cost_opt: ", Manip_index_cost_opt)
    # print("Manip_index_IK: ", Manip_index_IK)
    with open('Eigen_index.csv', mode='w') as file:
        writer = csv.writer(file)
        writer.writerows(Manip_index_cost_opt)

    import matplotlib.pyplot as plt

    # Calculate the average of each list in Eigen_index
    averages = [sum(lst) / len(lst) for lst in Manip_index_cost_opt]
    # Plot the averages
    plt.plot(height_list, averages, label='Manip_index_cost_opt')
    # Calculate the average of each list in Manip_index_IK
    averages_IK = [sum(lst) / len(lst) for lst in Manip_index_IK]
    # Plot the averages
    plt.plot(height_list, averages_IK, label='Manip_index_IK')
    plt.xlabel('Height')
    plt.ylabel('Average Manipulability Index')
    plt.title('Manipulability Index vs Height of operator hand')
    plt.legend()


    IK_cost_success_percentage = [x / samples*100 for x in IK_cost_success]
    IK_success_percentage = [x / samples*100 for x in IK_success]

    plt.figure()
    # Plot IK_cost_success
    plt.plot(height_list, IK_cost_success_percentage, label='IK_cost_success')

    # Plot IK_success
    plt.plot(height_list, IK_success_percentage, label='IK_success')

    plt.xlabel('Height')
    plt.ylabel('Success Rate')
    plt.title('IK Cost Success vs IK Success')
    plt.legend()


    # --------------- plot mobile base position success and failure -------------- #
    height_index = 2
    vector_scale = 0.2
    # Plot position_success
    plt.figure()
    # Plot a vector with angle position_success_theta
    plt.quiver(position_success_x[height_index], position_success_y[height_index], vector_scale*np.cos(position_success_theta[height_index]), vector_scale*np.sin(position_success_theta[height_index]), label='Position Success', color='green')
    # Plot a circle with radius Manip_dist
    max_manip_dist = 0.3330 + 0.3160 + 0.3840 + 0.0880
    height_difference = abs(height_list[height_index] - 0.507)
    Manip_dist = np.sqrt(pow(max_manip_dist, 2) - pow(height_difference, 2)) * 0.5
    circle = plt.Circle((0, 0), Manip_dist, color='blue', fill=False)
    plt.gca().add_patch(circle)
    # Plot position_fail
    plt.quiver(position_fail_x[height_index], position_fail_y[height_index], vector_scale*np.cos(position_fail_theta[height_index]), vector_scale*np.sin(position_fail_theta[height_index]), label='Position Fail', color='red')
    plt.xlabel('X')
    plt.ylabel('Y')
    plt.title('Position Success vs Position Fail')
    plt.legend()


    # Calculate the average time and variance for Cost_time
    average_time_cost = sum(Cost_time) / len(Cost_time)
    variance_cost = sum((t - average_time_cost) ** 2 for t in Cost_time) / len(Cost_time)
    std_cost = np.sqrt(variance_cost)

    # Calculate the average time and variance for Cost_time_IK
    average_time_cost_IK = sum(Cost_time_IK) / len(Cost_time_IK)
    variance_cost_IK = sum((t - average_time_cost_IK) ** 2 for t in Cost_time_IK) / len(Cost_time_IK)
    std_cost_IK = np.sqrt(variance_cost_IK)

    # Calculate the average time and variance for IK_time
    average_time_IK = sum(IK_time) / len(IK_time)
    variance_IK = sum((t - average_time_IK) ** 2 for t in IK_time) / len(IK_time)
    std_IK = np.sqrt(variance_IK)

    merged = np.add(Cost_time, Cost_time_IK)
    average_time_merged = sum(np.add(Cost_time, Cost_time_IK) / len(np.add(Cost_time, Cost_time_IK)))
    variance_merged = sum((t - average_time_merged) ** 2 for t in np.add(Cost_time, Cost_time_IK)) / len(np.add(Cost_time, Cost_time_IK))
    std_merged = np.sqrt(variance_merged)

    # Print the average time and variance for Cost_time
    print("Average Time (Cost_time): ", average_time_cost)
    print("Variance (Cost_time): ", variance_cost)

    # Print the average time and variance for Cost_time_IK
    print("Average Time (Cost_time_IK): ", average_time_cost_IK)
    print("Variance (Cost_time_IK): ", variance_cost_IK)

    # Print the average time and variance for IK_time
    print("Average Time (IK_time): ", average_time_IK)
    print("Variance (IK_time): ", variance_IK)

    # Print the average time and variance for Cost_time + Cost_time_IK
    print("Average Time (Cost_time + Cost_time_IK): ", average_time_merged)
    print("Variance (Cost_time + Cost_time_IK): ", variance_merged)

    

    # Create a box plot for Cost_time, Cost_time_IK, and IK_time
    plt.figure()
    plt.boxplot([Cost_time, Cost_time_IK, np.add(Cost_time, Cost_time_IK), IK_time[:len(Cost_time)]])
    plt.xticks([1, 2, 3, 4], ['3-DOF Cost map', '7-DOF IK','3-DOF Cost map + 7-DOF IK', '10-DOF IK'])
    plt.ylabel('Time (ms)')
    plt.title('Computation time for IK methods')



    plt.show()




#TODO: Clean up the ugly ass parser code that doesn't work:
parser = argparse.ArgumentParser(description='Run the navigation node')
parser.add_argument('robot_name', type=str, help='The name of the robot to control')
parser.add_argument('demo', type=bool, help='Used to run demo.launch instead of gazebo')
# parser.add_argument('development', type=bool, help='Used for testing purposes')
args = parser.parse_args()





if __name__ == '__main__':

    if len(sys.argv) < 2:
        rospy.logerr('Please specify a robot name as an argument')
    else:

        global demo
        demo = rospy.get_param('demo', False)
        #while(input('Press Enter to publish goal for robot: {}'.format(robot_name)) == ''):
        #    publish_goal(robot_name)
        # realtime_follow(robot_name)
        if demo == True:
            # run_once(args.robot_name)
            # manipulability_test()
            # run_once_go_to_pose()
            realtime_follow("robot")
        else:
            realtime_follow(args.robot_name)
            # run_once_go_to_pose()
        #log_position_error(robot_name)