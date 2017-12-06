# http://www.binarytides.com/programming-udp-sockets-in-python/

import time
import socket
import sys
import os
from struct import *

# fuser -k 8050/udp

'''
typedef struct {
	uint8 h31_timeout;
	uint8 h32_timeout;
	uint8 h33_timeout;
	uint8 h3;
	uint32 counter;
	uint32 buffer2;
} ETH_txDiagBuffer_t;
'''

ETH_txDiagBuffer_t = [
    "h31_timeout",
    "h32_timeout",
    "h33_timeout",
    "h3ToObey",
    "counter",
    "buffer2",
]

HOST = "192.168.200.255"   # Symbolic name , "" - empty meaning all available interfaces
SOURCE_PORT = 8050 # Arbitrary non-privileged port
BUFFER_SIZE = 1024
c_struct = 'BBBBII'     # 12 -  # B = 1, I = 4
print(calcsize(c_struct))

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
    s.bind((HOST, SOURCE_PORT))
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
    # print('Message[' + ip + ':' + str(port) + '] - ' + format(decoded_data))
    for idx, val in enumerate(decoded_data):
        print("{:20s} {:5d} ".format(ETH_txDiagBuffer_t[idx], val)) 

s.close()