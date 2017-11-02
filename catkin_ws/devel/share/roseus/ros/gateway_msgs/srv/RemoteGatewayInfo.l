;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::RemoteGatewayInfo)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'RemoteGatewayInfo (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::REMOTEGATEWAYINFO")
  (make-package "GATEWAY_MSGS::REMOTEGATEWAYINFO"))
(unless (find-package "GATEWAY_MSGS::REMOTEGATEWAYINFOREQUEST")
  (make-package "GATEWAY_MSGS::REMOTEGATEWAYINFOREQUEST"))
(unless (find-package "GATEWAY_MSGS::REMOTEGATEWAYINFORESPONSE")
  (make-package "GATEWAY_MSGS::REMOTEGATEWAYINFORESPONSE"))

(in-package "ROS")





(defclass gateway_msgs::RemoteGatewayInfoRequest
  :super ros::object
  :slots (_gateways ))

(defmethod gateway_msgs::RemoteGatewayInfoRequest
  (:init
   (&key
    ((:gateways __gateways) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _gateways __gateways)
   self)
  (:gateways
   (&optional __gateways)
   (if __gateways (setq _gateways __gateways)) _gateways)
  (:serialization-length
   ()
   (+
    ;; string[] _gateways
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _gateways)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _gateways
     (write-long (length _gateways) s)
     (dolist (elem _gateways)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _gateways
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gateways (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _gateways i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass gateway_msgs::RemoteGatewayInfoResponse
  :super ros::object
  :slots (_gateways ))

(defmethod gateway_msgs::RemoteGatewayInfoResponse
  (:init
   (&key
    ((:gateways __gateways) (let (r) (dotimes (i 0) (push (instance gateway_msgs::RemoteGateway :init) r)) r))
    )
   (send-super :init)
   (setq _gateways __gateways)
   self)
  (:gateways
   (&rest __gateways)
   (if (keywordp (car __gateways))
       (send* _gateways __gateways)
     (progn
       (if __gateways (setq _gateways (car __gateways)))
       _gateways)))
  (:serialization-length
   ()
   (+
    ;; gateway_msgs/RemoteGateway[] _gateways
    (apply #'+ (send-all _gateways :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gateway_msgs/RemoteGateway[] _gateways
     (write-long (length _gateways) s)
     (dolist (elem _gateways)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gateway_msgs/RemoteGateway[] _gateways
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gateways (let (r) (dotimes (i n) (push (instance gateway_msgs::RemoteGateway :init) r)) r))
     (dolist (elem- _gateways)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass gateway_msgs::RemoteGatewayInfo
  :super ros::object
  :slots ())

(setf (get gateway_msgs::RemoteGatewayInfo :md5sum-) "21b6c2a53d6cebe0c03f90dd0c85b58d")
(setf (get gateway_msgs::RemoteGatewayInfo :datatype-) "gateway_msgs/RemoteGatewayInfo")
(setf (get gateway_msgs::RemoteGatewayInfo :request) gateway_msgs::RemoteGatewayInfoRequest)
(setf (get gateway_msgs::RemoteGatewayInfo :response) gateway_msgs::RemoteGatewayInfoResponse)

(defmethod gateway_msgs::RemoteGatewayInfoRequest
  (:response () (instance gateway_msgs::RemoteGatewayInfoResponse :init)))

(setf (get gateway_msgs::RemoteGatewayInfoRequest :md5sum-) "21b6c2a53d6cebe0c03f90dd0c85b58d")
(setf (get gateway_msgs::RemoteGatewayInfoRequest :datatype-) "gateway_msgs/RemoteGatewayInfoRequest")
(setf (get gateway_msgs::RemoteGatewayInfoRequest :definition-)
      "

string[] gateways
---
RemoteGateway[] gateways


================================================================================
MSG: gateway_msgs/RemoteGateway
###### Gateway information ######
string name
string ip
#TODO blocking status
bool firewall

# Remote Gateway Statistics

# Constants
int8 WIRED = 1
int8 WIRELESS = 2

#Connection Statistics
ConnectionStatistics conn_stats

###### Public Interface ######

Rule[] public_interface

###### Flipped Interface ######

# Flipped and pulled interfaces would be useful for debugging 
#    https://github.com/robotics-in-concert/rocon_multimaster/issues/84

RemoteRule[] flipped_interface
RemoteRule[] pulled_interface

###### Foreign Interface ######

# Q) Should we show these?
# A) Probably not, in the overall scheme of things, 
#    it doubles up the information from above

# RemoteRule[] flipped_in_connections
# RemoteRule[] pulled_connections

================================================================================
MSG: gateway_msgs/ConnectionStatistics
# Constants
int8 WIRED = 1
int8 WIRELESS = 2
int32 MAX_TTL = 86400

# Gateway ping indicators
bool gateway_available
int64 time_since_last_seen #time in seconds since last ping successful
float32 ping_latency_min
float32 ping_latency_max
float32 ping_latency_avg
float32 ping_latency_mdev #mean absolute deviation

# Gateway network information indicators
bool network_info_available
int8 network_type
float32 wireless_bitrate
int8 wireless_link_quality
float32 wireless_signal_level
float32 wireless_noise_level



================================================================================
MSG: gateway_msgs/Rule
# Standard gateway connection rule

# type of connection (from gateway_msgs.msg.Connection)
string type

# this is the topic/service name or the action base name (a regex is supported)
string name 

# (optional) an optional node name can be provided. if node name is not provided
# then all nodes are matched (also supports regex)
string node

================================================================================
MSG: gateway_msgs/RemoteRule
# Definition for a flip. It represents either:
#
# 1) an existing flipped connection (from the local gateway)
# 2) a rule that is put on a watchlist

# The target recipient of the flip
string gateway

# Connection has the following parameters that need setting
# - name : fully qualified name of the connection (str)
# - type : connection type (str)
#  
# Use one of the types defined in Connection string constants:
#     (publisher, subscriber, service, action_client, action_server)
#
# - node : name of the node it originates from (str)(optional)
#
# Node name is necessary, for instance, if you have multiple subscribers
# publishing to a single topic. Most of the time it is not necessary,
# but in some cases it helps refine the rule. It helps refine the rule.
#
Rule rule
")

(setf (get gateway_msgs::RemoteGatewayInfoResponse :md5sum-) "21b6c2a53d6cebe0c03f90dd0c85b58d")
(setf (get gateway_msgs::RemoteGatewayInfoResponse :datatype-) "gateway_msgs/RemoteGatewayInfoResponse")
(setf (get gateway_msgs::RemoteGatewayInfoResponse :definition-)
      "

string[] gateways
---
RemoteGateway[] gateways


================================================================================
MSG: gateway_msgs/RemoteGateway
###### Gateway information ######
string name
string ip
#TODO blocking status
bool firewall

# Remote Gateway Statistics

# Constants
int8 WIRED = 1
int8 WIRELESS = 2

#Connection Statistics
ConnectionStatistics conn_stats

###### Public Interface ######

Rule[] public_interface

###### Flipped Interface ######

# Flipped and pulled interfaces would be useful for debugging 
#    https://github.com/robotics-in-concert/rocon_multimaster/issues/84

RemoteRule[] flipped_interface
RemoteRule[] pulled_interface

###### Foreign Interface ######

# Q) Should we show these?
# A) Probably not, in the overall scheme of things, 
#    it doubles up the information from above

# RemoteRule[] flipped_in_connections
# RemoteRule[] pulled_connections

================================================================================
MSG: gateway_msgs/ConnectionStatistics
# Constants
int8 WIRED = 1
int8 WIRELESS = 2
int32 MAX_TTL = 86400

# Gateway ping indicators
bool gateway_available
int64 time_since_last_seen #time in seconds since last ping successful
float32 ping_latency_min
float32 ping_latency_max
float32 ping_latency_avg
float32 ping_latency_mdev #mean absolute deviation

# Gateway network information indicators
bool network_info_available
int8 network_type
float32 wireless_bitrate
int8 wireless_link_quality
float32 wireless_signal_level
float32 wireless_noise_level



================================================================================
MSG: gateway_msgs/Rule
# Standard gateway connection rule

# type of connection (from gateway_msgs.msg.Connection)
string type

# this is the topic/service name or the action base name (a regex is supported)
string name 

# (optional) an optional node name can be provided. if node name is not provided
# then all nodes are matched (also supports regex)
string node

================================================================================
MSG: gateway_msgs/RemoteRule
# Definition for a flip. It represents either:
#
# 1) an existing flipped connection (from the local gateway)
# 2) a rule that is put on a watchlist

# The target recipient of the flip
string gateway

# Connection has the following parameters that need setting
# - name : fully qualified name of the connection (str)
# - type : connection type (str)
#  
# Use one of the types defined in Connection string constants:
#     (publisher, subscriber, service, action_client, action_server)
#
# - node : name of the node it originates from (str)(optional)
#
# Node name is necessary, for instance, if you have multiple subscribers
# publishing to a single topic. Most of the time it is not necessary,
# but in some cases it helps refine the rule. It helps refine the rule.
#
Rule rule
")



(provide :gateway_msgs/RemoteGatewayInfo "21b6c2a53d6cebe0c03f90dd0c85b58d")


