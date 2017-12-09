/* Copyright (c) 2017 Renesas Electronics America Inc.
 *
 * udpDriver.cpp
 *
 * Description: udp message receiver listens to socket on predefined port and
 * returns received data to nodelet for publishing
 *
 */

#include "p1hc_fault_detector/udpDriver.hpp"

#include <boost/log/trivial.hpp>

#include <iostream>
#include <string>

UdpDriver::UdpDriver() {
}

int UdpDriver::InitializeSocket(int rxPort_) {

    // The socket() system call creates a new socket
    // AF_INET is the address domain of the socket - the Internet domain for any two hosts on the Internet
    // SOCK_DGRAM is the type of socket - messages are read in chunks
    // IPPROTO_UDP is the protocol - If this argument is zero, the OS will choose the most appropriate protocol
    // If the socket call fails, it returns -1
    sockfd = socket(AF_INET,SOCK_DGRAM,IPPROTO_UDP);

    // serv is a structure of type struct sockaddr_in
    // sin_family contains a code for the address family - should always be set to the symbolic constant AF_INET
    serv.sin_family = AF_INET;
    // sin_port is unsigned short sin_port, which contain the port number - it is necessary to convert this to network byte order using the function htons() which converts a port number in host byte order to a port number in network byte order.
    serv.sin_port = htons(rxPort_);
    // sin_addr.s_addr is a structure of type struct in_addr which contains only a single field unsigned long s_addr - contains the IP address of the host
    // Will always be the IP address of the machine on which the server is running, and there is a symbolic constant INADDR_ANY which gets this address.
    serv.sin_addr.s_addr = htonl(INADDR_ANY);


    // The bind() system call binds a socket to an address, in this case the address of the current host and port number on which the server will run. It takes three arguments,
    // the socket file descriptor
    // the address to which is bound
    // the size of the address to which it is bound
    if (bind(sockfd, (struct sockaddr *)&serv, sizeof(serv)) < 0)
    {
        BOOST_LOG_TRIVIAL(error) << "bind Failed ";
        return 1;
    }
    return 0;
}

int UdpDriver::CloseSocket () {
    close (sockfd);
    return 0;
}

int UdpDriver::ReceivePacket (uint8 * buffer, int bufferSize) {

    // l stores the size of the address of the client
    socklen_t l = sizeof(client);
    struct timeval t;
    fd_set fds;

    if (0 <= sockfd)
    {
        FD_ZERO(&fds);
        FD_SET(sockfd, &fds);

        // Set up timeout
        t.tv_sec = 0.01; // 10 mSec timeout
        t.tv_usec = 0;

        if (select(sockfd + 1, &fds, NULL, NULL, &t) > 0)
        {
            recvfrom(sockfd, buffer, bufferSize, 0, (struct sockaddr *)&client, &l);
            // debugLogMessageRaw(buffer); printf("msg 1-1");
            return 0;
        }
    }
    return 1;
}

void UdpDriver::debugLogMessageRaw (uint8 * d) {
char temp[100];
std::string udpRxData_string;

    sprintf(temp, "RawData: %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x  ",
            *d, *(d+1), *(d+2), *(d+3), *(d+4), *(d+5), *(d+6), *(d+7), *(d+8), *(d+9), *(d+10), *(d+11), *(d+12));
    udpRxData_string = temp;

    // Output the log message
    BOOST_LOG_TRIVIAL(info) << udpRxData_string;
}
