/* Copyright (c) 2017 Renesas Electronics America Inc.
 *
 * nodelet.cpp
 *
 * Description: ros udp nodelet polls ethernet socket for udp packets and
 * publishes data as pseudo CAN data following the published message format
 * used in "Dataspeed_can_usb" node
 *
 */

#include "p1hc_fault_detector/nodelet.hpp"

namespace  p1hc_fault_detector_nodelet {

UdpNodelet::UdpNodelet() {
}

void UdpNodelet::onInit() {
    this->nh_ = getNodeHandle();
    this->private_nh_ = getPrivateNodeHandle();
    this->loadParams();
    this->SetInternalLogger();

    udpSocketInitFail = this->udp.InitializeSocket(this->rxPort_);
    if (udpSocketInitFail)
    {
        ROS_INFO("Ethernet Socket Configuration Error");
    }
    SetupPublisher();
    this->udpPoll_
            = this->nh_.createTimer(ros::Duration(this->udpPoll_Period_),
                                    boost::bind(&UdpNodelet::udpPoll,
                                    this));
}

void UdpNodelet::loadParams() {
    if (nh_.getParam("p1hc_fault_detector_node/log_directory", this->log_directory_))
    {
        ROS_INFO("Loaded log_directory: %s", this->log_directory_.c_str());
    }
    else
    {
        ROS_INFO("Could not load log_directory");
    }

    if (nh_.getParam("p1hc_fault_detector_node/log_maxFileSize", this->maxFileSize_))
    {
        ROS_INFO("Logging maximum file size: %d", this->maxFileSize_);
    }
    else
    {
        this->maxFileSize_ = 131072;
        ROS_INFO("Loaded default logging maximum file size: %d",
                this->maxFileSize_);
    }

    if (nh_.getParam("p1hc_fault_detector_node/log_maxFiles", this->maxFiles_))
    {
        ROS_INFO("Logging maximum number of files: %d", this->maxFiles_);
    }
    else
    {
        this->maxFiles_ = 5;
        ROS_INFO("Loaded default logging maximum number of files: %d",
                this->maxFiles_);
    }

    if (nh_.getParam("p1hc_fault_detector_node/log_rawMessage", this->debugLogMessageRaw_))
    {
        ROS_INFO("Logging raw messages: %d", this->debugLogMessageRaw_);
    }
    else
    {
        this->debugLogMessageRaw_ = 0;
        ROS_INFO("Loaded default logging raw messages: %d",
                this->debugLogMessageRaw_);
    }

    if (nh_.getParam("p1hc_fault_detector_node/udpPoll_Period", this->udpPoll_Period_))
    {
        ROS_INFO("Loaded udp polling period: %f", this->udpPoll_Period_);
    }
    else
    {
        this->udpPoll_Period_ = 0.001;
        ROS_INFO("Loaded default udp polling period: %f",
                this->udpPoll_Period_);
    }

    if (nh_.getParam("p1hc_fault_detector_node/rxPort", this->rxPort_))
    {
        ROS_INFO("Listening on ethernet port: %d", this->rxPort_);
    }
    else
    {
        this->rxPort_ = 8103;
        ROS_INFO("Loaded default rxPort: %d", this->rxPort_);
    }
}

void UdpNodelet::SetInternalLogger() {
    boost::log::add_common_attributes();

    std::string log_path = getenv("HOME") + this->log_directory_;
    boost::log::core::get()->set_filter(
        boost::log::trivial::severity >= boost::log::trivial::info);

    boost::log::add_file_log(boost::log::keywords::file_name =
        log_path + "/p1hc_fault_detector_nodelet_%N.log",
        boost::log::keywords::rotation_size = 1048576,
        boost::log::keywords::format = "[%TimeStamp%]: %Message%"
        )->locked_backend()->set_file_collector(
            boost::log::sinks::file::make_collector(
                boost::log::keywords::target = log_path,
                boost::log::keywords::max_size = 5 * 1048576));
}

void UdpNodelet::SetupPublisher () {
    std::stringstream ns;

    pubs_.clear();
    ns << ""; // "can_bus_dbw";
    ros::NodeHandle node(nh_, ns.str());
    pubs_.push_back(
    node.advertise<std_msgs::Empty>("p1hc_fail_occurred", 100, false));
}

void UdpNodelet::udpPoll() {
    uint8 udpBuffer[sizeof(UdpRxPacket_t)];
    UdpRxPacket_t * packetPtr;

    if (!udpSocketInitFail)
    {
        int udpRxFail = this->udp.ReceivePacket(udpBuffer, sizeof(udpBuffer));
        // ROS_INFO("got something %s\n", inet_ntoa(this->udp.client.sin_addr));

        // Since multiple devices can be sending data at port 8003 via broadcast
        // we need to ensure we are only processing data sent by the P1HC
        std::string p1hc_ip ("192.168.200.110");
        std::string client_ip = (inet_ntoa(this->udp.client.sin_addr));
        
        // if((p1hc_ip.compare(client_ip)) == 0)
        // {ROS_INFO("Client IP: %s matches P1HC IP: %s \n", p1hc_ip.c_str() , client_ip.c_str());}

        if (!udpRxFail && ((p1hc_ip.compare(client_ip)) == 0))
        {
            packetPtr = (UdpRxPacket_t *)udpBuffer;

            if(packetPtr->failureDetected == 1)
            {
                ROS_INFO("P1HC alerted of a faultType %d", packetPtr->failureType);
                std_msgs::Empty failAlert;
                // failAlert.header.stamp = ros::Time::now();                
                // failAlert.dlc = packetPtr->dlc;
                // memcpy(failAlert.data.elems, packetPtr->data, 8);
                pubs_[0].publish(failAlert);
                // if (debugLogMessageRaw_) udp.debugLogMessageRaw(udpBuffer);
            }            
        }
    }
    else
    {
        ROS_INFO("Retry configuring socket");
        this->udp.CloseSocket();
        udpSocketInitFail = this->udp.InitializeSocket(this->rxPort_);
        if (udpSocketInitFail)
        {
            ROS_INFO("Ethernet Socket Error");
        }
    }
}

}  // p1hc_fault_detector_nodelet

PLUGINLIB_DECLARE_CLASS(p1hc_fault_detector_nodelet,
    UdpNodelet, p1hc_fault_detector_nodelet::UdpNodelet, nodelet::Nodelet);
