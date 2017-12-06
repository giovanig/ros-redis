# https://docs.python.org/3/library/struct.html
# http://www.binarytides.com/programming-udp-sockets-in-python/

# https://stackoverflow.com/questions/27521637/python-ctypes-structure-wrong-byte-size
# https://stackoverflow.com/questions/4110378/python-struct-size-changed-by-alignment

# fuser -k 8000/udp

import time
import socket
import sys
import os
import time
from struct import *

# fuser -k 8000/udp

HOST = "192.168.200.255"   # Symbolic name , "" - empty meaning all available interfaces
PORT = 8000 # Arbitrary non-privileged port
BUFFER_SIZE = 47
c_struct = '=IIffffBBBBBBBIIII' # 47 -  # B = 1, I = 4
print(calcsize(c_struct))


actuator_commands = [
    "id",
    "roll_count",
	"brake_PCMD",
	"throttle_PCMD",
	"steering_SCMD",
	"steering_SVEL",
	"brake_BCMD",
	"turn_signal_CMD",
    "shifting_GCMD",
	"brake_EN",
	"throttle_EN",
	"steering_EN",
	"dataSpeedClear",
    "cmac0",
    "cmac1",
    "cmac2",
    "cmac3"
]

def clear():
    os.system('clear')

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
    s.bind((HOST, PORT))
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

    # reply = 'OK...' + data
    #
    # s.sendto(reply, addr)

    clear()
    for idx, val in enumerate(decoded_data):
        print("{:20s} {:12f} ".format(actuator_commands[idx], val))


    # print('Message[' + ip + ':' + str(port) + '] - ' + format(decoded_data))

s.close()
