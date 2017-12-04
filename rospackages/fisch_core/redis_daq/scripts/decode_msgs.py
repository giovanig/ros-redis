#!/usr/bin/env python

import sys, os, time
import json
from collections import OrderedDict
from std_msgs.msg import String

import rospy, rostopic, rosmsg

from rospy_message_converter import json_message_converter

import anm_msgs.msg as anm_msgs
import dbw_mkz_msgs.msg as dbw_mkz_msgs


def callback_stat(data,topic):
    # # Current time
    # now_ = rospy.get_rostime()
    # msg = [now_, topic]
    # str_msg = ','.join(map(str, msg)) 

    # print (dir(data))
    json_str = json_message_converter.convert_ros_message_to_json(data)
    print(json_str)

def topicListener():
    rospy.init_node('message_decoder', anonymous=True)

    # topics_and_types = rospy.get_published_topics()
    # for topic, ttype in topics_and_types:
    #     print("topic: %40s \t type: %55s"%(topic, ttype))

    rospy.Subscriber("control_commands", anm_msgs.ControlCommands, callback = callback_stat, callback_args =  "control_commands")
    rospy.spin()


if __name__ == '__main__':
    try:
        topicListener()
    except rospy.ROSInterruptException:
        pass