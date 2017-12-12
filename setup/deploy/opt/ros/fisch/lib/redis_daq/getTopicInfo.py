#!/usr/bin/env python

import sys, os, re

import rospy, rostopic, rosmsg

# home  = os.getenv("HOME")

log_dir = '/tmp'
log_src = 'rostopic_info.ods'

def rosmsg_info():
    f = open(log_dir + "/" + log_src, 'w+')
    topics_and_types = rospy.get_published_topics()
    f.write('{:40}, {:55}\n'.format('Topic', 'Type'))
    for topic, ttype in topics_and_types:
        f.write('{:40}, {:55}\n'.format(topic.strip(), ttype.strip()))
        # print("topic: %40s \t type: %55s"%(topic, ttype))
    f.close()



if __name__ == '__main__':
    try:
        rosmsg_info()
    except rospy.ROSInterruptException:
        pass