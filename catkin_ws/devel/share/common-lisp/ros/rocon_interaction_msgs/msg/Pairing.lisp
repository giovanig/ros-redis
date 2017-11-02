; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude Pairing.msg.html

(cl:defclass <Pairing> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (rapp
    :reader rapp
    :initarg :rapp
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (requires_interaction
    :reader requires_interaction
    :initarg :requires_interaction
    :type cl:string
    :initform "")
   (icon
    :reader icon
    :initarg :icon
    :type rocon_std_msgs-msg:Icon
    :initform (cl:make-instance 'rocon_std_msgs-msg:Icon))
   (remappings
    :reader remappings
    :initarg :remappings
    :type (cl:vector rocon_std_msgs-msg:Remapping)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:Remapping :initial-element (cl:make-instance 'rocon_std_msgs-msg:Remapping)))
   (parameters
    :reader parameters
    :initarg :parameters
    :type (cl:vector rocon_std_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:KeyValue :initial-element (cl:make-instance 'rocon_std_msgs-msg:KeyValue))))
)

(cl:defclass Pairing (<Pairing>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pairing>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pairing)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<Pairing> is deprecated: use rocon_interaction_msgs-msg:Pairing instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:name-val is deprecated.  Use rocon_interaction_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:group-val is deprecated.  Use rocon_interaction_msgs-msg:group instead.")
  (group m))

(cl:ensure-generic-function 'rapp-val :lambda-list '(m))
(cl:defmethod rapp-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:rapp-val is deprecated.  Use rocon_interaction_msgs-msg:rapp instead.")
  (rapp m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:description-val is deprecated.  Use rocon_interaction_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'requires_interaction-val :lambda-list '(m))
(cl:defmethod requires_interaction-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:requires_interaction-val is deprecated.  Use rocon_interaction_msgs-msg:requires_interaction instead.")
  (requires_interaction m))

(cl:ensure-generic-function 'icon-val :lambda-list '(m))
(cl:defmethod icon-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:icon-val is deprecated.  Use rocon_interaction_msgs-msg:icon instead.")
  (icon m))

(cl:ensure-generic-function 'remappings-val :lambda-list '(m))
(cl:defmethod remappings-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:remappings-val is deprecated.  Use rocon_interaction_msgs-msg:remappings instead.")
  (remappings m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <Pairing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:parameters-val is deprecated.  Use rocon_interaction_msgs-msg:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pairing>) ostream)
  "Serializes a message object of type '<Pairing>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rapp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rapp))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'requires_interaction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'requires_interaction))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'icon) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remappings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'remappings))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parameters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pairing>) istream)
  "Deserializes a message object of type '<Pairing>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rapp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rapp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requires_interaction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'requires_interaction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'icon) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remappings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remappings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:Remapping))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parameters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pairing>)))
  "Returns string type for a message object of type '<Pairing>"
  "rocon_interaction_msgs/Pairing")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pairing)))
  "Returns string type for a message object of type 'Pairing"
  "rocon_interaction_msgs/Pairing")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pairing>)))
  "Returns md5sum for a message object of type '<Pairing>"
  "1dae0009f23a860ae843f68089b76ed0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pairing)))
  "Returns md5sum for a message object of type 'Pairing"
  "1dae0009f23a860ae843f68089b76ed0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pairing>)))
  "Returns full string definition for message of type '<Pairing>"
  (cl:format cl:nil "###############################################################~%# Pairing rapp specification~%###############################################################~%~%# Unique name that represents this pairing. Note that you can~%# have multiple configurations of a single rapp, so the rapp~%# name alone is not enough to uniquely identify the pairing~%string name~%~%# Group to which this pairing belongs~%string group~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%###############################################################~%# Customising the rapp launch instance~%###############################################################~%~%# Can load the default rapp description, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# Whether or not this rapp should bringup/teardown an interaction~%# with the launching of this rapp. If empty, no interaction is~%# required, if non-empty, look for the specified interaction.~%string requires_interaction~%~%# Again, can load the default rapp icon, but may want to override it.~%rocon_std_msgs/Icon icon~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pairing)))
  "Returns full string definition for message of type 'Pairing"
  (cl:format cl:nil "###############################################################~%# Pairing rapp specification~%###############################################################~%~%# Unique name that represents this pairing. Note that you can~%# have multiple configurations of a single rapp, so the rapp~%# name alone is not enough to uniquely identify the pairing~%string name~%~%# Group to which this pairing belongs~%string group~%~%# ros resource name of the rapp, e.g. rocon_apps/talker~%string rapp~%~%###############################################################~%# Customising the rapp launch instance~%###############################################################~%~%# Can load the default rapp description, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# Whether or not this rapp should bringup/teardown an interaction~%# with the launching of this rapp. If empty, no interaction is~%# required, if non-empty, look for the specified interaction.~%string requires_interaction~%~%# Again, can load the default rapp icon, but may want to override it.~%rocon_std_msgs/Icon icon~%~%rocon_std_msgs/Remapping[] remappings~%~%# Key value pairs representing rapp parameters~%rocon_std_msgs/KeyValue[] parameters~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%================================================================================~%MSG: rocon_std_msgs/KeyValue~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pairing>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'group))
     4 (cl:length (cl:slot-value msg 'rapp))
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'requires_interaction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'icon))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remappings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pairing>))
  "Converts a ROS message object to a list"
  (cl:list 'Pairing
    (cl:cons ':name (name msg))
    (cl:cons ':group (group msg))
    (cl:cons ':rapp (rapp msg))
    (cl:cons ':description (description msg))
    (cl:cons ':requires_interaction (requires_interaction msg))
    (cl:cons ':icon (icon msg))
    (cl:cons ':remappings (remappings msg))
    (cl:cons ':parameters (parameters msg))
))
