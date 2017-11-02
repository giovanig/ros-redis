; Auto-generated. Do not edit!


(cl:in-package rocon_std_msgs-msg)


;//! \htmlinclude ConnectionsList.msg.html

(cl:defclass <ConnectionsList> (roslisp-msg-protocol:ros-message)
  ((connections
    :reader connections
    :initarg :connections
    :type (cl:vector rocon_std_msgs-msg:Connection)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:Connection :initial-element (cl:make-instance 'rocon_std_msgs-msg:Connection))))
)

(cl:defclass ConnectionsList (<ConnectionsList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConnectionsList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConnectionsList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_std_msgs-msg:<ConnectionsList> is deprecated: use rocon_std_msgs-msg:ConnectionsList instead.")))

(cl:ensure-generic-function 'connections-val :lambda-list '(m))
(cl:defmethod connections-val ((m <ConnectionsList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-msg:connections-val is deprecated.  Use rocon_std_msgs-msg:connections instead.")
  (connections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConnectionsList>) ostream)
  "Serializes a message object of type '<ConnectionsList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'connections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'connections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConnectionsList>) istream)
  "Deserializes a message object of type '<ConnectionsList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'connections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'connections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:Connection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConnectionsList>)))
  "Returns string type for a message object of type '<ConnectionsList>"
  "rocon_std_msgs/ConnectionsList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConnectionsList)))
  "Returns string type for a message object of type 'ConnectionsList"
  "rocon_std_msgs/ConnectionsList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConnectionsList>)))
  "Returns md5sum for a message object of type '<ConnectionsList>"
  "672d6ad69b684884f8fb6f4acedbd39f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConnectionsList)))
  "Returns md5sum for a message object of type 'ConnectionsList"
  "672d6ad69b684884f8fb6f4acedbd39f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConnectionsList>)))
  "Returns full string definition for message of type '<ConnectionsList>"
  (cl:format cl:nil "Connection[] connections~%================================================================================~%MSG: rocon_std_msgs/Connection~%# A connection can be 1 of 5 types~%string PUBLISHER = publisher~%string SUBSCRIBER = subscriber~%string SERVICE = service~%string ACTION_CLIENT = action_client~%string ACTION_SERVER = action_server~%string INVALID = invalid~%~%# type of connection (from string constants above)~%string type~%~%# this is the topic/service name or the action base name~%string name ~%~%# the name of the node establishing this connection~%string node~%~%# topic, service or action type, e.g. std_msgs/String~%string type_msg~%~%# topic, service or action extra type info ( uri for service )~%string type_info~%~%# xmlrpc node uri for managing the connection~%string xmlrpc_uri~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConnectionsList)))
  "Returns full string definition for message of type 'ConnectionsList"
  (cl:format cl:nil "Connection[] connections~%================================================================================~%MSG: rocon_std_msgs/Connection~%# A connection can be 1 of 5 types~%string PUBLISHER = publisher~%string SUBSCRIBER = subscriber~%string SERVICE = service~%string ACTION_CLIENT = action_client~%string ACTION_SERVER = action_server~%string INVALID = invalid~%~%# type of connection (from string constants above)~%string type~%~%# this is the topic/service name or the action base name~%string name ~%~%# the name of the node establishing this connection~%string node~%~%# topic, service or action type, e.g. std_msgs/String~%string type_msg~%~%# topic, service or action extra type info ( uri for service )~%string type_info~%~%# xmlrpc node uri for managing the connection~%string xmlrpc_uri~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConnectionsList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'connections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConnectionsList>))
  "Converts a ROS message object to a list"
  (cl:list 'ConnectionsList
    (cl:cons ':connections (connections msg))
))
