# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotnik_elevator_interface_msgs: 1 messages, 3 services")

set(MSG_I_FLAGS "-Irobotnik_elevator_interface_msgs:/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotnik_elevator_interface_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg" NAME_WE)
add_custom_target(_robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_elevator_interface_msgs" "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv" NAME_WE)
add_custom_target(_robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_elevator_interface_msgs" "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv" NAME_WE)
add_custom_target(_robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_elevator_interface_msgs" "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv" NAME_WE)
add_custom_target(_robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotnik_elevator_interface_msgs" "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_elevator_interface_msgs
)

### Generating Services
_generate_srv_cpp(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_elevator_interface_msgs
)
_generate_srv_cpp(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_elevator_interface_msgs
)
_generate_srv_cpp(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_elevator_interface_msgs
)

### Generating Module File
_generate_module_cpp(robotnik_elevator_interface_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_elevator_interface_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotnik_elevator_interface_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages robotnik_elevator_interface_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_cpp _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_cpp _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_cpp _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_cpp _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotnik_elevator_interface_msgs_gencpp)
add_dependencies(robotnik_elevator_interface_msgs_gencpp robotnik_elevator_interface_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotnik_elevator_interface_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_elevator_interface_msgs
)

### Generating Services
_generate_srv_eus(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_elevator_interface_msgs
)
_generate_srv_eus(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_elevator_interface_msgs
)
_generate_srv_eus(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_elevator_interface_msgs
)

### Generating Module File
_generate_module_eus(robotnik_elevator_interface_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_elevator_interface_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotnik_elevator_interface_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages robotnik_elevator_interface_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_eus _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_eus _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_eus _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_eus _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotnik_elevator_interface_msgs_geneus)
add_dependencies(robotnik_elevator_interface_msgs_geneus robotnik_elevator_interface_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotnik_elevator_interface_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_elevator_interface_msgs
)

### Generating Services
_generate_srv_lisp(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_elevator_interface_msgs
)
_generate_srv_lisp(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_elevator_interface_msgs
)
_generate_srv_lisp(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_elevator_interface_msgs
)

### Generating Module File
_generate_module_lisp(robotnik_elevator_interface_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_elevator_interface_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotnik_elevator_interface_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages robotnik_elevator_interface_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_lisp _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_lisp _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_lisp _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_lisp _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotnik_elevator_interface_msgs_genlisp)
add_dependencies(robotnik_elevator_interface_msgs_genlisp robotnik_elevator_interface_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotnik_elevator_interface_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_elevator_interface_msgs
)

### Generating Services
_generate_srv_nodejs(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_elevator_interface_msgs
)
_generate_srv_nodejs(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_elevator_interface_msgs
)
_generate_srv_nodejs(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_elevator_interface_msgs
)

### Generating Module File
_generate_module_nodejs(robotnik_elevator_interface_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_elevator_interface_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotnik_elevator_interface_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages robotnik_elevator_interface_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_nodejs _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_nodejs _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_nodejs _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_nodejs _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotnik_elevator_interface_msgs_gennodejs)
add_dependencies(robotnik_elevator_interface_msgs_gennodejs robotnik_elevator_interface_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotnik_elevator_interface_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_elevator_interface_msgs
)

### Generating Services
_generate_srv_py(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_elevator_interface_msgs
)
_generate_srv_py(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_elevator_interface_msgs
)
_generate_srv_py(robotnik_elevator_interface_msgs
  "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_elevator_interface_msgs
)

### Generating Module File
_generate_module_py(robotnik_elevator_interface_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_elevator_interface_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotnik_elevator_interface_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages robotnik_elevator_interface_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/msg/ElevatorState.msg" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_py _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetElevatorControl.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_py _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/GoToFloor.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_py _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/robotnik_elevator_interface/robotnik_elevator_interface_msgs/srv/SetDoorState.srv" NAME_WE)
add_dependencies(robotnik_elevator_interface_msgs_generate_messages_py _robotnik_elevator_interface_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotnik_elevator_interface_msgs_genpy)
add_dependencies(robotnik_elevator_interface_msgs_genpy robotnik_elevator_interface_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotnik_elevator_interface_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_elevator_interface_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotnik_elevator_interface_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robotnik_elevator_interface_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robotnik_elevator_interface_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_elevator_interface_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotnik_elevator_interface_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robotnik_elevator_interface_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robotnik_elevator_interface_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_elevator_interface_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotnik_elevator_interface_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robotnik_elevator_interface_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robotnik_elevator_interface_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_elevator_interface_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotnik_elevator_interface_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robotnik_elevator_interface_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robotnik_elevator_interface_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_elevator_interface_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_elevator_interface_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotnik_elevator_interface_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robotnik_elevator_interface_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robotnik_elevator_interface_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
