# Install script for directory: /home/markus/ros_stuff/catkin_ws/src/robotnik_gazebo_plugins/robotnik_gazebo_ground_truth_odom

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/markus/ros_stuff/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/robotnik_gazebo_ground_truth_odom" TYPE FILE FILES "/home/markus/ros_stuff/catkin_ws/devel/lib/python3/dist-packages/robotnik_gazebo_ground_truth_odom/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/markus/ros_stuff/catkin_ws/devel/lib/python3/dist-packages/robotnik_gazebo_ground_truth_odom/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/robotnik_gazebo_ground_truth_odom" TYPE DIRECTORY FILES "/home/markus/ros_stuff/catkin_ws/devel/lib/python3/dist-packages/robotnik_gazebo_ground_truth_odom/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/markus/ros_stuff/catkin_ws/build/robotnik_gazebo_plugins/robotnik_gazebo_ground_truth_odom/catkin_generated/installspace/robotnik_gazebo_ground_truth_odom.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_gazebo_ground_truth_odom/cmake" TYPE FILE FILES
    "/home/markus/ros_stuff/catkin_ws/build/robotnik_gazebo_plugins/robotnik_gazebo_ground_truth_odom/catkin_generated/installspace/robotnik_gazebo_ground_truth_odomConfig.cmake"
    "/home/markus/ros_stuff/catkin_ws/build/robotnik_gazebo_plugins/robotnik_gazebo_ground_truth_odom/catkin_generated/installspace/robotnik_gazebo_ground_truth_odomConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotnik_gazebo_ground_truth_odom" TYPE FILE FILES "/home/markus/ros_stuff/catkin_ws/src/robotnik_gazebo_plugins/robotnik_gazebo_ground_truth_odom/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librobotnik_gazebo_ground_truth_odom.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librobotnik_gazebo_ground_truth_odom.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librobotnik_gazebo_ground_truth_odom.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/markus/ros_stuff/catkin_ws/devel/lib/librobotnik_gazebo_ground_truth_odom.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librobotnik_gazebo_ground_truth_odom.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librobotnik_gazebo_ground_truth_odom.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librobotnik_gazebo_ground_truth_odom.so"
         OLD_RPATH "/opt/ros/noetic/lib:/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/librobotnik_gazebo_ground_truth_odom.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/markus/ros_stuff/catkin_ws/src/robotnik_gazebo_plugins/robotnik_gazebo_ground_truth_odom/include/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

