; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude ControlCommands.msg.html

(cl:defclass <ControlCommands> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steering_pos_cmd
    :reader steering_pos_cmd
    :initarg :steering_pos_cmd
    :type cl:float
    :initform 0.0)
   (steering_vel_cmd
    :reader steering_vel_cmd
    :initarg :steering_vel_cmd
    :type cl:float
    :initform 0.0)
   (steering_EN
    :reader steering_EN
    :initarg :steering_EN
    :type cl:fixnum
    :initform 0)
   (throttle_cmd
    :reader throttle_cmd
    :initarg :throttle_cmd
    :type cl:float
    :initform 0.0)
   (throttle_EN
    :reader throttle_EN
    :initarg :throttle_EN
    :type cl:fixnum
    :initform 0)
   (brake_cmd
    :reader brake_cmd
    :initarg :brake_cmd
    :type cl:float
    :initform 0.0)
   (brake_EN
    :reader brake_EN
    :initarg :brake_EN
    :type cl:fixnum
    :initform 0)
   (gear_cmd
    :reader gear_cmd
    :initarg :gear_cmd
    :type dbw_mkz_msgs-msg:Gear
    :initform (cl:make-instance 'dbw_mkz_msgs-msg:Gear))
   (turn_signal_cmd
    :reader turn_signal_cmd
    :initarg :turn_signal_cmd
    :type dbw_mkz_msgs-msg:TurnSignal
    :initform (cl:make-instance 'dbw_mkz_msgs-msg:TurnSignal)))
)

(cl:defclass ControlCommands (<ControlCommands>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommands>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommands)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<ControlCommands> is deprecated: use anm_msgs-msg:ControlCommands instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControlCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steering_pos_cmd-val :lambda-list '(m))
(cl:defmethod steering_pos_cmd-val ((m <ControlCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:steering_pos_cmd-val is deprecated.  Use anm_msgs-msg:steering_pos_cmd instead.")
  (steering_pos_cmd m))

(cl:ensure-generic-function 'steering_vel_cmd-val :lambda-list '(m))
(cl:defmethod steering_vel_cmd-val ((m <ControlCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:steering_vel_cmd-val is deprecated.  Use anm_msgs-msg:steering_vel_cmd instead.")
  (steering_vel_cmd m))

(cl:ensure-generic-function 'steering_EN-val :lambda-list '(m))
(cl:defmethod steering_EN-val ((m <ControlCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:steering_EN-val is deprecated.  Use anm_msgs-msg:steering_EN instead.")
  (steering_EN m))

(cl:ensure-generic-function 'throttle_cmd-val :lambda-list '(m))
(cl:defmethod throttle_cmd-val ((m <ControlCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:throttle_cmd-val is deprecated.  Use anm_msgs-msg:throttle_cmd instead.")
  (throttle_cmd m))

(cl:ensure-generic-function 'throttle_EN-val :lambda-list '(m))
(cl:defmethod throttle_EN-val ((m <ControlCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:throttle_EN-val is deprecated.  Use anm_msgs-msg:throttle_EN instead.")
  (throttle_EN m))

(cl:ensure-generic-function 'brake_cmd-val :lambda-list '(m))
(cl:defmethod brake_cmd-val ((m <ControlCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:brake_cmd-val is deprecated.  Use anm_msgs-msg:brake_cmd instead.")
  (brake_cmd m))

(cl:ensure-generic-function 'brake_EN-val :lambda-list '(m))
(cl:defmethod brake_EN-val ((m <ControlCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:brake_EN-val is deprecated.  Use anm_msgs-msg:brake_EN instead.")
  (brake_EN m))

(cl:ensure-generic-function 'gear_cmd-val :lambda-list '(m))
(cl:defmethod gear_cmd-val ((m <ControlCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:gear_cmd-val is deprecated.  Use anm_msgs-msg:gear_cmd instead.")
  (gear_cmd m))

(cl:ensure-generic-function 'turn_signal_cmd-val :lambda-list '(m))
(cl:defmethod turn_signal_cmd-val ((m <ControlCommands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:turn_signal_cmd-val is deprecated.  Use anm_msgs-msg:turn_signal_cmd instead.")
  (turn_signal_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommands>) ostream)
  "Serializes a message object of type '<ControlCommands>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_pos_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_vel_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering_EN)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_EN)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_EN)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_signal_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommands>) istream)
  "Deserializes a message object of type '<ControlCommands>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_pos_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_vel_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering_EN)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_EN)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_EN)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_signal_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommands>)))
  "Returns string type for a message object of type '<ControlCommands>"
  "anm_msgs/ControlCommands")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommands)))
  "Returns string type for a message object of type 'ControlCommands"
  "anm_msgs/ControlCommands")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommands>)))
  "Returns md5sum for a message object of type '<ControlCommands>"
  "d0e12956f02b3e297a2b3e14ba7b4c6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommands)))
  "Returns md5sum for a message object of type 'ControlCommands"
  "d0e12956f02b3e297a2b3e14ba7b4c6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommands>)))
  "Returns full string definition for message of type '<ControlCommands>"
  (cl:format cl:nil "# This message defines all control commands required to control the vehicle~%~%Header header~%~%# Steering Wheel~%float32 steering_pos_cmd # (rad)~%float32 steering_vel_cmd # (rad/s)~%uint8 steering_EN~%~%# Throttle~%float32 throttle_cmd # (percent) from 0.0 to 1.0~%uint8 throttle_EN~%~%# Brake~%float32 brake_cmd # (Nm) torque from 0.0 to 3450.0~%uint8 brake_EN~%~%# Gear~%dbw_mkz_msgs/Gear gear_cmd~%~%# Turn signal~%dbw_mkz_msgs/TurnSignal turn_signal_cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dbw_mkz_msgs/Gear~%uint8 gear~%~%uint8 NONE=0~%uint8 PARK=1~%uint8 REVERSE=2~%uint8 NEUTRAL=3~%uint8 DRIVE=4~%uint8 LOW=5~%~%================================================================================~%MSG: dbw_mkz_msgs/TurnSignal~%uint8 value~%~%uint8 NONE=0~%uint8 LEFT=1~%uint8 RIGHT=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommands)))
  "Returns full string definition for message of type 'ControlCommands"
  (cl:format cl:nil "# This message defines all control commands required to control the vehicle~%~%Header header~%~%# Steering Wheel~%float32 steering_pos_cmd # (rad)~%float32 steering_vel_cmd # (rad/s)~%uint8 steering_EN~%~%# Throttle~%float32 throttle_cmd # (percent) from 0.0 to 1.0~%uint8 throttle_EN~%~%# Brake~%float32 brake_cmd # (Nm) torque from 0.0 to 3450.0~%uint8 brake_EN~%~%# Gear~%dbw_mkz_msgs/Gear gear_cmd~%~%# Turn signal~%dbw_mkz_msgs/TurnSignal turn_signal_cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dbw_mkz_msgs/Gear~%uint8 gear~%~%uint8 NONE=0~%uint8 PARK=1~%uint8 REVERSE=2~%uint8 NEUTRAL=3~%uint8 DRIVE=4~%uint8 LOW=5~%~%================================================================================~%MSG: dbw_mkz_msgs/TurnSignal~%uint8 value~%~%uint8 NONE=0~%uint8 LEFT=1~%uint8 RIGHT=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommands>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
     4
     1
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_signal_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommands>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommands
    (cl:cons ':header (header msg))
    (cl:cons ':steering_pos_cmd (steering_pos_cmd msg))
    (cl:cons ':steering_vel_cmd (steering_vel_cmd msg))
    (cl:cons ':steering_EN (steering_EN msg))
    (cl:cons ':throttle_cmd (throttle_cmd msg))
    (cl:cons ':throttle_EN (throttle_EN msg))
    (cl:cons ':brake_cmd (brake_cmd msg))
    (cl:cons ':brake_EN (brake_EN msg))
    (cl:cons ':gear_cmd (gear_cmd msg))
    (cl:cons ':turn_signal_cmd (turn_signal_cmd msg))
))
