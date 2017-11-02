;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::RemoteGateway)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'RemoteGateway (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::REMOTEGATEWAY")
  (make-package "GATEWAY_MSGS::REMOTEGATEWAY"))

(in-package "ROS")
;;//! \htmlinclude RemoteGateway.msg.html


(intern "*WIRED*" (find-package "GATEWAY_MSGS::REMOTEGATEWAY"))
(shadow '*WIRED* (find-package "GATEWAY_MSGS::REMOTEGATEWAY"))
(defconstant gateway_msgs::RemoteGateway::*WIRED* 1)
(intern "*WIRELESS*" (find-package "GATEWAY_MSGS::REMOTEGATEWAY"))
(shadow '*WIRELESS* (find-package "GATEWAY_MSGS::REMOTEGATEWAY"))
(defconstant gateway_msgs::RemoteGateway::*WIRELESS* 2)
(defclass gateway_msgs::RemoteGateway
  :super ros::object
  :slots (_name _ip _firewall _conn_stats _public_interface _flipped_interface _pulled_interface ))

(defmethod gateway_msgs::RemoteGateway
  (:init
   (&key
    ((:name __name) "")
    ((:ip __ip) "")
    ((:firewall __firewall) nil)
    ((:conn_stats __conn_stats) (instance gateway_msgs::ConnectionStatistics :init))
    ((:public_interface __public_interface) (let (r) (dotimes (i 0) (push (instance gateway_msgs::Rule :init) r)) r))
    ((:flipped_interface __flipped_interface) (let (r) (dotimes (i 0) (push (instance gateway_msgs::RemoteRule :init) r)) r))
    ((:pulled_interface __pulled_interface) (let (r) (dotimes (i 0) (push (instance gateway_msgs::RemoteRule :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _ip (string __ip))
   (setq _firewall __firewall)
   (setq _conn_stats __conn_stats)
   (setq _public_interface __public_interface)
   (setq _flipped_interface __flipped_interface)
   (setq _pulled_interface __pulled_interface)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:firewall
   (&optional __firewall)
   (if __firewall (setq _firewall __firewall)) _firewall)
  (:conn_stats
   (&rest __conn_stats)
   (if (keywordp (car __conn_stats))
       (send* _conn_stats __conn_stats)
     (progn
       (if __conn_stats (setq _conn_stats (car __conn_stats)))
       _conn_stats)))
  (:public_interface
   (&rest __public_interface)
   (if (keywordp (car __public_interface))
       (send* _public_interface __public_interface)
     (progn
       (if __public_interface (setq _public_interface (car __public_interface)))
       _public_interface)))
  (:flipped_interface
   (&rest __flipped_interface)
   (if (keywordp (car __flipped_interface))
       (send* _flipped_interface __flipped_interface)
     (progn
       (if __flipped_interface (setq _flipped_interface (car __flipped_interface)))
       _flipped_interface)))
  (:pulled_interface
   (&rest __pulled_interface)
   (if (keywordp (car __pulled_interface))
       (send* _pulled_interface __pulled_interface)
     (progn
       (if __pulled_interface (setq _pulled_interface (car __pulled_interface)))
       _pulled_interface)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _ip
    4 (length _ip)
    ;; bool _firewall
    1
    ;; gateway_msgs/ConnectionStatistics _conn_stats
    (send _conn_stats :serialization-length)
    ;; gateway_msgs/Rule[] _public_interface
    (apply #'+ (send-all _public_interface :serialization-length)) 4
    ;; gateway_msgs/RemoteRule[] _flipped_interface
    (apply #'+ (send-all _flipped_interface :serialization-length)) 4
    ;; gateway_msgs/RemoteRule[] _pulled_interface
    (apply #'+ (send-all _pulled_interface :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; bool _firewall
       (if _firewall (write-byte -1 s) (write-byte 0 s))
     ;; gateway_msgs/ConnectionStatistics _conn_stats
       (send _conn_stats :serialize s)
     ;; gateway_msgs/Rule[] _public_interface
     (write-long (length _public_interface) s)
     (dolist (elem _public_interface)
       (send elem :serialize s)
       )
     ;; gateway_msgs/RemoteRule[] _flipped_interface
     (write-long (length _flipped_interface) s)
     (dolist (elem _flipped_interface)
       (send elem :serialize s)
       )
     ;; gateway_msgs/RemoteRule[] _pulled_interface
     (write-long (length _pulled_interface) s)
     (dolist (elem _pulled_interface)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _firewall
     (setq _firewall (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; gateway_msgs/ConnectionStatistics _conn_stats
     (send _conn_stats :deserialize buf ptr-) (incf ptr- (send _conn_stats :serialization-length))
   ;; gateway_msgs/Rule[] _public_interface
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _public_interface (let (r) (dotimes (i n) (push (instance gateway_msgs::Rule :init) r)) r))
     (dolist (elem- _public_interface)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; gateway_msgs/RemoteRule[] _flipped_interface
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flipped_interface (let (r) (dotimes (i n) (push (instance gateway_msgs::RemoteRule :init) r)) r))
     (dolist (elem- _flipped_interface)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; gateway_msgs/RemoteRule[] _pulled_interface
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pulled_interface (let (r) (dotimes (i n) (push (instance gateway_msgs::RemoteRule :init) r)) r))
     (dolist (elem- _pulled_interface)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gateway_msgs::RemoteGateway :md5sum-) "58607c66cd963e494a28cb3f919087f2")
(setf (get gateway_msgs::RemoteGateway :datatype-) "gateway_msgs/RemoteGateway")
(setf (get gateway_msgs::RemoteGateway :definition-)
      "###### Gateway information ######
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



(provide :gateway_msgs/RemoteGateway "58607c66cd963e494a28cb3f919087f2")


