#!/usr/bin/env python

import rospy
from std_srvs.srv import Empty, EmptyResponse
from gazebo_msgs.srv import *


def my_service_callback(request):
    # Load the SDF file
    with open(
        "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/navigation_via_cost_function/models/table.sdf",
        "r",
    ) as file:
        sdf = file.read()
    # Create the request
    request = SpawnModelRequest()
    request.model_name = "box"
    request.model_xml = sdf
    request.robot_namespace = ""
    request.initial_pose.position.x = 0
    request.initial_pose.position.y = 0
    request.initial_pose.position.z = 0
    service_client(request)
    return EmptyResponse()


if __name__ == "__main__":
    rospy.init_node("sdf_service_server")
    # Create the service server
    rospy.wait_for_service("/gazebo/spawn_sdf_model")
    service_client = rospy.ServiceProxy("/gazebo/spawn_sdf_model", SpawnModel)
    service_server = rospy.Service("add_sdf", Empty, my_service_callback)
    rospy.loginfo("Service server is ready!")
    rospy.spin()
