#!/usr/bin/env python


# https://pypi.python.org/pypi/redis
# https://gist.github.com/jobliz/2596594
# https://redis-py.readthedocs.io/en/latest/
# https://gist.github.com/sunboy-2050/9543963

import sys, os, time
import subprocess
import redis
import rospy
import rosnode

from std_msgs.msg import String
from std_msgs.msg import Bool
from std_msgs.msg import Empty

from sensor_msgs.msg import NavSatFix # http://docs.ros.org/jade/api/sensor_msgs/html/msg/NavSatFix.html
from geometry_msgs.msg import Point
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import Twist

from anm_msgs.msg import ControlCommands
from anm_msgs.msg import VehicleState
from dbw_mkz_msgs.msg import WatchdogCounter
from dbw_mkz_msgs.msg import ThrottleReport
from dbw_mkz_msgs.msg import BrakeReport
from dbw_mkz_msgs.msg import Gear
from dbw_mkz_msgs.msg import GearReport
from dbw_mkz_msgs.msg import SteeringReport

# var to check if the car is in autonomy mode
autonomy_enabled = False

# Publishers
# publisher for debugging purposes
control_commands_pub = rospy.Publisher('redis_control_commands', String, queue_size=10)


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
    # rospy.loginfo("Seq %d", (data.header.seq))
    
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.steering_pos_cmd, data.steering_vel_cmd ,data.steering_EN, data.throttle_cmd, data.throttle_EN, data.brake_cmd, data.brake_EN, data.gear_cmd.gear, data.turn_signal_cmd.value]
    str_msg = ','.join(map(str, msg)) 


    con.publish("_control_commands", str_msg)

    # print(str_msg)
    # rostopic echo /redis_control_commands
    control_commands_pub.publish(str_msg)

def navsat_fix_callback(data):
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.status, data.latitude, data.longitude, data.altitude]
    str_msg = ','.join(map(str, msg)) 

    con.publish("_navsat_fix", str_msg)

def vehicle_state_callback(data):
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.child_frame_id, data.position, data.orientation, data.velocity, data.acceleration]
    str_msg = ','.join(map(str, msg)) 

    con.publish("_vehicle_state_report", str_msg)

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

    con.publish("_vehicle_steering_report", str_msg)

def gear_report_callback(data):
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.state, data.cmd, data.override, data.fault_bus]
    str_msg = ','.join(map(str, msg)) 

    con.publish("_vehicle_gear_report", str_msg)

def brake_report_callback(data):
    # Current time
    now_ = rospy.get_rostime()

    msg = [now_, data.pedal_input, data.pedal_cmd, data.pedal_output, data.torque_input, data.torque_cmd, data.torque_output, data.boo_input, data.boo_cmd, data.boo_output, data.enabled, data.override, data.driver, data.watchdog_counter, data.watchdog_braking, data.fault_wdc]
    str_msg = ','.join(map(str, msg)) 

    global autonomy_enabled
    autonomy_enabled = data.enabled

    con.publish("_vehicle_brak_report", str_msg)

    autonomy_state(now_, autonomy_enabled)

def autonomy_state(*args, **kwargs):

    str_msg = ','.join(map(str, args)) 
    con.publish("_autonomy_state", str_msg)

def timer_callback(event):
    if rospy.is_shutdown():
        print("Unable to communicate with ROS_MASTER")

    # if rosnode.rosnode_ping("/rosout")

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('redis_listener', anonymous=False) 

    # ros timer
    timer = rospy.Timer(rospy.Duration(0.5), timer_callback)

    # Subscribers
    #### rospy.Subscriber(topic_name, message_type, callback_function)
    rospy.Subscriber("control_commands", ControlCommands, control_commands_callback)
    rospy.Subscriber("navsat/fix", NavSatFix, navsat_fix_callback)
    rospy.Subscriber("vehicle/throttle_report", ThrottleReport, throttle_report_callback)
    rospy.Subscriber("vehicle/steering_report", SteeringReport, steering_report_callback)
    rospy.Subscriber("vehicle/brake_report", BrakeReport, brake_report_callback)
    rospy.Subscriber("vehicle/gear_report", GearReport, gear_report_callback)
    rospy.Subscriber("vehicle_state", VehicleState, vehicle_state_callback)  

    rospy.spin()

    # if not rospy.is_shutdown():  
    #     rospy.spin()
    # else:
    #     rospy.signal_shutdown("Unable to communicate with ROS_MASTER")
    #     return

    # try:
    #     rospy.spin()

    # spin() simply keeps python from exiting until this node is stopped
    

if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass
