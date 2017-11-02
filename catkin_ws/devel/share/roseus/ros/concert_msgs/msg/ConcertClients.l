;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::ConcertClients)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'ConcertClients (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::CONCERTCLIENTS")
  (make-package "CONCERT_MSGS::CONCERTCLIENTS"))

(in-package "ROS")
;;//! \htmlinclude ConcertClients.msg.html


(defclass concert_msgs::ConcertClients
  :super ros::object
  :slots (_clients _missing_clients _pending_clients ))

(defmethod concert_msgs::ConcertClients
  (:init
   (&key
    ((:clients __clients) (let (r) (dotimes (i 0) (push (instance concert_msgs::ConcertClient :init) r)) r))
    ((:missing_clients __missing_clients) (let (r) (dotimes (i 0) (push (instance concert_msgs::ConcertClient :init) r)) r))
    ((:pending_clients __pending_clients) (let (r) (dotimes (i 0) (push (instance concert_msgs::ConcertClient :init) r)) r))
    )
   (send-super :init)
   (setq _clients __clients)
   (setq _missing_clients __missing_clients)
   (setq _pending_clients __pending_clients)
   self)
  (:clients
   (&rest __clients)
   (if (keywordp (car __clients))
       (send* _clients __clients)
     (progn
       (if __clients (setq _clients (car __clients)))
       _clients)))
  (:missing_clients
   (&rest __missing_clients)
   (if (keywordp (car __missing_clients))
       (send* _missing_clients __missing_clients)
     (progn
       (if __missing_clients (setq _missing_clients (car __missing_clients)))
       _missing_clients)))
  (:pending_clients
   (&rest __pending_clients)
   (if (keywordp (car __pending_clients))
       (send* _pending_clients __pending_clients)
     (progn
       (if __pending_clients (setq _pending_clients (car __pending_clients)))
       _pending_clients)))
  (:serialization-length
   ()
   (+
    ;; concert_msgs/ConcertClient[] _clients
    (apply #'+ (send-all _clients :serialization-length)) 4
    ;; concert_msgs/ConcertClient[] _missing_clients
    (apply #'+ (send-all _missing_clients :serialization-length)) 4
    ;; concert_msgs/ConcertClient[] _pending_clients
    (apply #'+ (send-all _pending_clients :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; concert_msgs/ConcertClient[] _clients
     (write-long (length _clients) s)
     (dolist (elem _clients)
       (send elem :serialize s)
       )
     ;; concert_msgs/ConcertClient[] _missing_clients
     (write-long (length _missing_clients) s)
     (dolist (elem _missing_clients)
       (send elem :serialize s)
       )
     ;; concert_msgs/ConcertClient[] _pending_clients
     (write-long (length _pending_clients) s)
     (dolist (elem _pending_clients)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; concert_msgs/ConcertClient[] _clients
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clients (let (r) (dotimes (i n) (push (instance concert_msgs::ConcertClient :init) r)) r))
     (dolist (elem- _clients)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; concert_msgs/ConcertClient[] _missing_clients
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _missing_clients (let (r) (dotimes (i n) (push (instance concert_msgs::ConcertClient :init) r)) r))
     (dolist (elem- _missing_clients)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; concert_msgs/ConcertClient[] _pending_clients
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pending_clients (let (r) (dotimes (i n) (push (instance concert_msgs::ConcertClient :init) r)) r))
     (dolist (elem- _pending_clients)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get concert_msgs::ConcertClients :md5sum-) "6950d7da025bef00c62c809b8487d74f")
(setf (get concert_msgs::ConcertClients :datatype-) "concert_msgs/ConcertClients")
(setf (get concert_msgs::ConcertClients :definition-)
      "
# Clients that have been invited to this concert and can be used
concert_msgs/ConcertClient[] clients

# Clients that have disappeared from the gateway network without formally leaving. 
# Usually this will mean they have dropped off the wireless
concert_msgs/ConcertClient[] missing_clients

# Clients that are on the gateway network, but haven't been invited by this concert yet
# We do not have any implementation that can invite except by a conductor's auto_invite yet.
concert_msgs/ConcertClient[] pending_clients

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



(provide :concert_msgs/ConcertClients "6950d7da025bef00c62c809b8487d74f")


