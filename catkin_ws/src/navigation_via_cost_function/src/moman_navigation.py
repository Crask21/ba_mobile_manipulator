#!/usr/bin/env python

import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseResult
from navigation_via_cost_function.srv import *
import sys
import tf
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from moveit_commander.conversions import pose_to_list
from math import pi, tau, dist, fabs, cos, sin
from navigation_via_cost_function.srv import *
import time
from std_msgs.msg import String
import argparse

# import copuy


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
        # rospy.init_node("move_group_python_interface_tutorial", anonymous=True)

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

        ## Instantiate a `MoveGroupCommander`_ object.  This object is an interface
        ## to a planning group (group of joints).  In this tutorial the group is the primary
        ## arm joints in the Panda robot, so we set the group's name to "panda_arm".
        ## If you are using a different robot, change this value to the name of your robot
        ## arm planning group.
        ## This interface can be used to plan and execute motions:
        group_name = "whole_body"
        move_group = moveit_commander.MoveGroupCommander(
            group_name, robot_description=robot_description, ns=ns
        )

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
    # print(feedback)
    pass


def publish_goal(robot_name):
    # Initialize the ROS node
    rospy.init_node("navigation")

    # --------------------------- run cost_opt_service --------------------------- #
    # Create a service client
    service_client = rospy.ServiceProxy("/cost_opt", get_position)
    # Wait for the service to be ready
    service_client.wait_for_service()
    response = service_client()

    # ------------------------------ prepare moveit ------------------------------ #
    moveitGroup = MoveGroupPythonInterfaceTutorial()

    listener = tf.TransformListener()
    listener.waitForTransform(
        "/robot_map", "/person_hand", rospy.Time(0), rospy.Duration(0.1)
    )
    position, quaternion = listener.lookupTransform(
        "/robot_map", "/person_hand", rospy.Time(0)
    )
    # print("Position and quaternion of person_hand with respect to robot_map")
    # print(position, quaternion)

    # listener.waitForTransform("/panda_link0", "/robot_odom", rospy.Time(0), rospy.Duration(4.0))
    # position_base_link0, quaternion_base_link0 = listener.lookupTransform("/panda_link0", "/robot_odom", rospy.Time(0))
    # print("Position and quaternion of base_link0 with respect to odom")
    # print(position_base_link0, quaternion_base_link0)

    # Panda arm offset from summit_base_link = [0.2 -0.15 0.580] (+0.127 for wheel radius)
    panda_arm_offset = [0.2, 0.15, 0.580 + 0.127]
    pose_goal = geometry_msgs.msg.Pose()
    x_temp = position[0] - (response.x + panda_arm_offset[0] * cos(response.theta))
    y_temp = position[1] - (response.y + panda_arm_offset[1] * sin(response.theta))
    pose_goal.position.x = x_temp * cos(-response.theta) - y_temp * sin(-response.theta)
    pose_goal.position.y = x_temp * sin(-response.theta) + y_temp * cos(-response.theta)
    pose_goal.position.z = position[2] - panda_arm_offset[2]
    orientation = tf.transformations.quaternion_from_euler(pi, 0, 0)
    pose_goal.orientation.x = orientation[0]
    pose_goal.orientation.y = orientation[1]
    pose_goal.orientation.z = orientation[2]
    pose_goal.orientation.w = orientation[3]

    # print("Pose goal: ", pose_goal)

    client = actionlib.SimpleActionClient("/robot/move_base", MoveBaseAction)
    # waits until the action server is up and running
    client.wait_for_server()

    # Create a new MoveBaseActionGoal message
    goal = MoveBaseGoal()
    goal.target_pose.header.stamp = rospy.Time.now()

    # Set the goal position (example: x=1.0, y=2.0, z=0.0)
    goal.target_pose.header.frame_id = "robot_map"
    goal.target_pose.pose.position.x = response.x
    goal.target_pose.pose.position.y = response.y
    quaternion = tf.transformations.quaternion_from_euler(0, 0, response.theta)
    goal.target_pose.pose.orientation.x = quaternion[0]
    goal.target_pose.pose.orientation.y = quaternion[1]
    goal.target_pose.pose.orientation.z = quaternion[2]
    goal.target_pose.pose.orientation.w = quaternion[3]

    # Publish the goal
    # publisher.publish(goal)
    # ----------------------------- Perform movements ---------------------------- #
    client.send_goal(goal, feedback_cb=feedback_callback)
    moveitGroup.go_to_pose_goal(pose_goal)
    client.wait_for_result()

    # rospy.loginfo('Published goal position for robot: {}'.format(robot_name))


