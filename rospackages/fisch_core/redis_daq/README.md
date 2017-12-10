# Redis Package

**INSTALL**

Run the install scripts provided at the start of the repo to for fresh installation if not done so already

**Build project locally**

To build the project the repo should be in the ~/catkin_ws/src 

    cd path/to/ros-redis/
    bash setup/deploy/deploy.bash -b -c 
    
-b builds the package
-c copies the install directory to the local repo

To install to the same machine where you build

    bash setup/deploy/deploy.bash -l

**Install the build to PC**

The PC has an IP of "192.168.200.100"

If on the same subnet as the PC "192.168.200.xxx", can install from the machine that does the build

    bash setup/deploy/deploy.bash -p

If on the PC itself. Navigate to the repo and git pull and then install

    cd path/to/ros-redis/
    bash setup/deploy/deploy.bash -i

**Set package as Service (Enabled)**

    cd path/to/ros-redis/
    bash setup/deploy/deploy.bash -e

### Other service related commands

Check Service status

    cd path/to/ros-redis/
    bash setup/deploy/deploy.bash -s

Restart Service

    cd path/to/ros-redis/
    bash setup/deploy/deploy.bash -r

Disable Service Startup

    cd path/to/ros-redis/
    bash setup/deploy/deploy.bash -d

Delete service

    cd path/to/ros-redis/
    bash setup/deploy/deploy.bash -x

**Set ROS_MASTER_URI**

	source /path/to/renesas-demo/scripts/set_h3_ros_master.bash

**roslaunch Package manually**

    roslaunch redis_daq redis_listen.launch

**Rosrun Package manually**

    rosrun redis_daq listener.py

**Store Redis database to csv**

    redis-cli --csv lrange <name_of_key> 0 -1 > output_file.csv

e.g.

    redis-cli --csv lrange steering_pos_cmd 0 -1 > ~/fisch/redis_csv/steering_pos_cmd.csv