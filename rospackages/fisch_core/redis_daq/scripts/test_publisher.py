#!/usr/bin/env python

import sys, os, time
import redis
import rospy
from std_msgs.msg import String
from anm_msgs.msg import ControlCommands

# Publishers
pub_ControlCommands_ = rospy.Publisher('control_commands', ControlCommands, queue_size=5)
pub_lidar_ = rospy.Publisher('lidar', String, queue_size=5)

# Node Init
rospy.init_node('redis_talker', anonymous=False)

# Node Rate
rate = rospy.Rate(1) # 1 hz

def pub_Topics():

    msg = ControlCommands()
    msg.steering_pos_cmd = 1.23
    msg.steering_vel_cmd = 90.2
    msg.steering_EN = 230
    msg.throttle_cmd = 1
    msg.throttle_EN = 0
    msg.brake_cmd = 0
    msg.brake_EN = 0
    msg.gear_cmd.gear = 2
    msg.turn_signal_cmd.value = 2

    pub_ControlCommands_.publish(msg)


    time = str(rospy.get_time())

    pub_lidar_.publish(time)


if __name__ == '__main__':

    while not rospy.is_shutdown():
        rospy.loginfo("Publishing Time: %d", (rospy.get_time()))

        try:
            pub_Topics()

        except rospy.ROSInterruptException:
            pass

        rate.sleep()
