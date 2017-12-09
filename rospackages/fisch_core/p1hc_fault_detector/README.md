# p1hc_fault_detector Package

The node is responsible for alerting the system supervisor if the P1HC raises an alert for an emergency pullover. 

It binds the machine to listen to port 8103, at which the P1HC is sending the UDP packets

**Publisher** 

    /p1hc_fail_occurred     std_msgs::Empty

**Launch node**

    roslaunch p1hc_fault_detector p1hc_fault_detector.launch