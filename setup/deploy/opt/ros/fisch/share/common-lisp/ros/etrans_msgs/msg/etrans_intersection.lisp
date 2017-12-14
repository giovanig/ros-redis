; Auto-generated. Do not edit!


(cl:in-package etrans_msgs-msg)


;//! \htmlinclude etrans_intersection.msg.html

(cl:defclass <etrans_intersection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (lights
    :reader lights
    :initarg :lights
    :type (cl:vector etrans_msgs-msg:etrans_light)
   :initform (cl:make-array 0 :element-type 'etrans_msgs-msg:etrans_light :initial-element (cl:make-instance 'etrans_msgs-msg:etrans_light)))
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector etrans_msgs-msg:etrans_lane)
   :initform (cl:make-array 0 :element-type 'etrans_msgs-msg:etrans_lane :initial-element (cl:make-instance 'etrans_msgs-msg:etrans_lane))))
)

(cl:defclass etrans_intersection (<etrans_intersection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <etrans_intersection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'etrans_intersection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etrans_msgs-msg:<etrans_intersection> is deprecated: use etrans_msgs-msg:etrans_intersection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <etrans_intersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:header-val is deprecated.  Use etrans_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <etrans_intersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:ID-val is deprecated.  Use etrans_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'lights-val :lambda-list '(m))
(cl:defmethod lights-val ((m <etrans_intersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:lights-val is deprecated.  Use etrans_msgs-msg:lights instead.")
  (lights m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <etrans_intersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etrans_msgs-msg:lanes-val is deprecated.  Use etrans_msgs-msg:lanes instead.")
  (lanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <etrans_intersection>) ostream)
  "Serializes a message object of type '<etrans_intersection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lights))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <etrans_intersection>) istream)
  "Deserializes a message object of type '<etrans_intersection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lights) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lights)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'etrans_msgs-msg:etrans_light))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'etrans_msgs-msg:etrans_lane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<etrans_intersection>)))
  "Returns string type for a message object of type '<etrans_intersection>"
  "etrans_msgs/etrans_intersection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'etrans_intersection)))
  "Returns string type for a message object of type 'etrans_intersection"
  "etrans_msgs/etrans_intersection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<etrans_intersection>)))
  "Returns md5sum for a message object of type '<etrans_intersection>"
  "0c97a642a195257607a5e8b421317b71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'etrans_intersection)))
  "Returns md5sum for a message object of type 'etrans_intersection"
  "0c97a642a195257607a5e8b421317b71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<etrans_intersection>)))
  "Returns full string definition for message of type '<etrans_intersection>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 ID~%etrans_msgs/etrans_light[] lights~%etrans_msgs/etrans_lane[] lanes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: etrans_msgs/etrans_light~%int8 state~%uint32 signal_group~%float64 time_to_change~%float64 latitude~%float64 longitude~%~%================================================================================~%MSG: etrans_msgs/etrans_lane~%uint32 ID~%etrans_msgs/etrans_latlon[] centerpoints~%================================================================================~%MSG: etrans_msgs/etrans_latlon~%float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'etrans_intersection)))
  "Returns full string definition for message of type 'etrans_intersection"
  (cl:format cl:nil "std_msgs/Header header~%uint32 ID~%etrans_msgs/etrans_light[] lights~%etrans_msgs/etrans_lane[] lanes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: etrans_msgs/etrans_light~%int8 state~%uint32 signal_group~%float64 time_to_change~%float64 latitude~%float64 longitude~%~%================================================================================~%MSG: etrans_msgs/etrans_lane~%uint32 ID~%etrans_msgs/etrans_latlon[] centerpoints~%================================================================================~%MSG: etrans_msgs/etrans_latlon~%float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <etrans_intersection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lights) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <etrans_intersection>))
  "Converts a ROS message object to a list"
  (cl:list 'etrans_intersection
    (cl:cons ':header (header msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':lights (lights msg))
    (cl:cons ':lanes (lanes msg))
))
