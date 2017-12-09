/* Copyright (c) 2017 Renesas Electronics America Inc.
 *
 * udpDriver.hpp
 *
 * Description: udp message receiver header file
 *
 */

#ifndef UDP_DRIVER_HPP
#define UDP_DRIVER_HPP

#include <arpa/inet.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <sys/select.h>

typedef unsigned long  uint32;
typedef unsigned short uint16;
typedef unsigned char  uint8;
typedef signed long    int32;
typedef signed short   int16;
typedef signed char    int8;

typedef struct {
	uint8 failureDetected; // overall failure bit flag
	uint8 failureType;
	uint8 dataSpeedOffline;
	uint8 buffer0;
	uint32 buffer1;
	uint32 buffer2;
	uint32 buffer3;
	} UdpRxPacket_t;

class UdpDriver {
 public:
    UdpDriver();

    int  InitializeSocket (int rxPort_);
    int  CloseSocket ();
    int  ReceivePacket (uint8 * buffer, int bufferSize);
    void debugLogMessageRaw (uint8 * d);

    struct sockaddr_in client;

 private:

    // file descriptor, stores the value returned by the socket system call
    int sockfd;

    // A sockaddr_in is a structure containing an internet address
    // serv will contain the address of the server, and client will contain the address of the client which connects to the server
    struct sockaddr_in serv;

};

#endif //UDP_DRIVER_HPP
