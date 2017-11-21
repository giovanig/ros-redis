#!/usr/bin/env python


# https://pypi.python.org/pypi/redis
# https://gist.github.com/jobliz/2596594
# https://redis-py.readthedocs.io/en/latest/
# https://gist.github.com/sunboy-2050/9543963

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

# pubsub = con.pubsub()
# pubsub.subscribe(["_control_commands"])


def control_commands_callback(data):
    #rospy.loginfo(rospy.get_caller_id() + "Seq %d, Stamp %d, frame_id %s, steering_pos_cmd %f, steering_vel_cmd %f, steering_EN %d", data.header.seq, data.header.stamp, data.header.frame_id, data.steering_pos_cmd, data.steering_vel_cmd, data.steering_EN)
    rospy.loginfo("Seq %d", (data.header.seq))
    
    # Current time
    cur_time = rospy.get_time()

    msg = [data.steering_pos_cmd, data.steering_vel_cmd ,data.steering_EN, data.throttle_cmd, data.throttle_EN, data.brake_cmd, data.brake_EN, data.gear_cmd.gear, data.turn_signal_cmd.value]
    str_msg = ','.join(map(str, msg)) 


    con.publish("_control_commands", str_msg)

    print(str_msg)

    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('redis_listener', anonymous=False)

    # List subscribers
    # Subscriber(topic_name, message_type, callback_function)
    rospy.Subscriber("control_commands", ControlCommands, control_commands_callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
