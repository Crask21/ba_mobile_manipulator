cmake_minimum_required(VERSION 3.1.3)
<<<<<<< HEAD:catkin_ws/src/summit_xl_common/moveit/panda_moveit_config/CMakeLists.txt
project(panda_moveit_config)
=======
project(moman_moveit_config)
>>>>>>> combined_moveit:catkin_ws/src/moman_moveit_config/CMakeLists.txt

find_package(catkin REQUIRED)

catkin_package()

install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
  PATTERN "setup_assistant.launch" EXCLUDE)
install(DIRECTORY config DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
