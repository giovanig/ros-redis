#!/usr/bin/env python

import sys, os, time
import rospy, rostopic, rosgraph
import socket
from rostopic import ROSTopicHz 

from std_msgs.msg import String
from std_msgs.msg import Bool
from std_msgs.msg import Empty

from anm_msgs.msg import ControlCommands


def control_commands_stat(data):
    
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.steering_pos_cmd, data.steering_vel_cmd ,data.steering_EN, data.throttle_cmd, data.throttle_EN, data.brake_cmd, data.brake_EN, data.gear_cmd.gear, data.turn_signal_cmd.value]
    str_msg = ','.join(map(str, msg)) 

    print(str_msg)

def topicListener():
    print()


if __name__ == '__main__':
    rospy.init_node('topic_state_listener', anonymous=True)

    # while not rospy.is_shutdown():
    rospy.Subscriber("control_commands", ControlCommands, control_commands_stat)
    rospy.spin()