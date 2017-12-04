#!/usr/bin/env python

import sys, os, time
from collections import OrderedDict

import rospy, rostopic, rosmsg

import anm_msgs.msg as anm_msgs
import dbw_mkz_msgs.msg as dbw_mkz_msgs


def topicListener():
    rospy.init_node('message_decoder', anonymous=True)

    topics_and_types = rospy.get_published_topics()
    for topic, ttype in topics_and_types:
        print("topic: %40s \t type: %55s"%(topic, ttype))



if __name__ == '__main__':
    try:
        topicListener()
    except rospy.ROSInterruptException:
        pass