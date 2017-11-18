#!/usr/bin/env bash
set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

: ${CATKIN_DIR:="$HOME/catkin_ws"}
: ${ROS_DISTRO:="kinetic"}

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
catkin build redis_daq --profile deploy --no-status --continue-on-failure

# cd ${HOME}/autonomoose
# git log -n 1 > $CATKIN_DIR/deploy/install/opt/ros/autonomoose/git.log
# touch $CATKIN_DIR/deploy/install/opt/ros/autonomoose/arch.x86_64

echo "Successfully installed to $DESTDIR"


if [ -d "$CATKIN_DIR/deploy/install/" ]; then
    echo ""
    echo "Rsyncing autonomoose folder from $CATKIN_DIR/deploy/install/ to /opt/ros/fisch"

    # -r, --recursive             recurse into directories
    # -l, --links                 copy symlinks as symlinks
    # -E, --executability         preserve executability
    # -z, --compress              compress file data during the transfer
    # -K, --keep-dirlinks         treat symlinked dir on receiver as dir
    sudo rsync -rlEzK --info=progress2 $CATKIN_DIR/deploy/install/ /

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
