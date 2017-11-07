#!/usr/bin/env python

import rocon_python_redis as redis
import rospy
from beginner_tutorials.msg import ControlCommands

i = 1

def callback(data):
    global i
    #rospy.loginfo(rospy.get_caller_id() + "Seq %d, Stamp %d, frame_id %s, steering_pos_cmd %f, steering_vel_cmd %f, steering_EN %d", data.header.seq, data.header.stamp, data.header.frame_id, data.steering_pos_cmd, data.steering_vel_cmd, data.steering_EN)
    rospy.loginfo("Seq %d", (data.header.seq))
    con = redis.Connection(host="localhost", socket_timeout=5.0, port=6379)
    con.send_command('SET', 'steering_pos_cmd', data.steering_pos_cmd)
    con.send_command('GET', 'steering_pos_cmd')
    res = con.read_response()
    print(res)
    i += 1

    
def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('custom_listener', anonymous=True)

    rospy.Subscriber("custom_chatter", ControlCommands, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
