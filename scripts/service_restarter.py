#!/usr/bin/env python

# https://gist.github.com/ewenchou/be496b2b73be801fd85267ef5471458c

# cd /usr/bin
# sudo ln -sfn /home/dev/fisch/ros-redis/scripts/service_restarter.py

# cd /lib/systemd/system
# sudo vim fisch_nodeCheck.service

import sys, os, time
import subprocess

import rospy, rosnode

# path to directory of python file
dirname, filename = os.path.split(os.path.abspath(__file__))

if __name__ == '__main__':

    # os.system('export ROS_MASTER_URI="http://192.168.200.101_NUM:11311"')
    # os.system('export ROS_IP="192.168.200.100"')

    return_code = subprocess.call('export ROS_MASTER_URI="http://192.168.200.101_NUM:11311"', shell=True)  

    return_code = subprocess.call('export ROS_IP="192.168.200.100"', shell=True)  

    
    proc = subprocess.Popen("rosnode list",
                shell=True,
                stdout=subprocess.PIPE, stderr=subprocess.PIPE,
            )
    (stdoutdata, stderrdata) = proc.communicate()

    rosnode_list = stdoutdata.split('\n')


    if "/rosout" in rosnode_list:
        if "/redis_listener" not in rosnode_list:
            # return_code = subprocess.call('sudo systemctl restart fischRedis.service', shell=True)
            return_code = subprocess.call('roslaunch redis_daq redis_listen.launch ', shell=True)
            