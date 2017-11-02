; Auto-generated. Do not edit!


(cl:in-package rocon_std_msgs-msg)


;//! \htmlinclude ConnectionsDiff.msg.html

(cl:defclass <ConnectionsDiff> (roslisp-msg-protocol:ros-message)
  ((added
    :reader added
    :initarg :added
    :type (cl:vector rocon_std_msgs-msg:Connection)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:Connection :initial-element (cl:make-instance 'rocon_std_msgs-msg:Connection)))
   (lost
    :reader lost
    :initarg :lost
    :type (cl:vector rocon_std_msgs-msg:Connection)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:Connection :initial-element (cl:make-instance 'rocon_std_msgs-msg:Connection))))
)

(cl:defclass ConnectionsDiff (<ConnectionsDiff>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectionsDiff>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectionsDiff)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_std_msgs-msg:<ConnectionsDiff> is deprecated: use rocon_std_msgs-msg:ConnectionsDiff instead.")))

(cl:ensure-generic-function 'added-val :lambda-list '(m))
(cl:defmethod added-val ((m <ConnectionsDiff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:added-val is deprecated.  Use rocon_std_msgs-msg:added instead.")
  (added m))

(cl:ensure-generic-function 'lost-val :lambda-list '(m))
(cl:defmethod lost-val ((m <ConnectionsDiff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:lost-val is deprecated.  Use rocon_std_msgs-msg:lost instead.")
  (lost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectionsDiff>) ostream)
  "Serializes a message object of type '<ConnectionsDiff>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'added))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'added))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lost))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectionsDiff>) istream)
  "Deserializes a message object of type '<ConnectionsDiff>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'added) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'added)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:Connection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lost) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lost)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:Connection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectionsDiff>)))
  "Returns string type for a message object of type '<ConnectionsDiff>"
  "rocon_std_msgs/ConnectionsDiff")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectionsDiff)))
  "Returns string type for a message object of type 'ConnectionsDiff"
  "rocon_std_msgs/ConnectionsDiff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectionsDiff>)))
  "Returns md5sum for a message object of type '<ConnectionsDiff>"
  "19f9e3bef1153b4bc619ec3d21b94718")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectionsDiff)))
  "Returns md5sum for a message object of type 'ConnectionsDiff"
  "19f9e3bef1153b4bc619ec3d21b94718")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectionsDiff>)))
  "Returns full string definition for message of type '<ConnectionsDiff>"
  (cl:format cl:nil "Connection[] added~%Connection[] lost~%================================================================================~%MSG: rocon_std_msgs/Connection~%# A connection can be 1 of 5 types~%string PUBLISHER = publisher~%string SUBSCRIBER = subscriber~%string SERVICE = service~%string ACTION_CLIENT = action_client~%string ACTION_SERVER = action_server~%string INVALID = invalid~%~%# type of connection (from string constants above)~%string type~%~%# this is the topic/service name or the action base name~%string name ~%~%# the name of the node establishing this connection~%string node~%~%# topic, service or action type, e.g. std_msgs/String~%string type_msg~%~%# topic, service or action extra type info ( uri for service )~%string type_info~%~%# xmlrpc node uri for managing the connection~%string xmlrpc_uri~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectionsDiff)))
  "Returns full string definition for message of type 'ConnectionsDiff"
  (cl:format cl:nil "Connection[] added~%Connection[] lost~%================================================================================~%MSG: rocon_std_msgs/Connection~%# A connection can be 1 of 5 types~%string PUBLISHER = publisher~%string SUBSCRIBER = subscriber~%string SERVICE = service~%string ACTION_CLIENT = action_client~%string ACTION_SERVER = action_server~%string INVALID = invalid~%~%# type of connection (from string constants above)~%string type~%~%# this is the topic/service name or the action base name~%string name ~%~%# the name of the node establishing this connection~%string node~%~%# topic, service or action type, e.g. std_msgs/String~%string type_msg~%~%# topic, service or action extra type info ( uri for service )~%string type_info~%~%# xmlrpc node uri for managing the connection~%string xmlrpc_uri~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectionsDiff>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'added) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lost) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectionsDiff>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectionsDiff
    (cl:cons ':added (added msg))
    (cl:cons ':lost (lost msg))
))
