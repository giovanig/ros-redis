#!/usr/bin/env bash
set -e

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
export REPO_DIR=$(dirname "$SCRIPT_DIR")

echo "Sourcing ROS setup..."
source "/opt/ros/$ROS_DISTRO/setup.bash"

echo "Cleaning and building..."
cd "$CATKIN_DIR"

echo "Configuring Catkin install space and building..."

# If not already set by user, set DESTDIR to absolute path of deploy/install
export DESTDIR=${DESTDIR:-$(readlink -m "deploy/install")}

# Suppress output from config, since it is shown again on build
catkin config --profile deploy \
    -b deploy/build \
    -d deploy/devel \
    -i /opt/ros/fisch \
    --install \
    --log-space=deploy/logs \
    "$@" > /dev/null


catkin clean --profile deploy -y
catkin build redis_daq --profile deploy --continue-on-failure

echo "Successfully installed to $DESTDIR"
