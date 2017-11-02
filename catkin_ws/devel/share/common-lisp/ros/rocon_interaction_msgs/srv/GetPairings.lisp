; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-srv)


;//! \htmlinclude GetPairings-request.msg.html

(cl:defclass <GetPairings-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPairings-request (<GetPairings-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPairings-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPairings-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<GetPairings-request> is deprecated: use rocon_interaction_msgs-srv:GetPairings-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPairings-request>) ostream)
  "Serializes a message object of type '<GetPairings-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPairings-request>) istream)
  "Deserializes a message object of type '<GetPairings-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPairings-request>)))
  "Returns string type for a service object of type '<GetPairings-request>"
  "rocon_interaction_msgs/GetPairingsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPairings-request)))
  "Returns string type for a service object of type 'GetPairings-request"
  "rocon_interaction_msgs/GetPairingsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPairings-request>)))
  "Returns md5sum for a message object of type '<GetPairings-request>"
  "d29a833c93f116257b8e089a802ebf98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPairings-request)))
  "Returns md5sum for a message object of type 'GetPairings-request"
  "d29a833c93f116257b8e089a802ebf98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPairings-request>)))
  "Returns full string definition for message of type '<GetPairings-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPairings-request)))
  "Returns full string definition for message of type 'GetPairings-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPairings-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPairings-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPairings-request
))
;//! \htmlinclude GetPairings-response.msg.html

(cl:defclass <GetPairings-response> (roslisp-msg-protocol:ros-message)
  ((pairings
    :reader pairings
    :initarg :pairings
    :type (cl:vector rocon_interaction_msgs-msg:Pairing)
   :initform (cl:make-array 0 :element-type 'rocon_interaction_msgs-msg:Pairing :initial-element (cl:make-instance 'rocon_interaction_msgs-msg:Pairing))))
)

(cl:defclass GetPairings-response (<GetPairings-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPairings-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPairings-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<GetPairings-response> is deprecated: use rocon_interaction_msgs-srv:GetPairings-response instead.")))

(cl:ensure-generic-function 'pairings-val :lambda-list '(m))
(cl:defmethod pairings-val ((m <GetPairings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:pairings-val is deprecated.  Use rocon_interaction_msgs-srv:pairings instead.")
  (pairings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPairings-response>) ostream)
  "Serializes a message object of type '<GetPairings-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pairings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pairings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPairings-response>) istream)
  "Deserializes a message object of type '<GetPairings-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pairings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pairings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_interaction_msgs-msg:Pairing))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPairings-response>)))
  "Returns string type for a service object of type '<GetPairings-response>"
  "rocon_interaction_msgs/GetPairingsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPairings-response)))
  "Returns string type for a service object of type 'GetPairings-response"
  "rocon_interaction_msgs/GetPairingsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPairings-response>)))
  "Returns md5sum for a message object of type '<GetPairings-response>"
  "d29a833c93f116257b8e089a802ebf98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPairings-response)))
  "Returns md5sum for a message object of type 'GetPairings-response"
  "d29a833c93f116257b8e089a802ebf98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPairings-response>)))
  "Returns full string definition for message of type '<GetPairings-response>"
  (cl:format cl:nil "Pairing[] pairings~%~%~%================================================================================~%MSG: rocon_interaction_msgs/Pairing~%###############################################################~%# Pairing rapp specification~%###############################################################~%~%# Unique name that represents this pairing. Note that you can~%# have multiple configurations of a single rapp, so the rapp~%# name alone is not enough to uniquely identify the pairing~%string name~%~%# Group to which this pairing belongs~%string group~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%###############################################################~%# Customising the rapp launch instance~%###############################################################~%~%# Can load the default rapp description, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# Whether or not this rapp should bringup/teardown an interaction~%# with the launching of this rapp. If empty, no interaction is~%# required, if non-empty, look for the specified interaction.~%string requires_interaction~%~%# Again, can load the default rapp icon, but may want to override it.~%rocon_std_msgs/Icon icon~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPairings-response)))
  "Returns full string definition for message of type 'GetPairings-response"
  (cl:format cl:nil "Pairing[] pairings~%~%~%================================================================================~%MSG: rocon_interaction_msgs/Pairing~%###############################################################~%# Pairing rapp specification~%###############################################################~%~%# Unique name that represents this pairing. Note that you can~%# have multiple configurations of a single rapp, so the rapp~%# name alone is not enough to uniquely identify the pairing~%string name~%~%# Group to which this pairing belongs~%string group~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%###############################################################~%# Customising the rapp launch instance~%###############################################################~%~%# Can load the default rapp description, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# Whether or not this rapp should bringup/teardown an interaction~%# with the launching of this rapp. If empty, no interaction is~%# required, if non-empty, look for the specified interaction.~%string requires_interaction~%~%# Again, can load the default rapp icon, but may want to override it.~%rocon_std_msgs/Icon icon~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPairings-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pairings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPairings-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPairings-response
    (cl:cons ':pairings (pairings msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPairings)))
  'GetPairings-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPairings)))
  'GetPairings-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPairings)))
  "Returns string type for a service object of type '<GetPairings>"
  "rocon_interaction_msgs/GetPairings")