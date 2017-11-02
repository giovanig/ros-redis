; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-srv)


;//! \htmlinclude StopPairing-request.msg.html

(cl:defclass <StopPairing-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass StopPairing-request (<StopPairing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopPairing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopPairing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<StopPairing-request> is deprecated: use rocon_interaction_msgs-srv:StopPairing-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <StopPairing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:name-val is deprecated.  Use rocon_interaction_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopPairing-request>) ostream)
  "Serializes a message object of type '<StopPairing-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopPairing-request>) istream)
  "Deserializes a message object of type '<StopPairing-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopPairing-request>)))
  "Returns string type for a service object of type '<StopPairing-request>"
  "rocon_interaction_msgs/StopPairingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPairing-request)))
  "Returns string type for a service object of type 'StopPairing-request"
  "rocon_interaction_msgs/StopPairingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopPairing-request>)))
  "Returns md5sum for a message object of type '<StopPairing-request>"
  "f4f70c3c5d522bf6827d164317046e04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopPairing-request)))
  "Returns md5sum for a message object of type 'StopPairing-request"
  "f4f70c3c5d522bf6827d164317046e04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopPairing-request>)))
  "Returns full string definition for message of type '<StopPairing-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopPairing-request)))
  "Returns full string definition for message of type 'StopPairing-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopPairing-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopPairing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopPairing-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude StopPairing-response.msg.html

(cl:defclass <StopPairing-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass StopPairing-response (<StopPairing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopPairing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopPairing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-srv:<StopPairing-response> is deprecated: use rocon_interaction_msgs-srv:StopPairing-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StopPairing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:result-val is deprecated.  Use rocon_interaction_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StopPairing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-srv:message-val is deprecated.  Use rocon_interaction_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopPairing-response>) ostream)
  "Serializes a message object of type '<StopPairing-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopPairing-response>) istream)
  "Deserializes a message object of type '<StopPairing-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopPairing-response>)))
  "Returns string type for a service object of type '<StopPairing-response>"
  "rocon_interaction_msgs/StopPairingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPairing-response)))
  "Returns string type for a service object of type 'StopPairing-response"
  "rocon_interaction_msgs/StopPairingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopPairing-response>)))
  "Returns md5sum for a message object of type '<StopPairing-response>"
  "f4f70c3c5d522bf6827d164317046e04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopPairing-response)))
  "Returns md5sum for a message object of type 'StopPairing-response"
  "f4f70c3c5d522bf6827d164317046e04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopPairing-response>)))
  "Returns full string definition for message of type '<StopPairing-response>"
  (cl:format cl:nil "int32 result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopPairing-response)))
  "Returns full string definition for message of type 'StopPairing-response"
  (cl:format cl:nil "int32 result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopPairing-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopPairing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopPairing-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopPairing)))
  'StopPairing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopPairing)))
  'StopPairing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPairing)))
  "Returns string type for a service object of type '<StopPairing>"
  "rocon_interaction_msgs/StopPairing")