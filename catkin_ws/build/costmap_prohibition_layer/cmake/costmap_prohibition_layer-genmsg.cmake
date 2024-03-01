# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "costmap_prohibition_layer: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(costmap_prohibition_layer_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv" NAME_WE)
add_custom_target(_costmap_prohibition_layer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "costmap_prohibition_layer" "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv" ""
)

get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv" NAME_WE)
add_custom_target(_costmap_prohibition_layer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "costmap_prohibition_layer" "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv" "geometry_msgs/Point32:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv" NAME_WE)
add_custom_target(_costmap_prohibition_layer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "costmap_prohibition_layer" "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv" "geometry_msgs/Point32:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv" NAME_WE)
add_custom_target(_costmap_prohibition_layer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "costmap_prohibition_layer" "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv" "geometry_msgs/Point32:geometry_msgs/Polygon"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_cpp(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_cpp(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_cpp(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_prohibition_layer
)

### Generating Module File
_generate_module_cpp(costmap_prohibition_layer
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_prohibition_layer
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(costmap_prohibition_layer_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(costmap_prohibition_layer_generate_messages costmap_prohibition_layer_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_cpp _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_cpp _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_cpp _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_cpp _costmap_prohibition_layer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(costmap_prohibition_layer_gencpp)
add_dependencies(costmap_prohibition_layer_gencpp costmap_prohibition_layer_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS costmap_prohibition_layer_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_eus(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_eus(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_eus(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_prohibition_layer
)

### Generating Module File
_generate_module_eus(costmap_prohibition_layer
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_prohibition_layer
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(costmap_prohibition_layer_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(costmap_prohibition_layer_generate_messages costmap_prohibition_layer_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_eus _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_eus _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_eus _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_eus _costmap_prohibition_layer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(costmap_prohibition_layer_geneus)
add_dependencies(costmap_prohibition_layer_geneus costmap_prohibition_layer_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS costmap_prohibition_layer_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_lisp(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_lisp(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_lisp(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_prohibition_layer
)

### Generating Module File
_generate_module_lisp(costmap_prohibition_layer
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_prohibition_layer
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(costmap_prohibition_layer_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(costmap_prohibition_layer_generate_messages costmap_prohibition_layer_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_lisp _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_lisp _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_lisp _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_lisp _costmap_prohibition_layer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(costmap_prohibition_layer_genlisp)
add_dependencies(costmap_prohibition_layer_genlisp costmap_prohibition_layer_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS costmap_prohibition_layer_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_nodejs(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_nodejs(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_nodejs(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_prohibition_layer
)

### Generating Module File
_generate_module_nodejs(costmap_prohibition_layer
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_prohibition_layer
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(costmap_prohibition_layer_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(costmap_prohibition_layer_generate_messages costmap_prohibition_layer_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_nodejs _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_nodejs _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_nodejs _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_nodejs _costmap_prohibition_layer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(costmap_prohibition_layer_gennodejs)
add_dependencies(costmap_prohibition_layer_gennodejs costmap_prohibition_layer_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS costmap_prohibition_layer_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_py(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_py(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_prohibition_layer
)
_generate_srv_py(costmap_prohibition_layer
  "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_prohibition_layer
)

### Generating Module File
_generate_module_py(costmap_prohibition_layer
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_prohibition_layer
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(costmap_prohibition_layer_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(costmap_prohibition_layer_generate_messages costmap_prohibition_layer_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/ClearProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_py _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/GetProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_py _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/SetProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_py _costmap_prohibition_layer_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/markus/ros_stuff/catkin_ws/src/costmap_prohibition_layer/srv/AddProhibitedPoints.srv" NAME_WE)
add_dependencies(costmap_prohibition_layer_generate_messages_py _costmap_prohibition_layer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(costmap_prohibition_layer_genpy)
add_dependencies(costmap_prohibition_layer_genpy costmap_prohibition_layer_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS costmap_prohibition_layer_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_prohibition_layer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/costmap_prohibition_layer
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(costmap_prohibition_layer_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(costmap_prohibition_layer_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_prohibition_layer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/costmap_prohibition_layer
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(costmap_prohibition_layer_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(costmap_prohibition_layer_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_prohibition_layer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/costmap_prohibition_layer
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(costmap_prohibition_layer_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(costmap_prohibition_layer_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_prohibition_layer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/costmap_prohibition_layer
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(costmap_prohibition_layer_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(costmap_prohibition_layer_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_prohibition_layer)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_prohibition_layer\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/costmap_prohibition_layer
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(costmap_prohibition_layer_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(costmap_prohibition_layer_generate_messages_py geometry_msgs_generate_messages_py)
endif()
