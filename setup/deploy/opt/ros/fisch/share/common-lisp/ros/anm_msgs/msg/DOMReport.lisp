; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude DOMReport.msg.html

(cl:defclass <DOMReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (subsystem_name
    :reader subsystem_name
    :initarg :subsystem_name
    :type cl:string
    :initform "")
   (dom
    :reader dom
    :initarg :dom
    :type cl:float
    :initform 0.0))
)

(cl:defclass DOMReport (<DOMReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DOMReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DOMReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<DOMReport> is deprecated: use anm_msgs-msg:DOMReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DOMReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'subsystem_name-val :lambda-list '(m))
(cl:defmethod subsystem_name-val ((m <DOMReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:subsystem_name-val is deprecated.  Use anm_msgs-msg:subsystem_name instead.")
  (subsystem_name m))

(cl:ensure-generic-function 'dom-val :lambda-list '(m))
(cl:defmethod dom-val ((m <DOMReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:dom-val is deprecated.  Use anm_msgs-msg:dom instead.")
  (dom m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DOMReport>) ostream)
  "Serializes a message object of type '<DOMReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subsystem_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subsystem_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DOMReport>) istream)
  "Deserializes a message object of type '<DOMReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subsystem_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subsystem_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dom) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DOMReport>)))
  "Returns string type for a message object of type '<DOMReport>"
  "anm_msgs/DOMReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DOMReport)))
  "Returns string type for a message object of type 'DOMReport"
  "anm_msgs/DOMReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DOMReport>)))
  "Returns md5sum for a message object of type '<DOMReport>"
  "549661b2ac2e4ffd500a8ce922b77d98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DOMReport)))
  "Returns md5sum for a message object of type 'DOMReport"
  "549661b2ac2e4ffd500a8ce922b77d98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DOMReport>)))
  "Returns full string definition for message of type '<DOMReport>"
  (cl:format cl:nil "# The DOMReport is used to inform the supervisory layer of the current DOM~%# (Degraded Operation Mode) of a given subsystem.~%~%Header header~%~%# Name of the subsystem/module~%string subsystem_name~%~%# Degraded operation mode. 0 = no degradation, 1 = fully degraded or failed~%float32 dom~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DOMReport)))
  "Returns full string definition for message of type 'DOMReport"
  (cl:format cl:nil "# The DOMReport is used to inform the supervisory layer of the current DOM~%# (Degraded Operation Mode) of a given subsystem.~%~%Header header~%~%# Name of the subsystem/module~%string subsystem_name~%~%# Degraded operation mode. 0 = no degradation, 1 = fully degraded or failed~%float32 dom~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DOMReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'subsystem_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DOMReport>))
  "Converts a ROS message object to a list"
  (cl:list 'DOMReport
    (cl:cons ':header (header msg))
    (cl:cons ':subsystem_name (subsystem_name msg))
    (cl:cons ':dom (dom msg))
))
