#!/usr/bin/env python

import sys, os, time
import rospy, rostopic, rosgraph
import redis
from rostopic import ROSTopicHz 

from std_msgs.msg import String
from std_msgs.msg import Bool
from std_msgs.msg import Empty

import anm_msgs.msg as anm_msgs
import dbw_mkz_msgs.msg as dbw_mkz_msgs


hostname = 'localhost'
port = 6379
password = ''

# Make connection to redis database
con = redis.StrictRedis(
    host=hostname,
    port=port,
    db=0)

def callback_stat(data,topic):
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, topic]
    str_msg = ','.join(map(str, msg)) 

    # print (str_msg)
    con.publish("_topic_stats", str_msg)

def topicListener():
    rospy.init_node('topic_state_listener', anonymous=True)

    rospy.Subscriber("control_commands", anm_msgs.ControlCommands, callback = callback_stat, callback_args =  "control_commands")
    rospy.Subscriber("vehicle_state", anm_msgs.VehicleState, callback = callback_stat, callback_args =  "vehicle_state")
    rospy.spin()
        

if __name__ == '__main__':
    try:
        topicListener()
    except rospy.ROSInterruptException:
        pass