#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Updating package lists ..."
sudo apt-get -qq update

redis_install()
{
    wget http://download.redis.io/redis-stable.tar.gz
    tar xvzf redis-stable.tar.gz
    cd redis-stable
    make
    sudo make install
}

install_dependencies()
{
    sudo apt-get install redis-tools ros-kinetic-rocon-python-redis ros-kinetic-rocon-msgs ros-kinetic-rocon-multimaster ros-kinetic-rocon-tools ros-kinetic-zeroconf-msgs ros-kinetic-robot-upstart ros-kinetic-rospy-message-converter -y
    sudo -H pip3 install redis
    sudo -H pip2 install redis
}

cleanup()
{
    rm "$SCRIPT_DIR/redis-stable.tar.gz"
}







redis_install
install_dependencies
cleanup
