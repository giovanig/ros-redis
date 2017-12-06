#!/usr/bin/env python

import sys, os, time
import socket
from struct import *

import rospy, rostopic, rosmsg
from collections import OrderedDict
from std_msgs.msg import String
from std_msgs.msg import Bool
from std_msgs.msg import Empty

current_milli_time = lambda: int(round(time.time() * 1000))

'''
/**
 * This defines the buffer that will go from the P1H-C to the H3's. It must announce
 * failures in the system.
 *
 * failureDetected : 0 = no failure
 * 					 1 = failure detected
 * failureType : 0 = none
 * 			     1 = P1H-C_0 failure
 * 			     2 = P1H-C_1 failure
 * 			     3 = H3_0 failure
 * 			     4 = H3_1 failure
 * 			     5 = H3_2 failure
 * 			     6 = RDrive_0 failure
 * 			     7 = RDrive_1 failure
 *
 * dataSpeedOffline : 0 = DataSpeed is communicating normally
 *                    1 = DataSpeed loss of comms. detected
 */

typedef struct {
	uint8 failureDetected; 
	uint8 failureType;
	uint8 dataSpeedOffline;
	uint8 buffer0;
	uint32 buffer1;
	uint32 buffer2;
	uint32 buffer3;
} ETH_txBuffer_t;
'''

ETH_txBuffer_t = [
    "failureDetected",
    "failureType",
    "dataSpeedOffline",
    "buffer0",
    "buffer1",
    "buffer2",
    "buffer3"
]


# fuser -k 8003/udp

HOST = "255.255.255.255"   # IP addr the P1HC is sending udp packet to
DEST_PORT = 8003 # Destination port where the udp packet is being sent to 
BUFFER_SIZE = 1024
c_struct = 'BBBBIII'     # 16 -  # B = 1, I = 4
print(calcsize(c_struct))

def clear():
    os.system('clear')

def udp_rec():

    fail = rospy.Publisher('p1hc_fail_occurred', Empty, queue_size=10)
    rospy.init_node('udp_receiver', anonymous=False)

    # Datagram (udp) socket
    try :
        s = socket.socket(socket.AF_INET,       # Internet
                        socket.SOCK_DGRAM)    # UDP
        print ('Socket created')
    except socket.error as msg:
        print ('Failed to create socket. Error Code : ' + str(msg[0]) + ' Message ' + msg[1])
        sys.exit()


    # Bind socket to local host and port
    try:
        s.bind((HOST, DEST_PORT))
    except socket.error as msg:
        print('Bind failed. Error Code : ' + str(msg[0]) + ' Message ' + msg[1])
        sys.exit()

    print('Socket bind complete')

    # now keep talking with the client
    while 1:
        # receive data from client (data, addr)
        bin_data, addr = s.recvfrom(BUFFER_SIZE)

        # IP and port information from recieved message
        ip = addr[0]
        port = addr[1]
        # print("IP: " + str(ip) + "\t PORT: " + str(port))

        # decode binary data to struct
        decoded_data = unpack(c_struct, bin_data)

        if not bin_data:
            break

        clear()

        # print('Message[' + ip + ':' + str(port) + '] - ' + format(decoded_data))
        for idx, val in enumerate(decoded_data):
            print("{:20s} {:5d} ".format(ETH_txBuffer_t[idx], val)) 
            if (idx==0) and (val==1):
                fail.publish(Empty())          

    s.close()

def ros_node_init():
    fail = rospy.Publisher('p1hc_fail_occurred', Empty, queue_size=10)
    rospy.init_node('udp_receiver', anonymous=False)
    rate = rospy.Rate(10) 

    while not rospy.is_shutdown():
        fail.publish(Empty())
        rate.sleep()

if __name__ == '__main__':
    # try:
    #     ros_node_init()
    # except rospy.ROSInterruptException:
    #     pass
    udp_rec()