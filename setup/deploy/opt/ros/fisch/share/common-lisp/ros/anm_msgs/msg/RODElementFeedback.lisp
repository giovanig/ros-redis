; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude RODElementFeedback.msg.html

(cl:defclass <RODElementFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (feedback
    :reader feedback
    :initarg :feedback
    :type cl:fixnum
    :initform 0)
   (time_to_violation
    :reader time_to_violation
    :initarg :time_to_violation
    :type cl:float
    :initform 0.0)
   (element
    :reader element
    :initarg :element
    :type anm_msgs-msg:RODElement
    :initform (cl:make-instance 'anm_msgs-msg:RODElement)))
)

(cl:defclass RODElementFeedback (<RODElementFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RODElementFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RODElementFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<RODElementFeedback> is deprecated: use anm_msgs-msg:RODElementFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RODElementFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <RODElementFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:feedback-val is deprecated.  Use anm_msgs-msg:feedback instead.")
  (feedback m))

(cl:ensure-generic-function 'time_to_violation-val :lambda-list '(m))
(cl:defmethod time_to_violation-val ((m <RODElementFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:time_to_violation-val is deprecated.  Use anm_msgs-msg:time_to_violation instead.")
  (time_to_violation m))

(cl:ensure-generic-function 'element-val :lambda-list '(m))
(cl:defmethod element-val ((m <RODElementFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:element-val is deprecated.  Use anm_msgs-msg:element instead.")
  (element m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RODElementFeedback>)))
    "Constants for message type '<RODElementFeedback>"
  '((:SATISFIED . 0)
    (:VIOLATED . 1)
    (:UPCOMING_VIOLATION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RODElementFeedback)))
    "Constants for message type 'RODElementFeedback"
  '((:SATISFIED . 0)
    (:VIOLATED . 1)
    (:UPCOMING_VIOLATION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RODElementFeedback>) ostream)
  "Serializes a message object of type '<RODElementFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'feedback)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_to_violation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'element) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RODElementFeedback>) istream)
  "Deserializes a message object of type '<RODElementFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'feedback)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_to_violation) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'element) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RODElementFeedback>)))
  "Returns string type for a message object of type '<RODElementFeedback>"
  "anm_msgs/RODElementFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RODElementFeedback)))
  "Returns string type for a message object of type 'RODElementFeedback"
  "anm_msgs/RODElementFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RODElementFeedback>)))
  "Returns md5sum for a message object of type '<RODElementFeedback>"
  "4b487ac5a89abea776b278b3c85cd812")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RODElementFeedback)))
  "Returns md5sum for a message object of type 'RODElementFeedback"
  "4b487ac5a89abea776b278b3c85cd812")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RODElementFeedback>)))
  "Returns full string definition for message of type '<RODElementFeedback>"
  (cl:format cl:nil "Header header~%~%uint8 SATISFIED = 0~%uint8 VIOLATED = 1~%uint8 UPCOMING_VIOLATION = 2~%~%# The feedback code~%uint8 feedback~%~%# The time remaining until violation~%float32 time_to_violation~%~%# The element which the feedback is for~%anm_msgs/RODElement element~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/RODElement~%Header header~%~%# Type/classification of element~%string element_type~%~%# Different values depending on the element type~%float32 float_value~%string string_value~%string[] string_array~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RODElementFeedback)))
  "Returns full string definition for message of type 'RODElementFeedback"
  (cl:format cl:nil "Header header~%~%uint8 SATISFIED = 0~%uint8 VIOLATED = 1~%uint8 UPCOMING_VIOLATION = 2~%~%# The feedback code~%uint8 feedback~%~%# The time remaining until violation~%float32 time_to_violation~%~%# The element which the feedback is for~%anm_msgs/RODElement element~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/RODElement~%Header header~%~%# Type/classification of element~%string element_type~%~%# Different values depending on the element type~%float32 float_value~%string string_value~%string[] string_array~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RODElementFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'element))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RODElementFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'RODElementFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':feedback (feedback msg))
    (cl:cons ':time_to_violation (time_to_violation msg))
    (cl:cons ':element (element msg))
))
