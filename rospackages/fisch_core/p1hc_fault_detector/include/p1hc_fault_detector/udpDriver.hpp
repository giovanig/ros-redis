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
	uint32 id :32; // bitmapped to circumvent structure misalignment
	uint8  dlc;
	uint8  data[8];
	} UdpRxPacket_t;

class UdpDriver {
 public:
    UdpDriver();

    int  InitializeSocket (int rxPort_);
    int  CloseSocket ();
    int  ReceivePacket (uint8 * buffer, int bufferSize);
    void debugLogMessageRaw (uint8 * d);

 private:

    int sockfd;
    struct sockaddr_in serv, client;

};

#endif //UDP_DRIVER_HPP
