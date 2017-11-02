;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::ConductorGraph)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'ConductorGraph (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::CONDUCTORGRAPH")
  (make-package "CONCERT_MSGS::CONDUCTORGRAPH"))

(in-package "ROS")
;;//! \htmlinclude ConductorGraph.msg.html


(defclass concert_msgs::ConductorGraph
  :super ros::object
  :slots (_pending _available _missing _gone ))

(defmethod concert_msgs::ConductorGraph
  (:init
   (&key
    ((:pending __pending) (let (r) (dotimes (i 0) (push (instance concert_msgs::ConcertClient :init) r)) r))
    ((:available __available) (let (r) (dotimes (i 0) (push (instance concert_msgs::ConcertClient :init) r)) r))
    ((:missing __missing) (let (r) (dotimes (i 0) (push (instance concert_msgs::ConcertClient :init) r)) r))
    ((:gone __gone) (let (r) (dotimes (i 0) (push (instance concert_msgs::ConcertClient :init) r)) r))
    )
   (send-super :init)
   (setq _pending __pending)
   (setq _available __available)
   (setq _missing __missing)
   (setq _gone __gone)
   self)
  (:pending
   (&rest __pending)
   (if (keywordp (car __pending))
       (send* _pending __pending)
     (progn
       (if __pending (setq _pending (car __pending)))
       _pending)))
  (:available
   (&rest __available)
   (if (keywordp (car __available))
       (send* _available __available)
     (progn
       (if __available (setq _available (car __available)))
       _available)))
  (:missing
   (&rest __missing)
   (if (keywordp (car __missing))
       (send* _missing __missing)
     (progn
       (if __missing (setq _missing (car __missing)))
       _missing)))
  (:gone
   (&rest __gone)
   (if (keywordp (car __gone))
       (send* _gone __gone)
     (progn
       (if __gone (setq _gone (car __gone)))
       _gone)))
  (:serialization-length
   ()
   (+
    ;; concert_msgs/ConcertClient[] _pending
    (apply #'+ (send-all _pending :serialization-length)) 4
    ;; concert_msgs/ConcertClient[] _available
    (apply #'+ (send-all _available :serialization-length)) 4
    ;; concert_msgs/ConcertClient[] _missing
    (apply #'+ (send-all _missing :serialization-length)) 4
    ;; concert_msgs/ConcertClient[] _gone
    (apply #'+ (send-all _gone :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; concert_msgs/ConcertClient[] _pending
     (write-long (length _pending) s)
     (dolist (elem _pending)
       (send elem :serialize s)
       )
     ;; concert_msgs/ConcertClient[] _available
     (write-long (length _available) s)
     (dolist (elem _available)
       (send elem :serialize s)
       )
     ;; concert_msgs/ConcertClient[] _missing
     (write-long (length _missing) s)
     (dolist (elem _missing)
       (send elem :serialize s)
       )
     ;; concert_msgs/ConcertClient[] _gone
     (write-long (length _gone) s)
     (dolist (elem _gone)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; concert_msgs/ConcertClient[] _pending
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pending (let (r) (dotimes (i n) (push (instance concert_msgs::ConcertClient :init) r)) r))
     (dolist (elem- _pending)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; concert_msgs/ConcertClient[] _available
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available (let (r) (dotimes (i n) (push (instance concert_msgs::ConcertClient :init) r)) r))
     (dolist (elem- _available)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; concert_msgs/ConcertClient[] _missing
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _missing (let (r) (dotimes (i n) (push (instance concert_msgs::ConcertClient :init) r)) r))
     (dolist (elem- _missing)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; concert_msgs/ConcertClient[] _gone
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gone (let (r) (dotimes (i n) (push (instance concert_msgs::ConcertClient :init) r)) r))
     (dolist (elem- _gone)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get concert_msgs::ConductorGraph :md5sum-) "79f1f3ca0d6e8e424874455f4beb1056")
(setf (get concert_msgs::ConductorGraph :datatype-) "concert_msgs/ConductorGraph")
(setf (get concert_msgs::ConductorGraph :definition-)
      "# 
# Provide the conductor graph of all concert clients according to their current state (see
# ConcertClientState.msg for a list of states and always sync with that!).
# Compared to the regular ConcertClients topic, this includes
# all those not in use by this concert, which is useful for introspection and debugging.
#
# It will typically show up in /concert/conductor/graph. Do not use this topic for
# runtime handling (use only for introspection) as it will consume cycles. If no-one is
# listening, this topic is lazy.  
#
concert_msgs/ConcertClient[] pending
concert_msgs/ConcertClient[] available
concert_msgs/ConcertClient[] missing
concert_msgs/ConcertClient[] gone

================================================================================
MSG: concert_msgs/ConcertClient

# The concert alias
string name

# The unfriendly gateway name with the uuid suffix.
string gateway_name

# Platform information about the concert client.
rocon_std_msgs/MasterInfo platform_info

# Is on the same machine ip as the conductor
bool is_local_client

# State of the concert client, see ConcertClientState.msg for string constants
# PENDING, BUSY, BLOCKING, BAD, JOINING, UNINVITED, AVAILABLE, MISSING, GONE 
string state

# Statistics
string ip
gateway_msgs/ConnectionStatistics conn_stats
# time last_connection_timestamp

rocon_app_manager_msgs/Rapp[] rapps

================================================================================
MSG: rocon_std_msgs/MasterInfo
# Publish basic information about this master.

string name
string rocon_uri
string description
rocon_std_msgs/Icon icon
string version
================================================================================
MSG: rocon_std_msgs/Icon
# Used to idenfity the original package/filename resource this icon was/is to be loaded from
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
string resource_name

# Image data format.  \"jpeg\" or \"png\"
string format

# Image data.
uint8[] data
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
MSG: rocon_app_manager_msgs/Rapp
# This is the message that gets published in list_rapps. Do not think of it as the
# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)
# Rather it is the published list of rapps with the required information for the concert
# and some introspection.

# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)
string name
# user-friendly display name
string display_name
string description
# a rocon uri string indicating platform compatibility
string compatibility
string status

# a list of implementations
string[] implementations

# A preferred rapp for virtual rapp
string preferred

# icon for showing the app
rocon_std_msgs/Icon icon

# public interface and parameters
rocon_std_msgs/KeyValue[] public_interface
rocon_std_msgs/KeyValue[] public_parameters

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
")



(provide :concert_msgs/ConductorGraph "79f1f3ca0d6e8e424874455f4beb1056")


