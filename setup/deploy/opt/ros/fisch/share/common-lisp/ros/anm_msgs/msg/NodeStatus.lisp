; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude NodeStatus.msg.html

(cl:defclass <NodeStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (node_status
    :reader node_status
    :initarg :node_status
    :type cl:fixnum
    :initform 0)
   (node_name
    :reader node_name
    :initarg :node_name
    :type cl:string
    :initform ""))
)

(cl:defclass NodeStatus (<NodeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<NodeStatus> is deprecated: use anm_msgs-msg:NodeStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'node_status-val :lambda-list '(m))
(cl:defmethod node_status-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:node_status-val is deprecated.  Use anm_msgs-msg:node_status instead.")
  (node_status m))

(cl:ensure-generic-function 'node_name-val :lambda-list '(m))
(cl:defmethod node_name-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:node_name-val is deprecated.  Use anm_msgs-msg:node_name instead.")
  (node_name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NodeStatus>)))
    "Constants for message type '<NodeStatus>"
  '((:FAILED . 0)
    (:INACTIVE . 1)
    (:ACTIVE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NodeStatus)))
    "Constants for message type 'NodeStatus"
  '((:FAILED . 0)
    (:INACTIVE . 1)
    (:ACTIVE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeStatus>) ostream)
  "Serializes a message object of type '<NodeStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeStatus>) istream)
  "Deserializes a message object of type '<NodeStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeStatus>)))
  "Returns string type for a message object of type '<NodeStatus>"
  "anm_msgs/NodeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeStatus)))
  "Returns string type for a message object of type 'NodeStatus"
  "anm_msgs/NodeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeStatus>)))
  "Returns md5sum for a message object of type '<NodeStatus>"
  "dec5de5121114fa9908b5fe8fcefd1d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeStatus)))
  "Returns md5sum for a message object of type 'NodeStatus"
  "dec5de5121114fa9908b5fe8fcefd1d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeStatus>)))
  "Returns full string definition for message of type '<NodeStatus>"
  (cl:format cl:nil "# This message contains the reported status/health of the publishing nodelet~%#~%# The status modes are:~%#  * Failed~%#  * Inactive~%#  * Active~%~%# The following constants are used to define the status~%uint8 FAILED = 0~%uint8 INACTIVE = 1~%uint8 ACTIVE = 2~%~%# Message data~%Header header~%uint8 node_status       # Status of node~%string node_name        # Name of reporting node~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeStatus)))
  "Returns full string definition for message of type 'NodeStatus"
  (cl:format cl:nil "# This message contains the reported status/health of the publishing nodelet~%#~%# The status modes are:~%#  * Failed~%#  * Inactive~%#  * Active~%~%# The following constants are used to define the status~%uint8 FAILED = 0~%uint8 INACTIVE = 1~%uint8 ACTIVE = 2~%~%# Message data~%Header header~%uint8 node_status       # Status of node~%string node_name        # Name of reporting node~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'node_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeStatus
    (cl:cons ':header (header msg))
    (cl:cons ':node_status (node_status msg))
    (cl:cons ':node_name (node_name msg))
))
