#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

: ${CATKIN_DIR:="$HOME/catkin_ws"}

if [ -d "$CATKIN_DIR/deploy/install/" ]; then
    echo ""
    echo "Rsyncing fisch folder from $CATKIN_DIR/deploy/install/ to $SCRIPT_DIR/opt/ros/fisch"

    sudo rsync -rlEzK --info=progress2 $CATKIN_DIR/deploy/install/ $SCRIPT_DIR/

    if [ $? -eq 0 ]; then
        echo "Transfer successful"
        exit 0
    else
        echo "Transfer failed!" >&2
        exit 1
    fi
else
    echo "Build results for installation not found. First execute "
    echo ""
    echo "build_for_install.bash "
    echo ""
    exit 1
fi
