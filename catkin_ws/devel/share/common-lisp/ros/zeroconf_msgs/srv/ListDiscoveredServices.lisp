; Auto-generated. Do not edit!


(cl:in-package zeroconf_msgs-srv)


;//! \htmlinclude ListDiscoveredServices-request.msg.html

(cl:defclass <ListDiscoveredServices-request> (roslisp-msg-protocol:ros-message)
  ((service_type
    :reader service_type
    :initarg :service_type
    :type cl:string
    :initform ""))
)

(cl:defclass ListDiscoveredServices-request (<ListDiscoveredServices-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListDiscoveredServices-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListDiscoveredServices-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<ListDiscoveredServices-request> is deprecated: use zeroconf_msgs-srv:ListDiscoveredServices-request instead.")))

(cl:ensure-generic-function 'service_type-val :lambda-list '(m))
(cl:defmethod service_type-val ((m <ListDiscoveredServices-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:service_type-val is deprecated.  Use zeroconf_msgs-srv:service_type instead.")
  (service_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListDiscoveredServices-request>) ostream)
  "Serializes a message object of type '<ListDiscoveredServices-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListDiscoveredServices-request>) istream)
  "Deserializes a message object of type '<ListDiscoveredServices-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'service_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'service_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListDiscoveredServices-request>)))
  "Returns string type for a service object of type '<ListDiscoveredServices-request>"
  "zeroconf_msgs/ListDiscoveredServicesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListDiscoveredServices-request)))
  "Returns string type for a service object of type 'ListDiscoveredServices-request"
  "zeroconf_msgs/ListDiscoveredServicesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListDiscoveredServices-request>)))
  "Returns md5sum for a message object of type '<ListDiscoveredServices-request>"
  "5e4f7a51e03f794adcd5dbfc4a5acfb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListDiscoveredServices-request)))
  "Returns md5sum for a message object of type 'ListDiscoveredServices-request"
  "5e4f7a51e03f794adcd5dbfc4a5acfb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListDiscoveredServices-request>)))
  "Returns full string definition for message of type '<ListDiscoveredServices-request>"
  (cl:format cl:nil "string service_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListDiscoveredServices-request)))
  "Returns full string definition for message of type 'ListDiscoveredServices-request"
  (cl:format cl:nil "string service_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListDiscoveredServices-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListDiscoveredServices-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListDiscoveredServices-request
    (cl:cons ':service_type (service_type msg))
))
;//! \htmlinclude ListDiscoveredServices-response.msg.html

(cl:defclass <ListDiscoveredServices-response> (roslisp-msg-protocol:ros-message)
  ((services
    :reader services
    :initarg :services
    :type (cl:vector zeroconf_msgs-msg:DiscoveredService)
   :initform (cl:make-array 0 :element-type 'zeroconf_msgs-msg:DiscoveredService :initial-element (cl:make-instance 'zeroconf_msgs-msg:DiscoveredService))))
)

(cl:defclass ListDiscoveredServices-response (<ListDiscoveredServices-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListDiscoveredServices-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListDiscoveredServices-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<ListDiscoveredServices-response> is deprecated: use zeroconf_msgs-srv:ListDiscoveredServices-response instead.")))

(cl:ensure-generic-function 'services-val :lambda-list '(m))
(cl:defmethod services-val ((m <ListDiscoveredServices-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:services-val is deprecated.  Use zeroconf_msgs-srv:services instead.")
  (services m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListDiscoveredServices-response>) ostream)
  "Serializes a message object of type '<ListDiscoveredServices-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'services))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'services))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListDiscoveredServices-response>) istream)
  "Deserializes a message object of type '<ListDiscoveredServices-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'services) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'services)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zeroconf_msgs-msg:DiscoveredService))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListDiscoveredServices-response>)))
  "Returns string type for a service object of type '<ListDiscoveredServices-response>"
  "zeroconf_msgs/ListDiscoveredServicesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListDiscoveredServices-response)))
  "Returns string type for a service object of type 'ListDiscoveredServices-response"
  "zeroconf_msgs/ListDiscoveredServicesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListDiscoveredServices-response>)))
  "Returns md5sum for a message object of type '<ListDiscoveredServices-response>"
  "5e4f7a51e03f794adcd5dbfc4a5acfb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListDiscoveredServices-response)))
  "Returns md5sum for a message object of type 'ListDiscoveredServices-response"
  "5e4f7a51e03f794adcd5dbfc4a5acfb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListDiscoveredServices-response>)))
  "Returns full string definition for message of type '<ListDiscoveredServices-response>"
  (cl:format cl:nil "zeroconf_msgs/DiscoveredService[] services~%~%~%================================================================================~%MSG: zeroconf_msgs/DiscoveredService~%#~%# Provides all the properties required for definition of a discovered ~%# zeroconf service. Note that it contains rather alot more information~%# than that which is used to publish a zeroconf service.~%~%# Service Part~%string name~%string type~%string domain~%string description~%~%# Resolved part~%string hostname~%string[] ipv4_addresses~%string[] ipv6_addresses~%int32 port~%~%# These are detailed variables that you should not normally need~%# and can be safely ignored in most circumstances (currently used~%# by the avahi implementation).~%~%uint32 cookie~%bool is_local~%bool our_own~%bool wide_area~%bool multicast~%bool cached~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListDiscoveredServices-response)))
  "Returns full string definition for message of type 'ListDiscoveredServices-response"
  (cl:format cl:nil "zeroconf_msgs/DiscoveredService[] services~%~%~%================================================================================~%MSG: zeroconf_msgs/DiscoveredService~%#~%# Provides all the properties required for definition of a discovered ~%# zeroconf service. Note that it contains rather alot more information~%# than that which is used to publish a zeroconf service.~%~%# Service Part~%string name~%string type~%string domain~%string description~%~%# Resolved part~%string hostname~%string[] ipv4_addresses~%string[] ipv6_addresses~%int32 port~%~%# These are detailed variables that you should not normally need~%# and can be safely ignored in most circumstances (currently used~%# by the avahi implementation).~%~%uint32 cookie~%bool is_local~%bool our_own~%bool wide_area~%bool multicast~%bool cached~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListDiscoveredServices-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListDiscoveredServices-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListDiscoveredServices-response
    (cl:cons ':services (services msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListDiscoveredServices)))
  'ListDiscoveredServices-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListDiscoveredServices)))
  'ListDiscoveredServices-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListDiscoveredServices)))
  "Returns string type for a service object of type '<ListDiscoveredServices>"
  "zeroconf_msgs/ListDiscoveredServices")