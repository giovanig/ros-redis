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
        this->rxPort_ = 8003;
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
    ns << "can_bus_dbw";
    ros::NodeHandle node(nh_, ns.str());
    pubs_.push_back(
    node.advertise<can_msgs::Frame>("can_rx", 100, false));
}

void UdpNodelet::udpPoll() {
    uint8 udpBuffer[sizeof(UdpRxPacket_t)];
    UdpRxPacket_t * packetPtr;

    if (!udpSocketInitFail)
    {
        int udpRxFail = this->udp.ReceivePacket(udpBuffer, sizeof(udpBuffer));
        if (!udpRxFail)
        {
            packetPtr = (UdpRxPacket_t *)udpBuffer;
            can_msgs::Frame msg;
            // msg.header.frame_id = "????";
            msg.header.stamp = ros::Time::now();
            msg.id = packetPtr->id;
            msg.is_extended = 0;
            msg.dlc = packetPtr->dlc;
            memcpy(msg.data.elems, packetPtr->data, 8);
            pubs_[0].publish(msg);
            if (debugLogMessageRaw_) udp.debugLogMessageRaw(udpBuffer);
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
