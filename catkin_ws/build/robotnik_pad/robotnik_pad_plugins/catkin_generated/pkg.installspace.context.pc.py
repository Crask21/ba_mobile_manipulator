# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;pluginlib;robotnik_pad;robotnik_pad_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrobotnik_pad_plugins".split(';') if "-lrobotnik_pad_plugins" != "" else []
PROJECT_NAME = "robotnik_pad_plugins"
PROJECT_SPACE_DIR = "/home/markus/ros_stuff/catkin_ws/install"
PROJECT_VERSION = "0.10.0"
