#!/usr/bin/env python

import sys, os, time
import json
import redis
from collections import OrderedDict
from std_msgs.msg import String
from std_msgs.msg import Bool
from std_msgs.msg import Empty

import rospy, rostopic, rosmsg

from rospy_message_converter import json_message_converter

from sensor_msgs.msg import NavSatFix # http://docs.ros.org/kinetic/api/sensor_msgs/html/msg/NavSatFix.html
from geometry_msgs.msg import Point
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist

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

def rosmsg_info():
    topics_and_types = rospy.get_published_topics()
    for topic, ttype in topics_and_types:
        print("topic: %40s \t type: %55s"%(topic, ttype))

def rosmag_redis_json(data,topic):

    json_str = json_message_converter.convert_ros_message_to_json(data)

    append_fields = ('"timestamp" : %d, ')% (rospy.get_rostime().nsecs)
    json_str = json_str[:1]+append_fields+json_str[1:]

    json_str = '{"' + topic + '" : ' + json_str + ' }'
    # print(json_str)
  
    con.publish(topic, json_str)

    if topic.strip() == "_vehicle_brak_report":
        # var to check if the car is in autonomy mode
        autonomy_status =  '{"_autonomy_state" : {"status" : %s} }' % (data.enabled)
        # print(autonomy_status)
        con.publish("_autonomy_state", autonomy_status)

    

def topicListener():
    rospy.init_node('rosmsg2redis_json', anonymous=True)

    rospy.Subscriber("control_commands", anm_msgs.ControlCommands, callback = rosmag_redis_json, callback_args =  "_control_commands")
    rospy.Subscriber("checked_commands", anm_msgs.ControlCommands, callback = rosmag_redis_json, callback_args =  "_checked_commands")
    rospy.Subscriber("navsat/fix", NavSatFix, callback = rosmag_redis_json, callback_args =  "_navsat_fix")
    rospy.Subscriber("vehicle/throttle_report", dbw_mkz_msgs.ThrottleReport, callback = rosmag_redis_json, callback_args =  "_vehicle_throttle_report")
    rospy.Subscriber("vehicle/steering_report", dbw_mkz_msgs.SteeringReport, callback = rosmag_redis_json, callback_args =  "_vehicle_steering_report")
    rospy.Subscriber("vehicle/brake_report", dbw_mkz_msgs.BrakeReport, callback = rosmag_redis_json, callback_args =  "_vehicle_brak_report")
    rospy.Subscriber("vehicle/gear_report", dbw_mkz_msgs.GearReport, callback = rosmag_redis_json, callback_args =  "_vehicle_gear_report")
    rospy.Subscriber("vehicle_state", anm_msgs.VehicleState, callback = rosmag_redis_json, callback_args =  "_vehicle_state_report")
    rospy.Subscriber("vehicle/p1hc_enable_flag", Bool, callback = rosmag_redis_json, callback_args =  "_vehicle_p1hc_enable_flag")
    

    rospy.spin()


if __name__ == '__main__':
    try:
        topicListener()
    except rospy.ROSInterruptException:
        pass