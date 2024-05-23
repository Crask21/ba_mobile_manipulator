#!/usr/bin/env python
import rospy
import tf
import csv
import time
import numpy as np
import matplotlib.pyplot as plt
from navigation_via_cost_function.srv import *
import os




# def callback(msg):
#     try:
#         listener = tf.TransformListener()
#         listener.waitForTransform("panda_link8", "person_hand", rospy.Time(), rospy.Duration(1.0))
#         (trans, rot) = listener.lookupTransform("panda_link8", "person_hand", rospy.Time(0))
        
#         # Record the difference in position
#         diff_x = trans[0]
#         diff_y = trans[1]
#         diff_z = trans[2]
#         diff_ = np.sqrt(diff_x**2 + diff_y**2 + diff_z**2)

#         diff.append(diff_)
#         time_step.append(time.time() - start_time)
        
        
        
#         # Store the difference in a .csv file
        
            
#     except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
#         pass
#     if time.time() - start_time > scan_time:
#         print('Recording finished')
#         print('Time taken: ', time.time() - start_time)
#         rospy.signal_shutdown('Recording finished')

#         # Plot the difference
#         plt.scatter(time_step, diff, s=1)
#         plt.xlabel('X')
#         plt.ylabel('Y')
#         plt.title('Difference in position between panda_link8 and person_hand')
#         plt.show()

#         csvfile = open('difference.csv', 'w')
#         csvwriter = csv.writer(csvfile)
#         csvwriter.writerow(['Time', 'Difference'])
#         for i in range(len(diff)):
#             csvwriter.writerow([time_step[i], diff[i]])
#         csvfile.close()
#         plt.close()
#         exit()

# if __name__ == '__main__':
#     start_time = time.time()
#     rospy.init_node('tf_subscriber')
#     input('Press Enter to start recording the difference in position between panda_link8 and person_hand')
#     rospy.Subscriber('/tf', tf.msg.tfMessage, callback)
#     rospy.spin()


def track_once():
    rospy.init_node('realtime_tracking')
    listener = tf.TransformListener()
    input('Press Enter to start recording the difference in position between panda_link8 and person_hand')
    
    diff = []
    time_step = []
    scan_time = 20
    start_time = time.time()

    rate = rospy.Rate(20.0)
    while not rospy.is_shutdown() and time.time() - start_time < scan_time:
        try:
            (trans,rot) = listener.lookupTransform("panda_link8", "person_hand", rospy.Time(0))
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue
        diff_x = trans[0]
        diff_y = trans[1]
        diff_z = trans[2]
        diff_ = np.sqrt(diff_x**2 + diff_y**2 + diff_z**2)

        diff.append(diff_)
        time_step.append(time.time() - start_time)
        
        
        rate.sleep()
    
    print('Recording finished')
    print('Time taken: ', time.time() - start_time)
    rospy.signal_shutdown('Recording finished')

    

    file_path = os.path.expanduser('~/Documents/6_semester/bachelor/ba_mobile_manipulator/catkin_ws/src/realtime_tracking/src/difference.csv')
    print("=====================================")
    print(f"Expanded file path: {file_path}")
    with open(file_path, 'w', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(['Time', 'Difference'])
        for i in range(len(diff)):
            csvwriter.writerow([time_step[i], diff[i]])
    csvfile.close()
    # Plot the difference
    plt.scatter(time_step, diff, s=1)
    plt.xlabel('Time [s]')
    plt.ylabel('Difference [m]')
    plt.title('Difference in position between panda_link8 and person_hand')
    plt.show()
    plt.close()
    exit()

def track_continuously():
    rospy.init_node('realtime_tracking')
    listener = tf.TransformListener()
    input('Press Enter to start recording the difference in position between panda_link8 and person_hand')
    
    diff = []
    time_step = []
    scan_time = 60
    trancendance_time = 10

    rate = rospy.Rate(20.0)

    for j in np.arange(0.05, 0.7, 0.05):
        diff = []
        time_step = []
        speed = j
        start_time = time.time()
        rospy.wait_for_service('update_person_speed')
        try:
            set_speed_ = rospy.ServiceProxy('update_person_speed', set_speed)
            response = set_speed_(speed)
            print('Speed set successfully')
        except rospy.ServiceException as e:
            print('Service call failed:', str(e))
        
        while time.time() - start_time < trancendance_time:
            rate.sleep()
        while not rospy.is_shutdown() and time.time() - start_time - trancendance_time < scan_time:
            try:
                (trans,rot) = listener.lookupTransform("panda_link8", "person_hand", rospy.Time(0))
            except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
                continue
            diff_x = trans[0]
            diff_y = trans[1]
            diff_z = trans[2]
            diff_ = np.sqrt(diff_x**2 + diff_y**2 + diff_z**2)

            diff.append(diff_)
            time_step.append(time.time() - start_time-trancendance_time)
            
            
            rate.sleep()
        file_path = os.path.expanduser(f'~/Documents/6_semester/bachelor/ba_mobile_manipulator/catkin_ws/src/realtime_tracking/src/difference_speed_{j}.csv')
        with open(file_path, 'w', newline='') as csvfile:
            csvwriter = csv.writer(csvfile)
            csvwriter.writerow(['Time', 'Difference'])
            for i in range(len(diff)):
                csvwriter.writerow([time_step[i], diff[i]])
        csvfile.close()
        # Plot the difference
        fig = plt.figure()
        plot = fig.add_subplot(111)
        plot.scatter(time_step, diff, s=1)
        plot.set_xlabel('time [s]')
        plot.set_ylabel('Difference [m]')
        plot.set_title('|end effector - person hand| at speed {speed} [m/s]')
    


    plt.show()

        

    rospy.signal_shutdown('Recording finished')
    exit()

if __name__ == '__main__':
    # track_once()
    track_continuously()