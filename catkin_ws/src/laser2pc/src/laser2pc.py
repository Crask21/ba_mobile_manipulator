#!/usr/bin/env python

import sensor_msgs.point_cloud2 as pc2
import rospy
from sensor_msgs.msg import PointCloud2, LaserScan
import laser_geometry.laser_geometry as lg
import math

rospy.init_node("laserscan_to_pointcloud")

lp = lg.LaserProjection()

pc_pub_front = rospy.Publisher("/robot/front_pc", PointCloud2, queue_size=1)
pc_pub_rear = rospy.Publisher("/robot/rear_pc", PointCloud2, queue_size=1)

pc2_msg = PointCloud2()

def scan_front(msg):
    global pc2_msg
    # convert the message of type LaserScan to a PointCloud2
    pc2_msg = lp.projectLaser(msg)
    # print(len(pc2_msg.data))
    pc_pub_front.publish(pc2_msg)
    # publish it

def scan(msg):
    pc2_msg = lp.projectLaser(msg)
    # pc_pub.publish(pc2_msg)

def scan_rear(msg):
    # global pc2_msg
    # convert the message of type LaserScan to a PointCloud2
    pc2_msg_rear = lp.projectLaser(msg)
    # pc2_msg_back.data = pc2_msg_back.data + pc2_msg.data.
    # pc2_msg_back.height *= 2
    
    # print(len(pc2_msg_back.data), "width: ", pc2_msg_back.width, "height: ", pc2_msg_back.height, "fields length: ", len(pc2_msg_back.fields), "Fiels: ", pc2_msg_back.fields)
    # print(pc2_msg_back.data[0])
    # publish it
    pc_pub_rear.publish(pc2_msg_rear)



rospy.Subscriber("/robot/front_laser/scan", LaserScan, scan_front, queue_size=1)
rospy.Subscriber("/robot/rear_laser/scan", LaserScan, scan_rear, queue_size=1)


rospy.spin()