execute_process(COMMAND "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/build/kinova-ros/kinova_demo/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/build/kinova-ros/kinova_demo/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
