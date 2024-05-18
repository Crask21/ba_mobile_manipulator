#!/usr/bin/env python  
import rospy
import tf
import tf.transformations
from tf2_msgs.msg import TFMessage
from std_srvs.srv import SetBool, SetBoolResponse
from geometry_msgs.msg import Point
from navigation_via_cost_function.srv import *



person_position_service = None
hand_position_service = None

def handle_person_position(req):
    global person_position, person_rotation
    person_position = (req.x, req.y, req.z)
    person_rotation = tf.transformations.quaternion_from_euler(0, 0, req.theta)
    resp = set_positionResponse()
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



if __name__ == '__main__':
    global person_position, hand_position
    global person_rotation, hand_rotation
    rospy.init_node('person_broadcaster')
    br = tf.TransformBroadcaster()
    rate = rospy.Rate(10.0)
    

    person_position = (9, -0.6, 0)
    person_rotation = tf.transformations.quaternion_from_euler(0, 0, 3.14/4)
    person_child_frame_id = "person"
    person_parent_frame_id = "world"

    hand_position = (0.5, -0.2, 1.2)
    hand_rotation = tf.transformations.quaternion_from_euler(0, 0, -0.2)
    hand_child_frame_id = "person_hand"
    hand_parent_frame_id = "person"

    start_services()


    

    

    while not rospy.is_shutdown():
        time = rospy.Time.now()
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
