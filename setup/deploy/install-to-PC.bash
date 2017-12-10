#!/usr/bin/env bash
set -e

: ${CATKIN_DIR:="$HOME/catkin_ws"}
: ${TARGET_ECU:=192.168.200.100}

if [ -d "$CATKIN_DIR/deploy/install/" ]; then
    echo ""
    echo "Rsyncing $CATKIN_DIR/deploy/install/ to ${TARGET_ECU}/..."

    rsync -rlEzK --info=progress2 $CATKIN_DIR/deploy/install/ dev@${TARGET_ECU}:/

    if [ $? -eq 0 ]; then
        echo "Transfer successful. To complete the installation, on the ECU (${TARGET_ECU}) execute"
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
