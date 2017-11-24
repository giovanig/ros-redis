#!/usr/bin/env python

import sys, os, time
import rospy, rostopic, rosgraph
from rostopic import ROSTopicHz 

from std_msgs.msg import String
from std_msgs.msg import Bool
from std_msgs.msg import Empty

# https://github.com/ros/ros_comm/blob/indigo-devel/tools/rostopic/src/rostopic/__init__.py
def _check_master():
    """
    Make sure that master is available
    :raises: :exc:`ROSTopicException` If unable to successfully communicate with master
    """
    try:
        rosgraph.Master('/rostopic').getPid()
    except socket.error:
        raise ROSTopicIOException("Unable to communicate with master!")


def _master_get_topic_types(master):
    try:
        val = master.getTopicTypes()
    except Fault:
        #TODO: remove, this is for 1.1
        sys.stderr.write("WARNING: rostopic is being used against an older version of ROS/roscore\n")
        val = master.getPublishedTopics('/')
    return val


def cameraStreamStatusCB(data):
    rospy.loginfo(rospy.get_caller_id() + " I heard error")


def topicListener():
    # Subscribers
    rospy.Subscriber("camera_stream", String, cameraStreamStatusCB)

    # Node Init
    rospy.init_node('topic_state_listener', anonymous=True)
    r = ROSTopicHz(-1)

    while not rospy.is_shutdown():
        rospy.spin()

if __name__ == '__main__':

    try:
        val = _master_get_topic_types(rosgraph.Master('/rostopic'))
    except socket.error:
        raise ROSTopicIOException("Unable to communicate with master!")
    
    topicListener()