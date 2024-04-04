cmake_minimum_required(VERSION 2.8.3)
project(summit_xl_control)


find_package(catkin REQUIRED
    joint_state_controller
    velocity_controllers
    twist_mux
    diff_drive_controller

    controller_interface
    controller_manager
    franka_hw
    franka_msgs
    geometry_msgs
    message_generation
    pluginlib
    realtime_tools
    roscpp
    sensor_msgs
    tf
    tf2_msgs
    std_srvs
)

catkin_package()

include_directories(${catkin_INCLUDE_DIRS})

install(
  DIRECTORY launch config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
