; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude HMIReport.msg.html

(cl:defclass <HMIReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (request
    :reader request
    :initarg :request
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HMIReport (<HMIReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<HMIReport> is deprecated: use anm_msgs-msg:HMIReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <HMIReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:request-val is deprecated.  Use anm_msgs-msg:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HMIReport>)))
    "Constants for message type '<HMIReport>"
  '((:HMI_REQ_MANUAL . 0)
    (:HMI_REQ_STOP_AND_PARK . 1)
    (:HMI_REQ_FIND_PARKING . 2)
    (:HMI_REQ_DRIVE_ROUTE . 3)
    (:HMI_REQ_DRIVE_PLATOONING . 4)
    (:HMI_REQ_SIMULATE_FAIL_STACK . 101)
    (:HMI_REQ_FORCE_EMERGENCY_NAV . 102)
    (:HMI_REQ_FORCE_EMERGENCY_PULLOVER . 103)
    (:HMI_REQ_INVALID . 126)
    (:HMI_REQ_NONE . 127))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HMIReport)))
    "Constants for message type 'HMIReport"
  '((:HMI_REQ_MANUAL . 0)
    (:HMI_REQ_STOP_AND_PARK . 1)
    (:HMI_REQ_FIND_PARKING . 2)
    (:HMI_REQ_DRIVE_ROUTE . 3)
    (:HMI_REQ_DRIVE_PLATOONING . 4)
    (:HMI_REQ_SIMULATE_FAIL_STACK . 101)
    (:HMI_REQ_FORCE_EMERGENCY_NAV . 102)
    (:HMI_REQ_FORCE_EMERGENCY_PULLOVER . 103)
    (:HMI_REQ_INVALID . 126)
    (:HMI_REQ_NONE . 127))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIReport>) ostream)
  "Serializes a message object of type '<HMIReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIReport>) istream)
  "Deserializes a message object of type '<HMIReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIReport>)))
  "Returns string type for a message object of type '<HMIReport>"
  "anm_msgs/HMIReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIReport)))
  "Returns string type for a message object of type 'HMIReport"
  "anm_msgs/HMIReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIReport>)))
  "Returns md5sum for a message object of type '<HMIReport>"
  "b9053208a0924d8bbe1073b5b6cbebfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIReport)))
  "Returns md5sum for a message object of type 'HMIReport"
  "b9053208a0924d8bbe1073b5b6cbebfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIReport>)))
  "Returns full string definition for message of type '<HMIReport>"
  (cl:format cl:nil "# This message indicates the requests from the HMI~%~%# Defined modes:~%uint8 HMI_REQ_MANUAL = 0~%uint8 HMI_REQ_STOP_AND_PARK = 1~%uint8 HMI_REQ_FIND_PARKING = 2~%uint8 HMI_REQ_DRIVE_ROUTE = 3~%uint8 HMI_REQ_DRIVE_PLATOONING = 4~%uint8 HMI_REQ_SIMULATE_FAIL_STACK = 101~%uint8 HMI_REQ_FORCE_EMERGENCY_NAV = 102~%uint8 HMI_REQ_FORCE_EMERGENCY_PULLOVER = 103~%uint8 HMI_REQ_INVALID = 126~%uint8 HMI_REQ_NONE = 127~%~%# Message definition~%Header header~%uint8 request~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIReport)))
  "Returns full string definition for message of type 'HMIReport"
  (cl:format cl:nil "# This message indicates the requests from the HMI~%~%# Defined modes:~%uint8 HMI_REQ_MANUAL = 0~%uint8 HMI_REQ_STOP_AND_PARK = 1~%uint8 HMI_REQ_FIND_PARKING = 2~%uint8 HMI_REQ_DRIVE_ROUTE = 3~%uint8 HMI_REQ_DRIVE_PLATOONING = 4~%uint8 HMI_REQ_SIMULATE_FAIL_STACK = 101~%uint8 HMI_REQ_FORCE_EMERGENCY_NAV = 102~%uint8 HMI_REQ_FORCE_EMERGENCY_PULLOVER = 103~%uint8 HMI_REQ_INVALID = 126~%uint8 HMI_REQ_NONE = 127~%~%# Message definition~%Header header~%uint8 request~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIReport>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIReport
    (cl:cons ':header (header msg))
    (cl:cons ':request (request msg))
))
