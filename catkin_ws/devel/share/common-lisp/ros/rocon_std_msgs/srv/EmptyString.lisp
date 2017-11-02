; Auto-generated. Do not edit!


(cl:in-package rocon_std_msgs-srv)


;//! \htmlinclude EmptyString-request.msg.html

(cl:defclass <EmptyString-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmptyString-request (<EmptyString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_std_msgs-srv:<EmptyString-request> is deprecated: use rocon_std_msgs-srv:EmptyString-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyString-request>) ostream)
  "Serializes a message object of type '<EmptyString-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyString-request>) istream)
  "Deserializes a message object of type '<EmptyString-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyString-request>)))
  "Returns string type for a service object of type '<EmptyString-request>"
  "rocon_std_msgs/EmptyStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyString-request)))
  "Returns string type for a service object of type 'EmptyString-request"
  "rocon_std_msgs/EmptyStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyString-request>)))
  "Returns md5sum for a message object of type '<EmptyString-request>"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyString-request)))
  "Returns md5sum for a message object of type 'EmptyString-request"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyString-request>)))
  "Returns full string definition for message of type '<EmptyString-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyString-request)))
  "Returns full string definition for message of type 'EmptyString-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyString-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyString-request
))
;//! \htmlinclude EmptyString-response.msg.html

(cl:defclass <EmptyString-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass EmptyString-response (<EmptyString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_std_msgs-srv:<EmptyString-response> is deprecated: use rocon_std_msgs-srv:EmptyString-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EmptyString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_std_msgs-srv:data-val is deprecated.  Use rocon_std_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyString-response>) ostream)
  "Serializes a message object of type '<EmptyString-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyString-response>) istream)
  "Deserializes a message object of type '<EmptyString-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyString-response>)))
  "Returns string type for a service object of type '<EmptyString-response>"
  "rocon_std_msgs/EmptyStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyString-response)))
  "Returns string type for a service object of type 'EmptyString-response"
  "rocon_std_msgs/EmptyStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyString-response>)))
  "Returns md5sum for a message object of type '<EmptyString-response>"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyString-response)))
  "Returns md5sum for a message object of type 'EmptyString-response"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyString-response>)))
  "Returns full string definition for message of type '<EmptyString-response>"
  (cl:format cl:nil "string data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyString-response)))
  "Returns full string definition for message of type 'EmptyString-response"
  (cl:format cl:nil "string data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyString-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyString-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmptyString)))
  'EmptyString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmptyString)))
  'EmptyString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyString)))
  "Returns string type for a service object of type '<EmptyString>"
  "rocon_std_msgs/EmptyString")