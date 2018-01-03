#!/bin/bash
set -e

# This script is ran on boot to bring up the fisch environment nodes

BINARY_SETUP=/opt/ros/fisch/setup.bash

ROS_MASTER_URI="http://192.168.200.103:11311"
ROS_IP=$(ifconfig | perl -nle 's/dr:(\S+)/print $1/e' | grep 192.168.200.)

export ROS_MASTER_URI
export ROS_IP

if [ -e "$BINARY_SETUP" ]; then
    echo "Launching fisch environment ..."
    source "$BINARY_SETUP"
    roslaunch --screen redis_daq redis_listen.launch # > /dev/null 2>&1
else
    echo "redis_daq installation can not be found"
fi
