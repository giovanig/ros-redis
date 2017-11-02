; Auto-generated. Do not edit!


(cl:in-package rocon_std_msgs-msg)


;//! \htmlinclude ConnectionCacheSpin.msg.html

(cl:defclass <ConnectionCacheSpin> (roslisp-msg-protocol:ros-message)
  ((spin_freq
    :reader spin_freq
    :initarg :spin_freq
    :type cl:float
    :initform 0.0)
   (spin_timer
    :reader spin_timer
    :initarg :spin_timer
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConnectionCacheSpin (<ConnectionCacheSpin>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectionCacheSpin>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectionCacheSpin)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_std_msgs-msg:<ConnectionCacheSpin> is deprecated: use rocon_std_msgs-msg:ConnectionCacheSpin instead.")))

(cl:ensure-generic-function 'spin_freq-val :lambda-list '(m))
(cl:defmethod spin_freq-val ((m <ConnectionCacheSpin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:spin_freq-val is deprecated.  Use rocon_std_msgs-msg:spin_freq instead.")
  (spin_freq m))

(cl:ensure-generic-function 'spin_timer-val :lambda-list '(m))
(cl:defmethod spin_timer-val ((m <ConnectionCacheSpin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:spin_timer-val is deprecated.  Use rocon_std_msgs-msg:spin_timer instead.")
  (spin_timer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectionCacheSpin>) ostream)
  "Serializes a message object of type '<ConnectionCacheSpin>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'spin_freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'spin_timer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectionCacheSpin>) istream)
  "Deserializes a message object of type '<ConnectionCacheSpin>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'spin_freq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'spin_timer) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectionCacheSpin>)))
  "Returns string type for a message object of type '<ConnectionCacheSpin>"
  "rocon_std_msgs/ConnectionCacheSpin")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectionCacheSpin)))
  "Returns string type for a message object of type 'ConnectionCacheSpin"
  "rocon_std_msgs/ConnectionCacheSpin")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectionCacheSpin>)))
  "Returns md5sum for a message object of type '<ConnectionCacheSpin>"
  "b6c0b0ddb1d2a2de9918dc5f6d87680a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectionCacheSpin)))
  "Returns md5sum for a message object of type 'ConnectionCacheSpin"
  "b6c0b0ddb1d2a2de9918dc5f6d87680a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectionCacheSpin>)))
  "Returns full string definition for message of type '<ConnectionCacheSpin>"
  (cl:format cl:nil "float32 spin_freq  # Hz~%float32 spin_timer  # > 0 means spin_freq is a temporary spin up. ==0 means spin_freq is the base spin frequency~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectionCacheSpin)))
  "Returns full string definition for message of type 'ConnectionCacheSpin"
  (cl:format cl:nil "float32 spin_freq  # Hz~%float32 spin_timer  # > 0 means spin_freq is a temporary spin up. ==0 means spin_freq is the base spin frequency~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectionCacheSpin>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectionCacheSpin>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectionCacheSpin
    (cl:cons ':spin_freq (spin_freq msg))
    (cl:cons ':spin_timer (spin_timer msg))
))
