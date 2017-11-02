;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::ConcertClient)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'ConcertClient (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::CONCERTCLIENT")
  (make-package "CONCERT_MSGS::CONCERTCLIENT"))

(in-package "ROS")
;;//! \htmlinclude ConcertClient.msg.html
(if (not (find-package "GATEWAY_MSGS"))
  (ros::roseus-add-msgs "gateway_msgs"))
(if (not (find-package "ROCON_APP_MANAGER_MSGS"))
  (ros::roseus-add-msgs "rocon_app_manager_msgs"))
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(defclass concert_msgs::ConcertClient
  :super ros::object
  :slots (_name _gateway_name _platform_info _is_local_client _state _ip _conn_stats _rapps ))

(defmethod concert_msgs::ConcertClient
  (:init
   (&key
    ((:name __name) "")
    ((:gateway_name __gateway_name) "")
    ((:platform_info __platform_info) (instance rocon_std_msgs::MasterInfo :init))
    ((:is_local_client __is_local_client) nil)
    ((:state __state) "")
    ((:ip __ip) "")
    ((:conn_stats __conn_stats) (instance gateway_msgs::ConnectionStatistics :init))
    ((:rapps __rapps) (let (r) (dotimes (i 0) (push (instance rocon_app_manager_msgs::Rapp :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _gateway_name (string __gateway_name))
   (setq _platform_info __platform_info)
   (setq _is_local_client __is_local_client)
   (setq _state (string __state))
   (setq _ip (string __ip))
   (setq _conn_stats __conn_stats)
   (setq _rapps __rapps)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:gateway_name
   (&optional __gateway_name)
   (if __gateway_name (setq _gateway_name __gateway_name)) _gateway_name)
  (:platform_info
   (&rest __platform_info)
   (if (keywordp (car __platform_info))
       (send* _platform_info __platform_info)
     (progn
       (if __platform_info (setq _platform_info (car __platform_info)))
       _platform_info)))
  (:is_local_client
   (&optional __is_local_client)
   (if __is_local_client (setq _is_local_client __is_local_client)) _is_local_client)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:conn_stats
   (&rest __conn_stats)
   (if (keywordp (car __conn_stats))
       (send* _conn_stats __conn_stats)
     (progn
       (if __conn_stats (setq _conn_stats (car __conn_stats)))
       _conn_stats)))
  (:rapps
   (&rest __rapps)
   (if (keywordp (car __rapps))
       (send* _rapps __rapps)
     (progn
       (if __rapps (setq _rapps (car __rapps)))
       _rapps)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _gateway_name
    4 (length _gateway_name)
    ;; rocon_std_msgs/MasterInfo _platform_info
    (send _platform_info :serialization-length)
    ;; bool _is_local_client
    1
    ;; string _state
    4 (length _state)
    ;; string _ip
    4 (length _ip)
    ;; gateway_msgs/ConnectionStatistics _conn_stats
    (send _conn_stats :serialization-length)
    ;; rocon_app_manager_msgs/Rapp[] _rapps
    (apply #'+ (send-all _rapps :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _gateway_name
       (write-long (length _gateway_name) s) (princ _gateway_name s)
     ;; rocon_std_msgs/MasterInfo _platform_info
       (send _platform_info :serialize s)
     ;; bool _is_local_client
       (if _is_local_client (write-byte -1 s) (write-byte 0 s))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; gateway_msgs/ConnectionStatistics _conn_stats
       (send _conn_stats :serialize s)
     ;; rocon_app_manager_msgs/Rapp[] _rapps
     (write-long (length _rapps) s)
     (dolist (elem _rapps)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gateway_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gateway_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_std_msgs/MasterInfo _platform_info
     (send _platform_info :deserialize buf ptr-) (incf ptr- (send _platform_info :serialization-length))
   ;; bool _is_local_client
     (setq _is_local_client (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; gateway_msgs/ConnectionStatistics _conn_stats
     (send _conn_stats :deserialize buf ptr-) (incf ptr- (send _conn_stats :serialization-length))
   ;; rocon_app_manager_msgs/Rapp[] _rapps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rapps (let (r) (dotimes (i n) (push (instance rocon_app_manager_msgs::Rapp :init) r)) r))
     (dolist (elem- _rapps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get concert_msgs::ConcertClient :md5sum-) "e86054949de7944800d67af80496ca28")
(setf (get concert_msgs::ConcertClient :datatype-) "concert_msgs/ConcertClient")
(setf (get concert_msgs::ConcertClient :definition-)
      "
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



(provide :concert_msgs/ConcertClient "e86054949de7944800d67af80496ca28")


