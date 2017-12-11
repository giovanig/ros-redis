; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude SystemHealthReport.msg.html

(cl:defclass <SystemHealthReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (system_summary
    :reader system_summary
    :initarg :system_summary
    :type (cl:vector anm_msgs-msg:DOMReport)
   :initform (cl:make-array 0 :element-type 'anm_msgs-msg:DOMReport :initial-element (cl:make-instance 'anm_msgs-msg:DOMReport))))
)

(cl:defclass SystemHealthReport (<SystemHealthReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemHealthReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemHealthReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<SystemHealthReport> is deprecated: use anm_msgs-msg:SystemHealthReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemHealthReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'system_summary-val :lambda-list '(m))
(cl:defmethod system_summary-val ((m <SystemHealthReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:system_summary-val is deprecated.  Use anm_msgs-msg:system_summary instead.")
  (system_summary m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemHealthReport>) ostream)
  "Serializes a message object of type '<SystemHealthReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'system_summary))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'system_summary))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemHealthReport>) istream)
  "Deserializes a message object of type '<SystemHealthReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'system_summary) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'system_summary)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'anm_msgs-msg:DOMReport))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemHealthReport>)))
  "Returns string type for a message object of type '<SystemHealthReport>"
  "anm_msgs/SystemHealthReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemHealthReport)))
  "Returns string type for a message object of type 'SystemHealthReport"
  "anm_msgs/SystemHealthReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemHealthReport>)))
  "Returns md5sum for a message object of type '<SystemHealthReport>"
  "66f9803a57f858802ab4b9cb70114150")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemHealthReport)))
  "Returns md5sum for a message object of type 'SystemHealthReport"
  "66f9803a57f858802ab4b9cb70114150")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemHealthReport>)))
  "Returns full string definition for message of type '<SystemHealthReport>"
  (cl:format cl:nil "# Represents the complete system health as a listing of DOMs of all subsystems.~%~%Header header~%~%# Simply a list of all the subsystems and their current DOMs~%anm_msgs/DOMReport[] system_summary~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/DOMReport~%# The DOMReport is used to inform the supervisory layer of the current DOM~%# (Degraded Operation Mode) of a given subsystem.~%~%Header header~%~%# Name of the subsystem/module~%string subsystem_name~%~%# Degraded operation mode. 0 = no degradation, 1 = fully degraded or failed~%float32 dom~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemHealthReport)))
  "Returns full string definition for message of type 'SystemHealthReport"
  (cl:format cl:nil "# Represents the complete system health as a listing of DOMs of all subsystems.~%~%Header header~%~%# Simply a list of all the subsystems and their current DOMs~%anm_msgs/DOMReport[] system_summary~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/DOMReport~%# The DOMReport is used to inform the supervisory layer of the current DOM~%# (Degraded Operation Mode) of a given subsystem.~%~%Header header~%~%# Name of the subsystem/module~%string subsystem_name~%~%# Degraded operation mode. 0 = no degradation, 1 = fully degraded or failed~%float32 dom~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemHealthReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'system_summary) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemHealthReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemHealthReport
    (cl:cons ':header (header msg))
    (cl:cons ':system_summary (system_summary msg))
))
