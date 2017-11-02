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

echo_and_run cd "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_hub_client"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/giovani/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/giovani/catkin_ws/install/lib/python2.7/dist-packages:/home/giovani/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/giovani/catkin_ws/build" \
    "/usr/bin/python" \
    "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_hub_client/setup.py" \
    build --build-base "/home/giovani/catkin_ws/build/rocon_multimaster/rocon_hub_client" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/giovani/catkin_ws/install" --install-scripts="/home/giovani/catkin_ws/install/bin"
