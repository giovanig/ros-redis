; Auto-generated. Do not edit!


(cl:in-package etrans_msgs-msg)


;//! \htmlinclude etrans_lane.msg.html

(cl:defclass <etrans_lane> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (centerpoints
    :reader centerpoints
    :initarg :centerpoints
    :type (cl:vector etrans_msgs-msg:etrans_latlon)
   :initform (cl:make-array 0 :element-type 'etrans_msgs-msg:etrans_latlon :initial-element (cl:make-instance 'etrans_msgs-msg:etrans_latlon))))
)

(cl:defclass etrans_lane (<etrans_lane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <etrans_lane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'etrans_lane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etrans_msgs-msg:<etrans_lane> is deprecated: use etrans_msgs-msg:etrans_lane instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <etrans_lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:ID-val is deprecated.  Use etrans_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'centerpoints-val :lambda-list '(m))
(cl:defmethod centerpoints-val ((m <etrans_lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:centerpoints-val is deprecated.  Use etrans_msgs-msg:centerpoints instead.")
  (centerpoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <etrans_lane>) ostream)
  "Serializes a message object of type '<etrans_lane>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'centerpoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'centerpoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <etrans_lane>) istream)
  "Deserializes a message object of type '<etrans_lane>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'centerpoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'centerpoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'etrans_msgs-msg:etrans_latlon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<etrans_lane>)))
  "Returns string type for a message object of type '<etrans_lane>"
  "etrans_msgs/etrans_lane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'etrans_lane)))
  "Returns string type for a message object of type 'etrans_lane"
  "etrans_msgs/etrans_lane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<etrans_lane>)))
  "Returns md5sum for a message object of type '<etrans_lane>"
  "af8c9fbac78c2f807829637ebfead832")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'etrans_lane)))
  "Returns md5sum for a message object of type 'etrans_lane"
  "af8c9fbac78c2f807829637ebfead832")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<etrans_lane>)))
  "Returns full string definition for message of type '<etrans_lane>"
  (cl:format cl:nil "uint32 ID~%etrans_msgs/etrans_latlon[] centerpoints~%================================================================================~%MSG: etrans_msgs/etrans_latlon~%float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'etrans_lane)))
  "Returns full string definition for message of type 'etrans_lane"
  (cl:format cl:nil "uint32 ID~%etrans_msgs/etrans_latlon[] centerpoints~%================================================================================~%MSG: etrans_msgs/etrans_latlon~%float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <etrans_lane>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'centerpoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <etrans_lane>))
  "Converts a ROS message object to a list"
  (cl:list 'etrans_lane
    (cl:cons ':ID (ID msg))
    (cl:cons ':centerpoints (centerpoints msg))
))
