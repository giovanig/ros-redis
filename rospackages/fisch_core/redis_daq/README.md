# Redis Package

**Symlink the python package to the ROS package**

    cd redis_daq/scripts/
    ln -s /usr/local/lib/python<version_number>/dist-packages/redis redis

**Link the project**

    ln -sfn /path/to/ros-redis/rospackages/fisch_core/redis_daq/ ~/catkin_ws/src/redis_daq
    
**Build Project**

    cd ~/catkin_ws
    catkin build redis_daq

**Set ROS_MASTER_URI**

	source /path/to/renesas-demo/scripts/set_h3_ros_master.bash

**roslaunch Package**

    roslaunch redis_daq redis_listen.launch

**Rosrun Package**

    rosrun redis_daq listener.py

**Store Redis database to csv**

    redis-cli --csv lrange <name_of_key> 0 -1 > output_file.csv

e.g.

    redis-cli --csv lrange steering_pos_cmd 0 -1 > ~/fisch/redis_csv/steering_pos_cmd.csv