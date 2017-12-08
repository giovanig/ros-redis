/* Copyright (c) 2017 Renesas Electronics America Inc.
 *
 * nodelet.hpp
 *
 * Description: ros nodelet udp receiver header file
 *
 */

#ifndef NODELET_H
#define NODELET_H

#include <ros/ros.h>
#include <ros/package.h>
#include <std_msgs/String.h>
#include <nodelet/nodelet.h>
#include <pluginlib/class_list_macros.h>

#include <boost/log/utility/setup/console.hpp>
#include <boost/log/utility/setup/file.hpp>
#include <boost/log/utility/setup/common_attributes.hpp>
#include <boost/log/trivial.hpp>

#include <can_msgs/Frame.h>

#include "p1hc_fault_detector/udpDriver.hpp"

namespace p1hc_fault_detector_nodelet {

class UdpNodelet : public nodelet::Nodelet {
 public:
	UdpNodelet();

 private:
    virtual void onInit();
    void loadParams();
    void SetInternalLogger();
    void SetupPublisher ();
    void udpPoll();

    // Nodehandles, both public and private
    ros::NodeHandle nh_, private_nh_;

    // Timer for polling ethernet socket
    ros::Timer udpPoll_;
    double udpPoll_Period_;

    std::string log_directory_;
    int maxFileSize_;
    int maxFiles_;
    int rxPort_;
    int debugLogMessageRaw_;

    int udpSocketInitFail;

    std::vector<ros::Publisher> pubs_;

    UdpDriver udp;
};

}  // namespace p1hc_fault_detector_nodelet
#endif // NODELET_H
