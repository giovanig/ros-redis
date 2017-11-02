; Auto-generated. Do not edit!


(cl:in-package concert_msgs-msg)


;//! \htmlinclude ConductorGraph.msg.html

(cl:defclass <ConductorGraph> (roslisp-msg-protocol:ros-message)
  ((pending
    :reader pending
    :initarg :pending
    :type (cl:vector concert_msgs-msg:ConcertClient)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:ConcertClient :initial-element (cl:make-instance 'concert_msgs-msg:ConcertClient)))
   (available
    :reader available
    :initarg :available
    :type (cl:vector concert_msgs-msg:ConcertClient)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:ConcertClient :initial-element (cl:make-instance 'concert_msgs-msg:ConcertClient)))
   (missing
    :reader missing
    :initarg :missing
    :type (cl:vector concert_msgs-msg:ConcertClient)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:ConcertClient :initial-element (cl:make-instance 'concert_msgs-msg:ConcertClient)))
   (gone
    :reader gone
    :initarg :gone
    :type (cl:vector concert_msgs-msg:ConcertClient)
   :initform (cl:make-array 0 :element-type 'concert_msgs-msg:ConcertClient :initial-element (cl:make-instance 'concert_msgs-msg:ConcertClient))))
)

(cl:defclass ConductorGraph (<ConductorGraph>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConductorGraph>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConductorGraph)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concert_msgs-msg:<ConductorGraph> is deprecated: use concert_msgs-msg:ConductorGraph instead.")))

(cl:ensure-generic-function 'pending-val :lambda-list '(m))
(cl:defmethod pending-val ((m <ConductorGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:pending-val is deprecated.  Use concert_msgs-msg:pending instead.")
  (pending m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ConductorGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:available-val is deprecated.  Use concert_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'missing-val :lambda-list '(m))
(cl:defmethod missing-val ((m <ConductorGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:missing-val is deprecated.  Use concert_msgs-msg:missing instead.")
  (missing m))

(cl:ensure-generic-function 'gone-val :lambda-list '(m))
(cl:defmethod gone-val ((m <ConductorGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concert_msgs-msg:gone-val is deprecated.  Use concert_msgs-msg:gone instead.")
  (gone m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConductorGraph>) ostream)
  "Serializes a message object of type '<ConductorGraph>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pending))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pending))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'available))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'missing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'missing))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gone))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gone))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConductorGraph>) istream)
  "Deserializes a message object of type '<ConductorGraph>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pending) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pending)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:ConcertClient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'available) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:ConcertClient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'missing) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'missing)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:ConcertClient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gone) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gone)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'concert_msgs-msg:ConcertClient))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConductorGraph>)))
  "Returns string type for a message object of type '<ConductorGraph>"
  "concert_msgs/ConductorGraph")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConductorGraph)))
  "Returns string type for a message object of type 'ConductorGraph"
  "concert_msgs/ConductorGraph")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConductorGraph>)))
  "Returns md5sum for a message object of type '<ConductorGraph>"
  "79f1f3ca0d6e8e424874455f4beb1056")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConductorGraph)))
  "Returns md5sum for a message object of type 'ConductorGraph"
  "79f1f3ca0d6e8e424874455f4beb1056")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConductorGraph>)))
  "Returns full string definition for message of type '<ConductorGraph>"
  (cl:format cl:nil "# ~%# Provide the conductor graph of all concert clients according to their current state (see~%# ConcertClientState.msg for a list of states and always sync with that!).~%# Compared to the regular ConcertClients topic, this includes~%# all those not in use by this concert, which is useful for introspection and debugging.~%#~%# It will typically show up in /concert/conductor/graph. Do not use this topic for~%# runtime handling (use only for introspection) as it will consume cycles. If no-one is~%# listening, this topic is lazy.  ~%#~%concert_msgs/ConcertClient[] pending~%concert_msgs/ConcertClient[] available~%concert_msgs/ConcertClient[] missing~%concert_msgs/ConcertClient[] gone~%~%================================================================================~%MSG: concert_msgs/ConcertClient~%~%# The concert alias~%string name~%~%# The unfriendly gateway name with the uuid suffix.~%string gateway_name~%~%# Platform information about the concert client.~%rocon_std_msgs/MasterInfo platform_info~%~%# Is on the same machine ip as the conductor~%bool is_local_client~%~%# State of the concert client, see ConcertClientState.msg for string constants~%# PENDING, BUSY, BLOCKING, BAD, JOINING, UNINVITED, AVAILABLE, MISSING, GONE ~%string state~%~%# Statistics~%string ip~%gateway_msgs/ConnectionStatistics conn_stats~%# time last_connection_timestamp~%~%rocon_app_manager_msgs/Rapp[] rapps~%~%================================================================================~%MSG: rocon_std_msgs/MasterInfo~%# Publish basic information about this master.~%~%string name~%string rocon_uri~%string description~%rocon_std_msgs/Icon icon~%string version~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: gateway_msgs/ConnectionStatistics~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%================================================================================~%MSG: rocon_app_manager_msgs/Rapp~%# This is the message that gets published in list_rapps. Do not think of it as the~%# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)~%# Rather it is the published list of rapps with the required information for the concert~%# and some introspection.~%~%# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)~%string name~%# user-friendly display name~%string display_name~%string description~%# a rocon uri string indicating platform compatibility~%string compatibility~%string status~%~%# a list of implementations~%string[] implementations~%~%# A preferred rapp for virtual rapp~%string preferred~%~%# icon for showing the app~%rocon_std_msgs/Icon icon~%~%# public interface and parameters~%rocon_std_msgs/KeyValue[] public_interface~%rocon_std_msgs/KeyValue[] public_parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConductorGraph)))
  "Returns full string definition for message of type 'ConductorGraph"
  (cl:format cl:nil "# ~%# Provide the conductor graph of all concert clients according to their current state (see~%# ConcertClientState.msg for a list of states and always sync with that!).~%# Compared to the regular ConcertClients topic, this includes~%# all those not in use by this concert, which is useful for introspection and debugging.~%#~%# It will typically show up in /concert/conductor/graph. Do not use this topic for~%# runtime handling (use only for introspection) as it will consume cycles. If no-one is~%# listening, this topic is lazy.  ~%#~%concert_msgs/ConcertClient[] pending~%concert_msgs/ConcertClient[] available~%concert_msgs/ConcertClient[] missing~%concert_msgs/ConcertClient[] gone~%~%================================================================================~%MSG: concert_msgs/ConcertClient~%~%# The concert alias~%string name~%~%# The unfriendly gateway name with the uuid suffix.~%string gateway_name~%~%# Platform information about the concert client.~%rocon_std_msgs/MasterInfo platform_info~%~%# Is on the same machine ip as the conductor~%bool is_local_client~%~%# State of the concert client, see ConcertClientState.msg for string constants~%# PENDING, BUSY, BLOCKING, BAD, JOINING, UNINVITED, AVAILABLE, MISSING, GONE ~%string state~%~%# Statistics~%string ip~%gateway_msgs/ConnectionStatistics conn_stats~%# time last_connection_timestamp~%~%rocon_app_manager_msgs/Rapp[] rapps~%~%================================================================================~%MSG: rocon_std_msgs/MasterInfo~%# Publish basic information about this master.~%~%string name~%string rocon_uri~%string description~%rocon_std_msgs/Icon icon~%string version~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: gateway_msgs/ConnectionStatistics~%# Constants~%int8 WIRED = 1~%int8 WIRELESS = 2~%int32 MAX_TTL = 86400~%~%# Gateway ping indicators~%bool gateway_available~%int64 time_since_last_seen #time in seconds since last ping successful~%float32 ping_latency_min~%float32 ping_latency_max~%float32 ping_latency_avg~%float32 ping_latency_mdev #mean absolute deviation~%~%# Gateway network information indicators~%bool network_info_available~%int8 network_type~%float32 wireless_bitrate~%int8 wireless_link_quality~%float32 wireless_signal_level~%float32 wireless_noise_level~%~%~%~%================================================================================~%MSG: rocon_app_manager_msgs/Rapp~%# This is the message that gets published in list_rapps. Do not think of it as the~%# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)~%# Rather it is the published list of rapps with the required information for the concert~%# and some introspection.~%~%# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)~%string name~%# user-friendly display name~%string display_name~%string description~%# a rocon uri string indicating platform compatibility~%string compatibility~%string status~%~%# a list of implementations~%string[] implementations~%~%# A preferred rapp for virtual rapp~%string preferred~%~%# icon for showing the app~%rocon_std_msgs/Icon icon~%~%# public interface and parameters~%rocon_std_msgs/KeyValue[] public_interface~%rocon_std_msgs/KeyValue[] public_parameters~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConductorGraph>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pending) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'missing) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gone) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConductorGraph>))
  "Converts a ROS message object to a list"
  (cl:list 'ConductorGraph
    (cl:cons ':pending (pending msg))
    (cl:cons ':available (available msg))
    (cl:cons ':missing (missing msg))
    (cl:cons ':gone (gone msg))
))
