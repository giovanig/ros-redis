; Auto-generated. Do not edit!


(cl:in-package etrans_msgs-msg)


;//! \htmlinclude etrans_light.msg.html

(cl:defclass <etrans_light> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (signal_group
    :reader signal_group
    :initarg :signal_group
    :type cl:integer
    :initform 0)
   (time_to_change
    :reader time_to_change
    :initarg :time_to_change
    :type cl:float
    :initform 0.0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass etrans_light (<etrans_light>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <etrans_light>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'etrans_light)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etrans_msgs-msg:<etrans_light> is deprecated: use etrans_msgs-msg:etrans_light instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <etrans_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:state-val is deprecated.  Use etrans_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'signal_group-val :lambda-list '(m))
(cl:defmethod signal_group-val ((m <etrans_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:signal_group-val is deprecated.  Use etrans_msgs-msg:signal_group instead.")
  (signal_group m))

(cl:ensure-generic-function 'time_to_change-val :lambda-list '(m))
(cl:defmethod time_to_change-val ((m <etrans_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:time_to_change-val is deprecated.  Use etrans_msgs-msg:time_to_change instead.")
  (time_to_change m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <etrans_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:latitude-val is deprecated.  Use etrans_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <etrans_light>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:longitude-val is deprecated.  Use etrans_msgs-msg:longitude instead.")
  (longitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <etrans_light>) ostream)
  "Serializes a message object of type '<etrans_light>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal_group)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'signal_group)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'signal_group)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'signal_group)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_to_change))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <etrans_light>) istream)
  "Deserializes a message object of type '<etrans_light>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'signal_group)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'signal_group)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'signal_group)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'signal_group)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_to_change) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<etrans_light>)))
  "Returns string type for a message object of type '<etrans_light>"
  "etrans_msgs/etrans_light")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'etrans_light)))
  "Returns string type for a message object of type 'etrans_light"
  "etrans_msgs/etrans_light")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<etrans_light>)))
  "Returns md5sum for a message object of type '<etrans_light>"
  "c32da18cf5c5b5fc7fb74eb7e7860ee2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'etrans_light)))
  "Returns md5sum for a message object of type 'etrans_light"
  "c32da18cf5c5b5fc7fb74eb7e7860ee2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<etrans_light>)))
  "Returns full string definition for message of type '<etrans_light>"
  (cl:format cl:nil "int8 state~%uint32 signal_group~%float64 time_to_change~%float64 latitude~%float64 longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'etrans_light)))
  "Returns full string definition for message of type 'etrans_light"
  (cl:format cl:nil "int8 state~%uint32 signal_group~%float64 time_to_change~%float64 latitude~%float64 longitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <etrans_light>))
  (cl:+ 0
     1
     4
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <etrans_light>))
  "Converts a ROS message object to a list"
  (cl:list 'etrans_light
    (cl:cons ':state (state msg))
    (cl:cons ':signal_group (signal_group msg))
    (cl:cons ':time_to_change (time_to_change msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
))
