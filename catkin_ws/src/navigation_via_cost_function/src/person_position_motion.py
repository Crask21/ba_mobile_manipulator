#!/usr/bin/env python  
import rospy
import numpy as np
import tf
import tf.transformations
from tf2_msgs.msg import TFMessage
from std_srvs.srv import SetBool, SetBoolResponse
from geometry_msgs.msg import Point
import geometry_msgs.msg
from navigation_via_cost_function.srv import *
import moveit_commander
from std_msgs.msg import String


person_position_service = None
hand_position_service = None


def handle_person_position(req):
    global person_position, person_rotation
    person_position = (req.x, req.y, req.z)
    person_rotation = tf.transformations.quaternion_from_euler(0, 0, req.theta)
    resp = set_positionResponse()
    resp.success = True
    return resp
def handle_person_speed(req):
    global speed
    global old_speed
    global speed_flag
    old_speed = speed
    speed = req.speed
    speed_flag = True
    print("|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||")

    resp = set_speedResponse()
    resp.success = True
    return resp

def handle_hand_position(req):
    global hand_position, hand_rotation
    hand_position = (req.x, req.y, req.z)
    hand_rotation = tf.transformations.quaternion_from_euler(0, 0, req.theta)
    resp = set_positionResponse()
    resp.success = True
    return resp

def start_services():
    global person_position_service, hand_position_service
    person_position_service = rospy.Service('update_person_position', set_position, handle_person_position)
    hand_position_service = rospy.Service('update_hand_position', set_position, handle_hand_position)
    person_speed_service = rospy.Service('update_person_speed', set_speed, handle_person_speed)

def publish_person_position():
    global person_position, person_rotation
    br.sendTransform(person_position,
                     person_rotation,
                     rospy.Time.now(),
                     "person",
                     "odom")

if __name__ == '__main__':
    global person_position, hand_position
    global person_rotation, hand_rotation
    rospy.init_node('person_broadcaster')
    br = tf.TransformBroadcaster()
    rospy.wait_for_message('/tf', TFMessage)
    rate = rospy.Rate(50.0)
    

    person_position = (5, 0, 0)
    person_rotation = tf.transformations.quaternion_from_euler(0, 0, 0.1)
    person_child_frame_id = "person"
    person_parent_frame_id = "odom"

    hand_position = (0.5, -0.2, 1.2)
    hand_rotation = tf.transformations.quaternion_from_euler(0, 0, -0.2)
    hand_child_frame_id = "person_hand"
    hand_parent_frame_id = "person"

    start_services()
    
    # rotation_freq = 0.02
    global speed, speed_flag, old_speed
    old_speed = 0
    speed = 0.1
    speed_flag = False
    rotation_radius = 1
    angle_speed = speed/rotation_radius
    angle_offset = 0


    moveit_commander.roscpp_initialize(sys.argv)
    person_pose = geometry_msgs.msg.PoseStamped()
    person_pose.header.frame_id = "person"
    # scene = moveit_commander.planning_scene_interface.PlanningSceneInterface()
    # scene.add_cylinder("person", person_pose,1,0.4)


    time_start = rospy.Time.now()
    while not rospy.is_shutdown():
        time = rospy.Time.now()
        if speed_flag:
            print("------------------------------------------------------------")
            angle_offset = angle_offset + (int(time.__str__())-int(time_start.__str__()))/np.power(10,9)*angle_speed
            time_start = rospy.Time.now()
            angle_speed = speed/rotation_radius
            speed_flag = False
        # hand_position = (0.7+rotation_radius*np.cos(int(time.__str__())/np.power(10,9)*np.pi*2*rotation_freq), -0.2+rotation_radius*np.sin(int(time.__str__())/np.power(10,9)*np.pi*2*rotation_freq), 1.2+0.3*np.sin(int(time.__str__())/np.power(10,9)*np.pi*2*rotation_freq*2))
        person_position = (1+rotation_radius*np.cos((int(time.__str__())-int(time_start.__str__()))/np.power(10,9)*angle_speed+angle_offset), 0+rotation_radius*np.sin((int(time.__str__())-int(time_start.__str__()))/np.power(10,9)*angle_speed+angle_offset), 0)
        br.sendTransform(person_position,
                         person_rotation,
                         time,
                         person_child_frame_id,
                         person_parent_frame_id)
        
        br.sendTransform(hand_position,
                         hand_rotation,
                         time,
                         hand_child_frame_id,
                         hand_parent_frame_id)
        


        rate.sleep()
