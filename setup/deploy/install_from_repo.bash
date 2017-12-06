#!/bin/bash
set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -d "$SCRIPT_DIR/opt/ros/fisch/" ]; then
    echo ""
    echo "Rsyncing fisch folder from $SCRIPT_DIR/opt/ros/fisch/ to /opt/ros/fisch"

    sudo rsync -rlEzK --info=progress2 $SCRIPT_DIR/opt/ros/ /opt/ros/

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
