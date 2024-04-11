#!/usr/bin/env python3
import rospy
from gazebo_msgs.msg import LinkStates
from gazebo_msgs.msg import LinkState

s_print = True


def link_states_callback(data):
    # global s_print
    # if s_print:
    #    print(len(data.name))
    #    s_print = False
    ## Create a SetLinkState message

    set_link_state_msg = LinkState()
    # print("")
    for i in range(7):

        set_link_state_msg.reference_frame = "world"

        # Set the model name
        set_link_state_msg.link_name = data.name[i + 3]

        # Set the link names and poses
        print(data.name[i + 15 + 8])
        set_link_state_msg.pose = data.pose[i + 15 + 8]
        set_link_state_msg.pose.position.x = (
            set_link_state_msg.pose.position.x - 10 + 0.2
        )
        set_link_state_msg.pose.position.y = (
            set_link_state_msg.pose.position.y - 10 - 0.15
        )
        set_link_state_msg.pose.position.z = set_link_state_msg.pose.position.z + 0.38

        print(set_link_state_msg)

        # pub.publish(set_link_state_msg)
        pub.publish(set_link_state_msg)

    # Set the link names and poses
    # set_link_state_msg.link_state.name = data.name
    # set_link_state_msg.link_state.pose = data.pose

    # print(set_link_state_msg)

    # Publish the set_link_state_msg
    # pub.publish(set_link_state_msg)


def move_tf_node():
    # Initialize the ROS node
    rospy.init_node("move_tf_node", anonymous=True)

    # Subscribe to the link_states topic
    rospy.Subscriber("/gazebo/link_states", LinkStates, link_states_callback)

    # Spin the node
    rospy.spin()


pub = rospy.Publisher("/gazebo/set_link_state", LinkState, queue_size=10)

if __name__ == "__main__":
    try:
        move_tf_node()
    except rospy.ROSInterruptException:
        pass
