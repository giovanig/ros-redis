#!/usr/bin/env python

import sys, os, time
import redis
import rospy
from anm_msgs.msg import ControlCommands


hostname = 'localhost'
port = 6379
password = ''

# Make connection to redis database
con = redis.StrictRedis(
    host=hostname,
    port=port,
    db=0)

i = 1

def callback(data):
    global i
    #rospy.loginfo(rospy.get_caller_id() + "Seq %d, Stamp %d, frame_id %s, steering_pos_cmd %f, steering_vel_cmd %f, steering_EN %d", data.header.seq, data.header.stamp, data.header.frame_id, data.steering_pos_cmd, data.steering_vel_cmd, data.steering_EN)
    rospy.loginfo("Seq %d", (data.header.seq))
    
    # Current time
    cur_time = rospy.get_time()

    steering_pos_cmd = data.steering_pos_cmd
    steering_vel_cmd = data.steering_vel_cmd
    steering_EN = data.steering_EN
    throttle_cmd = data.throttle_cmd
    throttle_EN = data.throttle_EN
    brake_cmd = data.brake_cmd
    brake_EN = data.brake_EN
    gear_cmd = data.gear_cmd.gear
    turn_signal_cmd = data.turn_signal_cmd.value

    rospy.loginfo("\n steering_pos_cmd: \t %s \n steering_vel_cmd: \t %s \n steering_EN: \t\t %s \n throttle_cmd: \t\t %s \n throttle_EN: \t\t %s \n brake_cmd: \t\t %s \n brake_EN: \t\t %s \n gear_cmd: \t\t %s \n turn_signal_cmd: \t %s \n " %(steering_pos_cmd, steering_vel_cmd, steering_EN, throttle_cmd, throttle_EN, brake_cmd, brake_EN, gear_cmd, turn_signal_cmd))
    # rospy.loginfo("steering_pos_cmd: %s steering_vel_cmd: %s" %(str(steering_pos_cmd), str(steering_vel_cmd)))


    con.rpush('steering_pos_cmd', steering_pos_cmd)
    con.rpush('steering_vel_cmd', steering_vel_cmd)
    con.rpush('steering_EN', steering_EN)
    con.rpush('throttle_cmd', throttle_cmd)
    con.rpush('throttle_EN', throttle_EN)
    con.rpush('brake_cmd', brake_cmd)
    con.rpush('brake_EN', brake_EN)
    con.rpush('gear_cmd', gear_cmd)
    con.rpush('turn_signal_cmd', turn_signal_cmd)

    # print(res)

    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('redis_listener', anonymous=False)

    # List subscribers
    rospy.Subscriber("control_commands", ControlCommands, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
