#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_common_modules"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/install/lib/python3/dist-packages:/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/build" \
    "/usr/bin/python3" \
    "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/src/trossen/interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_common_modules/setup.py" \
     \
    build --build-base "/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/build/trossen/interbotix_ros_toolboxes/interbotix_common_toolbox/interbotix_common_modules" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/install" --install-scripts="/home/markus/ros_stuff/ba_mobile_manipulator/catkin_ws/install/bin"
