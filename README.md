# ros-redis

I have performed a simple publisher-subscriber test using python scripts. The publisher only publishes a value and the subscriber reads it and writes into the redis data base. I have used the redis version 3.2.11.

To run the publisher script, you must first update the bash environment:

cd catkin_ws
. devel/setup.bash

Then, use rosrun to run it (be sure to run roscore before):

rosrun beginner_tutorials talker.py 

To run the subscriber, first go to the proper directory:

cd catkin_ws/src/rocon_multimaster/rocon_hub_client/src/

Then run the python script:

python test.py

Make sure to have redis-server running.

All the ROS packages were installed within catkin_ws/src.


