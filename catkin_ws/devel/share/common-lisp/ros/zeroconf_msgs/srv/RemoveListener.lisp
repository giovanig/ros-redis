; Auto-generated. Do not edit!


(cl:in-package zeroconf_msgs-srv)


;//! \htmlinclude RemoveListener-request.msg.html

(cl:defclass <RemoveListener-request> (roslisp-msg-protocol:ros-message)
  ((service_type
    :reader service_type
    :initarg :service_type
    :type cl:string
    :initform ""))
)

(cl:defclass RemoveListener-request (<RemoveListener-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveListener-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveListener-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<RemoveListener-request> is deprecated: use zeroconf_msgs-srv:RemoveListener-request instead.")))

(cl:ensure-generic-function 'service_type-val :lambda-list '(m))
(cl:defmethod service_type-val ((m <RemoveListener-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:service_type-val is deprecated.  Use zeroconf_msgs-srv:service_type instead.")
  (service_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveListener-request>) ostream)
  "Serializes a message object of type '<RemoveListener-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveListener-request>) istream)
  "Deserializes a message object of type '<RemoveListener-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveListener-request>)))
  "Returns string type for a service object of type '<RemoveListener-request>"
  "zeroconf_msgs/RemoveListenerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveListener-request)))
  "Returns string type for a service object of type 'RemoveListener-request"
  "zeroconf_msgs/RemoveListenerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveListener-request>)))
  "Returns md5sum for a message object of type '<RemoveListener-request>"
  "05d7490b40a920d3a0ffcc1ebf3a0889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveListener-request)))
  "Returns md5sum for a message object of type 'RemoveListener-request"
  "05d7490b40a920d3a0ffcc1ebf3a0889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveListener-request>)))
  "Returns full string definition for message of type '<RemoveListener-request>"
  (cl:format cl:nil "string service_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveListener-request)))
  "Returns full string definition for message of type 'RemoveListener-request"
  (cl:format cl:nil "string service_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveListener-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveListener-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveListener-request
    (cl:cons ':service_type (service_type msg))
))
;//! \htmlinclude RemoveListener-response.msg.html

(cl:defclass <RemoveListener-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RemoveListener-response (<RemoveListener-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveListener-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveListener-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<RemoveListener-response> is deprecated: use zeroconf_msgs-srv:RemoveListener-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RemoveListener-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:result-val is deprecated.  Use zeroconf_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveListener-response>) ostream)
  "Serializes a message object of type '<RemoveListener-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveListener-response>) istream)
  "Deserializes a message object of type '<RemoveListener-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveListener-response>)))
  "Returns string type for a service object of type '<RemoveListener-response>"
  "zeroconf_msgs/RemoveListenerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveListener-response)))
  "Returns string type for a service object of type 'RemoveListener-response"
  "zeroconf_msgs/RemoveListenerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveListener-response>)))
  "Returns md5sum for a message object of type '<RemoveListener-response>"
  "05d7490b40a920d3a0ffcc1ebf3a0889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveListener-response)))
  "Returns md5sum for a message object of type 'RemoveListener-response"
  "05d7490b40a920d3a0ffcc1ebf3a0889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveListener-response>)))
  "Returns full string definition for message of type '<RemoveListener-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveListener-response)))
  "Returns full string definition for message of type 'RemoveListener-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveListener-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveListener-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveListener-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveListener)))
  'RemoveListener-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveListener)))
  'RemoveListener-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveListener)))
  "Returns string type for a service object of type '<RemoveListener>"
  "zeroconf_msgs/RemoveListener")