#!/bin/bash
set -e  # exit on first error
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# The default catkin workspace
: ${CATKIN_DIR:="$HOME/catkin_ws"}

export UBUNTU_CODENAME=$(lsb_release -s -c)
case $UBUNTU_CODENAME in
  trusty)
    export ROS_DISTRO=indigo;;
  xenial)
    export ROS_DISTRO=kinetic;;
  *)
    echo "Unsupported version of Ubuntu detected. Only trusty (14.04.*) and xenial (16.04.*) are currently supported."
    exit 1
esac

sudo sh -c "echo \"deb http://packages.ros.org/ros/ubuntu $UBUNTU_CODENAME main\" > /etc/apt/sources.list.d/ros-latest.list"
wget -qO - http://packages.ros.org/ros.key | sudo apt-key add -

echo "Updating package lists ..."
sudo apt-get -qq update
echo "Installing ROS $ROS_DISTRO ..."
sudo apt-get -qq install python-rosinstall python-catkin-pkg python-rosdep python-wstool ros-$ROS_DISTRO-catkin ros-$ROS_DISTRO-desktop > /dev/null
sudo apt-get -qq install ros-$ROS_DISTRO-pcl-ros ros-$ROS_DISTRO-image-transport ros-$ROS_DISTRO-image-transport-plugins ros-$ROS_DISTRO-libg2o > /dev/null

sudo apt-get -qq install ros-$ROS_DISTRO-rospy-message-converter ros-$ROS_DISTRO-robot-upstart -y

source /opt/ros/$ROS_DISTRO/setup.bash

# Prepare rosdep to install dependencies.
echo "Updating rosdep ..."
if [ ! -d /etc/ros/rosdep ]; then
    sudo rosdep init > /dev/null
fi
rosdep update > /dev/null
