; Auto-generated. Do not edit!


(cl:in-package zeroconf_msgs-srv)


;//! \htmlinclude AddListener-request.msg.html

(cl:defclass <AddListener-request> (roslisp-msg-protocol:ros-message)
  ((service_type
    :reader service_type
    :initarg :service_type
    :type cl:string
    :initform ""))
)

(cl:defclass AddListener-request (<AddListener-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddListener-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddListener-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<AddListener-request> is deprecated: use zeroconf_msgs-srv:AddListener-request instead.")))

(cl:ensure-generic-function 'service_type-val :lambda-list '(m))
(cl:defmethod service_type-val ((m <AddListener-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:service_type-val is deprecated.  Use zeroconf_msgs-srv:service_type instead.")
  (service_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddListener-request>) ostream)
  "Serializes a message object of type '<AddListener-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddListener-request>) istream)
  "Deserializes a message object of type '<AddListener-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddListener-request>)))
  "Returns string type for a service object of type '<AddListener-request>"
  "zeroconf_msgs/AddListenerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddListener-request)))
  "Returns string type for a service object of type 'AddListener-request"
  "zeroconf_msgs/AddListenerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddListener-request>)))
  "Returns md5sum for a message object of type '<AddListener-request>"
  "05d7490b40a920d3a0ffcc1ebf3a0889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddListener-request)))
  "Returns md5sum for a message object of type 'AddListener-request"
  "05d7490b40a920d3a0ffcc1ebf3a0889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddListener-request>)))
  "Returns full string definition for message of type '<AddListener-request>"
  (cl:format cl:nil "string service_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddListener-request)))
  "Returns full string definition for message of type 'AddListener-request"
  (cl:format cl:nil "string service_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddListener-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddListener-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddListener-request
    (cl:cons ':service_type (service_type msg))
))
;//! \htmlinclude AddListener-response.msg.html

(cl:defclass <AddListener-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddListener-response (<AddListener-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddListener-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddListener-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<AddListener-response> is deprecated: use zeroconf_msgs-srv:AddListener-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AddListener-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:result-val is deprecated.  Use zeroconf_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddListener-response>) ostream)
  "Serializes a message object of type '<AddListener-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddListener-response>) istream)
  "Deserializes a message object of type '<AddListener-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddListener-response>)))
  "Returns string type for a service object of type '<AddListener-response>"
  "zeroconf_msgs/AddListenerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddListener-response)))
  "Returns string type for a service object of type 'AddListener-response"
  "zeroconf_msgs/AddListenerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddListener-response>)))
  "Returns md5sum for a message object of type '<AddListener-response>"
  "05d7490b40a920d3a0ffcc1ebf3a0889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddListener-response)))
  "Returns md5sum for a message object of type 'AddListener-response"
  "05d7490b40a920d3a0ffcc1ebf3a0889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddListener-response>)))
  "Returns full string definition for message of type '<AddListener-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddListener-response)))
  "Returns full string definition for message of type 'AddListener-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddListener-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddListener-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddListener-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddListener)))
  'AddListener-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddListener)))
  'AddListener-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddListener)))
  "Returns string type for a service object of type '<AddListener>"
  "zeroconf_msgs/AddListener")