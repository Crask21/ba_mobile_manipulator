#!/usr/bin/env python

import rospy
import sys
import moveit_commander
from moveit_commander import PlanningSceneInterface

def switch_to_bullet():
    rospy.init_node('switch_to_bullet')

    print("here")
    # Initialize the move_group API
    moveit_commander.roscpp_initialize(sys.argv)
    print("here")
    # Initialize the planning scene interface
    scene = moveit_commander.PlanningSceneInterface(ns="/robot")
    print("here-----------------------")
    # Get the current planning scene
    planning_scene = moveit_commander.PlanningSceneInterface(ns="/robot").get_planning_scene(1)
    print("here-----------------------")
    print(planning_scene)
    # Set the active collision detector to Bullet
    planning_scene.setActiveCollisionDetector("bullet")
    print("here_done")
    rospy.loginfo("Switched to Bullet collision detector")

if __name__ == '__main__':
    print("Switching to Bullet collision detector======================================0000")
    try:
        switch_to_bullet()
    except rospy.ROSInterruptException:
        print("Program interrupted before completion", file=sys.stderr)
        pass