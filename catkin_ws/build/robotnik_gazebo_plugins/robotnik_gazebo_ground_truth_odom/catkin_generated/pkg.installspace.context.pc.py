# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "message_runtime;gazebo_msgs;roscpp;rospy;nodelet;angles;std_srvs;geometry_msgs;sensor_msgs;nav_msgs;urdf;tf;tf2_ros;dynamic_reconfigure;rosgraph_msgs;trajectory_msgs;image_transport;rosconsole;camera_info_manager;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrobotnik_gazebo_ground_truth_odom".split(';') if "-lrobotnik_gazebo_ground_truth_odom" != "" else []
PROJECT_NAME = "robotnik_gazebo_ground_truth_odom"
PROJECT_SPACE_DIR = "/home/markus/ros_stuff/catkin_ws/install"
PROJECT_VERSION = "2.5.19"
