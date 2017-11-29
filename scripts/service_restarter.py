#!/usr/bin/env python

# https://gist.github.com/ewenchou/be496b2b73be801fd85267ef5471458c

# cd /usr/bin
# sudo ln -sfn /home/dev/fisch/ros-redis/scripts/service_restarter.py

# cd /lib/systemd/system
# sudo vim fisch_nodeCheck.service

import sys, os, time
import subprocess

import rospy, rosnode

if __name__ == '__main__':

    proc = subprocess.Popen("ssh root@192.168.200.101 rosnode list",
                shell=True,
                stdout=subprocess.PIPE, stderr=subprocess.PIPE,
            )
    (stdoutdata, stderrdata) = proc.communicate()
    print(stdoutdata)