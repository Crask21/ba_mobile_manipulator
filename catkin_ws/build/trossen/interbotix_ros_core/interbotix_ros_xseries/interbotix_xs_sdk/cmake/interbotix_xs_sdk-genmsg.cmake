# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "interbotix_xs_sdk: 3 messages, 6 services")

set(MSG_I_FLAGS "-Iinterbotix_xs_sdk:/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(interbotix_xs_sdk_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg" NAME_WE)
add_custom_target(_interbotix_xs_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_xs_sdk" "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg" NAME_WE)
add_custom_target(_interbotix_xs_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_xs_sdk" "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg" NAME_WE)
add_custom_target(_interbotix_xs_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_xs_sdk" "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg" "trajectory_msgs/JointTrajectory:trajectory_msgs/JointTrajectoryPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv" NAME_WE)
add_custom_target(_interbotix_xs_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_xs_sdk" "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv" NAME_WE)
add_custom_target(_interbotix_xs_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_xs_sdk" "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv" NAME_WE)
add_custom_target(_interbotix_xs_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_xs_sdk" "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv" NAME_WE)
add_custom_target(_interbotix_xs_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_xs_sdk" "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv" NAME_WE)
add_custom_target(_interbotix_xs_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_xs_sdk" "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv" NAME_WE)
add_custom_target(_interbotix_xs_sdk_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "interbotix_xs_sdk" "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_msg_cpp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_msg_cpp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
)

### Generating Services
_generate_srv_cpp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_cpp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_cpp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_cpp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_cpp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_cpp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
)

### Generating Module File
_generate_module_cpp(interbotix_xs_sdk
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(interbotix_xs_sdk_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(interbotix_xs_sdk_generate_messages interbotix_xs_sdk_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_cpp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_cpp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_cpp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_cpp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_cpp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_cpp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_cpp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_cpp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_cpp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_xs_sdk_gencpp)
add_dependencies(interbotix_xs_sdk_gencpp interbotix_xs_sdk_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_xs_sdk_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_msg_eus(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_msg_eus(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
)

### Generating Services
_generate_srv_eus(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_eus(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_eus(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_eus(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_eus(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_eus(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
)

### Generating Module File
_generate_module_eus(interbotix_xs_sdk
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(interbotix_xs_sdk_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(interbotix_xs_sdk_generate_messages interbotix_xs_sdk_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_eus _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_eus _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_eus _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_eus _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_eus _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_eus _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_eus _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_eus _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_eus _interbotix_xs_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_xs_sdk_geneus)
add_dependencies(interbotix_xs_sdk_geneus interbotix_xs_sdk_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_xs_sdk_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_msg_lisp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_msg_lisp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
)

### Generating Services
_generate_srv_lisp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_lisp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_lisp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_lisp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_lisp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_lisp(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
)

### Generating Module File
_generate_module_lisp(interbotix_xs_sdk
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(interbotix_xs_sdk_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(interbotix_xs_sdk_generate_messages interbotix_xs_sdk_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_lisp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_lisp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_lisp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_lisp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_lisp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_lisp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_lisp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_lisp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_lisp _interbotix_xs_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_xs_sdk_genlisp)
add_dependencies(interbotix_xs_sdk_genlisp interbotix_xs_sdk_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_xs_sdk_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_msg_nodejs(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_msg_nodejs(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
)

### Generating Services
_generate_srv_nodejs(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_nodejs(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_nodejs(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_nodejs(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_nodejs(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_nodejs(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
)

### Generating Module File
_generate_module_nodejs(interbotix_xs_sdk
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(interbotix_xs_sdk_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(interbotix_xs_sdk_generate_messages interbotix_xs_sdk_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_nodejs _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_nodejs _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_nodejs _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_nodejs _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_nodejs _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_nodejs _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_nodejs _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_nodejs _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_nodejs _interbotix_xs_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_xs_sdk_gennodejs)
add_dependencies(interbotix_xs_sdk_gennodejs interbotix_xs_sdk_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_xs_sdk_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_msg_py(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_msg_py(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
)

### Generating Services
_generate_srv_py(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_py(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_py(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_py(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_py(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
)
_generate_srv_py(interbotix_xs_sdk
  "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
)

### Generating Module File
_generate_module_py(interbotix_xs_sdk
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(interbotix_xs_sdk_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(interbotix_xs_sdk_generate_messages interbotix_xs_sdk_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointGroupCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_py _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointSingleCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_py _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/msg/JointTrajectoryCommand.msg" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_py _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/Reboot.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_py _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RobotInfo.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_py _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/MotorGains.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_py _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/TorqueEnable.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_py _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/OperatingModes.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_py _interbotix_xs_sdk_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_core/interbotix_ros_xseries/interbotix_xs_sdk/srv/RegisterValues.srv" NAME_WE)
add_dependencies(interbotix_xs_sdk_generate_messages_py _interbotix_xs_sdk_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(interbotix_xs_sdk_genpy)
add_dependencies(interbotix_xs_sdk_genpy interbotix_xs_sdk_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS interbotix_xs_sdk_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/interbotix_xs_sdk
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(interbotix_xs_sdk_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(interbotix_xs_sdk_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/interbotix_xs_sdk
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(interbotix_xs_sdk_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(interbotix_xs_sdk_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/interbotix_xs_sdk
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(interbotix_xs_sdk_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(interbotix_xs_sdk_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/interbotix_xs_sdk
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(interbotix_xs_sdk_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(interbotix_xs_sdk_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/interbotix_xs_sdk
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(interbotix_xs_sdk_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(interbotix_xs_sdk_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
