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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/install/lib/python2.7/dist-packages:/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_driver/setup.py" \
    build --build-base "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_driver" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/install" --install-scripts="/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/install/bin"