def realtime_follow(robot_name):
    # -------------------------- Initialize the ROS node ------------------------- #
    rospy.init_node("navigation")
    print("Demo: ", demo)

    # --------------------------- run cost_opt_service --------------------------- #
    # Create a service client
    # service_client = rospy.ServiceProxy('/cost_opt', get_position)

    # ------------------------------ prepare moveit ------------------------------ #
    print("Initializing moveit-------------------------------------")
    moveitGroup = MoveGroupPythonInterfaceTutorial()
    listener = tf.TransformListener()
    pose_goal = geometry_msgs.msg.Pose()
    print("Moveit initialized-------------------------------------")

    listener.waitForTransform(
        "/world", "/person_hand", rospy.Time(0), rospy.Duration(0.3)
    )  # Wait for transform to be available
    # ----------------------------- Perform movements ---------------------------- #
    while not rospy.is_shutdown():
        print("running --------------------------------------")
        time_ = time.time()
        listener.waitForTransform(
            "/world", "/person_hand", rospy.Time(0), rospy.Duration(0.05)
        )
        position, quaternion = listener.lookupTransform(
            "/world", "/person_hand", rospy.Time(0)
        )
        pose_goal.position.x = position[0]
        pose_goal.position.y = position[1]
        pose_goal.position.z = position[2]
        pose_goal.orientation.x = quaternion[0]
        pose_goal.orientation.y = quaternion[1]
        pose_goal.orientation.z = quaternion[2]
        pose_goal.orientation.w = quaternion[3]
        # moveitGroup.go_to_pose_goal(pose_goal)
        (plan, fraction) = moveitGroup.move_group.compute_cartesian_path(
            [pose_goal], 0.01, 0.0
        )
        moveitGroup.move_group.execute(plan, wait=True)
        print("Time to plan: ", time.time() - time_)
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
    person_position_service = rospy.ServiceProxy("update_person_position", set_position)
    person_position_service.call(req)
    hand_position_service = rospy.ServiceProxy("update_hand_position", set_position)
    hand_position = (0.4, -0.2, 1.2)
    req.x = hand_position[0]
    req.y = hand_position[1]
    req.z = hand_position[2]
    req.theta = -0.2
    hand_position_service.call(req)
    publish_goal(robot_name)

    input("Wait for keypress")

    # ---------- prepare data logging of hand and end effector position ---------- #
    log_duration = 10  # seconds
    rate = rospy.Rate(20)
    hand_position = []
    ee_position = []

    listener = tf.TransformListener()
    listener.waitForTransform(
        "/robot_map", "/person_hand", rospy.Time(0), rospy.Duration(0.025)
    )
    position, quaternion = listener.lookupTransform(
        "/robot_map", "/person_hand", rospy.Time(0)
    )

    start_time = rospy.Time.now().secs
    time = rospy.Time.secs
    while time - start_time < 1:
        listener.waitForTransform(
            "/robot_map", "/person_hand", rospy.Time(0), rospy.Duration(0.025)
        )
        position, quaternion = listener.lookupTransform(
            "/robot_map", "/person_hand", rospy.Time(0)
        )
        hand_position.append(position)
        listener.waitForTransform(
            "/robot_map", "/panda_link8", rospy.Time(0), rospy.Duration(0.025)
        )
        position, quaternion = listener.lookupTransform(
            "/robot_map", "/panda_link8", rospy.Time(0)
        )
        ee_position.append(position)
        rate.sleep()

    req.x = 0.55
    hand_position_service.call(req)
    publish_goal(robot_name)

    while time - start_time < log_duration:
        listener.waitForTransform(
            "/robot_map", "/person_hand", rospy.Time(0), rospy.Duration(0.025)
        )
        position, quaternion = listener.lookupTransform(
            "/robot_map", "/person_hand", rospy.Time(0)
        )
        hand_position.append(position)
        listener.waitForTransform(
            "/robot_map", "/panda_link8", rospy.Time(0), rospy.Duration(0.025)
        )
        position, quaternion = listener.lookupTransform(
            "/robot_map", "/panda_link8", rospy.Time(0)
        )
        ee_position.append(position)
        rate.sleep()


def run_once(robot_name):
    # Initialize the ROS node
    global demo
    rospy.init_node("navigation")
    print("Demo: ", demo)

    input("Press Enter to publish goal for robot: {}".format(robot_name))
    # --------------------------- run cost_opt_service --------------------------- #
    print("Running cost_opt_service-------------------------------------")
    # Create a service client
    service_client = rospy.ServiceProxy("/cost_opt", get_goal_configuration)
    # Wait for the service to be ready
    service_client.wait_for_service()
    response = service_client()

    print("response: ", response.q_goal, "\t Type: ", type(response.q_goal))

    # ------------------------------ prepare moveit ------------------------------ #
    moveitGroup = MoveGroupPythonInterfaceTutorial()

    moveitGroup.go_to_joint_state(response.q_goal)

    # ----------------------------- Perform movements


# TODO: Clean up the ugly ass parser code that doesn't work:
parser = argparse.ArgumentParser(description="Run the navigation node")
parser.add_argument("robot_name", type=str, help="The name of the robot to control")
parser.add_argument("demo", type=bool, help="Used to run demo.launch instead of gazebo")
# parser.add_argument('development', type=bool, help='Used for testing purposes')
args = parser.parse_args()


def object_callback(req):
    print("Object detected: ", req.data)
    return "Object detected"


if __name__ == "__main__":

    if len(sys.argv) < 2:
        rospy.logerr("Please specify a robot name as an argument")
    else:

        global demo
        demo = rospy.get_param("demo", False)
        # while(input('Press Enter to publish goal for robot: {}'.format(robot_name)) == ''):
        #    publish_goal(robot_name)
        # realtime_follow(robot_name)
        if demo == True:
            run_once(args.robot_name)
        else:
            realtime_follow(args.robot_name)
        # log_position_error(robot_name)
