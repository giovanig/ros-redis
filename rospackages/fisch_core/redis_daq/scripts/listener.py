#!/usr/bin/env python


# https://pypi.python.org/pypi/redis
# https://gist.github.com/jobliz/2596594
# https://redis-py.readthedocs.io/en/latest/
# https://gist.github.com/sunboy-2050/9543963

import sys, os, time
import redis
import rospy

from sensor_msgs.msg import NavSatFix # http://docs.ros.org/jade/api/sensor_msgs/html/msg/NavSatFix.html
from geometry_msgs.msg import Point
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist

from anm_msgs.msg import ControlCommands
from anm_msgs.msg import VehicleState
from dbw_mkz_msgs.msg import ThrottleReport
from dbw_mkz_msgs.msg import BrakeReport
from dbw_mkz_msgs.msg import GearReport
from dbw_mkz_msgs.msg import SteeringReport

hostname = 'localhost'
port = 6379
password = ''

# Make connection to redis database
con = redis.StrictRedis(
    host=hostname,
    port=port,
    db=0)

# pubsub = con.pubsub()
# pubsub.subscribe(["_control_commands"])


def control_commands_callback(data):
    #rospy.loginfo(rospy.get_caller_id() + "Seq %d, Stamp %d, frame_id %s, steering_pos_cmd %f, steering_vel_cmd %f, steering_EN %d", data.header.seq, data.header.stamp, data.header.frame_id, data.steering_pos_cmd, data.steering_vel_cmd, data.steering_EN)
    rospy.loginfo("Seq %d", (data.header.seq))
    
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.steering_pos_cmd, data.steering_vel_cmd ,data.steering_EN, data.throttle_cmd, data.throttle_EN, data.brake_cmd, data.brake_EN, data.gear_cmd.gear, data.turn_signal_cmd.value]
    str_msg = ','.join(map(str, msg)) 


    con.publish("_control_commands", str_msg)

    print(str_msg)

def navsat_fix_callback(data):
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.status, data.latitude, data.longitude, data.altitude]
    str_msg = ','.join(map(str, msg)) 

    con.publish("_navsat_fix", str_msg)

def throttle_report_callback(data):
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.pedal_input, data.pedal_cmd, data.pedal_output, data.enabled, data.override, data.driver, data.watchdog_counter, data.fault_wdc]
    str_msg = ','.join(map(str, msg)) 

    con.publish("_vehicle_throttle_report", str_msg)

def steering_report_callback(data):
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.steering_wheel_angle, data.steering_wheel_angle_cmd, data.steering_wheel_torque, data.speed, data.enabled, data.override, data.driver, data.fault_wdc]
    str_msg = ','.join(map(str, msg)) 

    con.publish("_vehicle_throttle_report", str_msg)

def vehicle_state_callback(data):
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.child_frame_id, data.position, data.orientation, data.velocity, data.acceleration]
    str_msg = ','.join(map(str, msg)) 

    con.publish("_vehicle_throttle_report", str_msg)

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('redis_listener', anonymous=False)

    # List subscribers
    #### rospy.Subscriber(topic_name, message_type, callback_function)
    rospy.Subscriber("control_commands", ControlCommands, control_commands_callback)
    rospy.Subscriber("navsat/fix", NavSatFix, navsat_fix_callback)
    rospy.Subscriber("vehicle/throttle_report", ThrottleReport, throttle_report_callback)
    rospy.Subscriber("vehicle/steering_report", SteeringReport, steering_report_callback)
    # rospy.Subscriber("vehicle/brake_report", BrakeReport, brake_report_callback)
    # rospy.Subscriber("vehicle/gear_report", GearReport, gear_report_callback)
    rospy.Subscriber("vehicle_state", VehicleState, vehicle_state_callback)    
    

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
