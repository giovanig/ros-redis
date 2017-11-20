#!/bin/bash
set -e

# This script is ran on boot to bring up the autonomoose environment nodes
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# : ${CATKIN_DIR:="/home/waleedqk/catkin_ws"}
# : ${CATKIN_DIR:="$HOME/catkin_ws"}

BINARY_SETUP=/opt/ros/fisch/setup.sh

ROS_MASTER_URI="http://192.168.200.101:11311"
ROS_IP=$(ifconfig | perl -nle 's/dr:(\S+)/print $1/e' | grep 192.168.200.)

if [[ -z $ROS_IP ]]; then
    echo "ERROR: Are you sure you are connected to the 192.168.200.x subnet?"
    exit 1
else
    echo "ROS_MASTER_URI=$ROS_MASTER_URI"
    echo "ROS_IP=$ROS_IP"

    export ROS_MASTER_URI
    export ROS_IP
fi

if [ -e "$BINARY_SETUP" ]; then

    source "$BINARY_SETUP"

    echo "Launching redis_daq package on redis_listener node..."
    roslaunch --screen redis_daq redis_listen.launch # > /dev/null 2>&1

    # if [ -e "$CATKIN_DIR/devel/setup.bash" ]; then
        
    #     source "$CATKIN_DIR/devel/setup.bash"

    #     cd $CATKIN_DIR
    #     catkin build redis_daq 

    #     # echo "Launching redis_daq package ..."
    #     # roslaunch --screen redis_daq redis_listen.launch > /dev/null 2>&1

    # else
    #     echo "Catkin devel setup not found"
    # fi
    
else
    echo "ROS installation can not be found"
fi