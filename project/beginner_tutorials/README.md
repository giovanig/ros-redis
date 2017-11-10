# Redis Package

**Symlink the python package to the ROS package**

    cd ros_package_name/scripts/
    ln -s /usr/local/lib/python<version_number>/dist-packages/redis redis

**Link the project**

    ln -sfn ~/fisch/ros-redis/project/beginner_tutorials/ ~/catkin_ws/src/beginner_tutorials
    
**Build Project**

    cd ~/catkin_ws
    catkin build beginner_tutorials

**Set ROS_MASTER_URI**

	source ~/waterloo/renesas-demo/scripts/set_h3_ros_master.bash

**roslaunch Package**

    roslaunch beginner_tutorials redis_listen.launch

**Rosrun Package**

    rosrun beginner_tutorials listener.py

**Store Redis database to csv**

    redis-cli --csv lrange <name_of_key> 0 -1 > output_file.csv

e.g.

    redis-cli --csv lrange steering_pos_cmd 0 -1 > ~/fisch/redis_csv/steering_pos_cmd.csv