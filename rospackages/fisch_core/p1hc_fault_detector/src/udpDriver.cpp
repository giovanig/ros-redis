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

    sockfd = socket(AF_INET,SOCK_DGRAM,IPPROTO_UDP);
    serv.sin_family = AF_INET;
    serv.sin_port = htons(rxPort_);
    serv.sin_addr.s_addr = htonl(INADDR_ANY);

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
            // debugLogMessageRaw(buffer);
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
