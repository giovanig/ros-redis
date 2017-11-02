; Auto-generated. Do not edit!


(cl:in-package zeroconf_msgs-srv)


;//! \htmlinclude RemoveService-request.msg.html

(cl:defclass <RemoveService-request> (roslisp-msg-protocol:ros-message)
  ((service
    :reader service
    :initarg :service
    :type zeroconf_msgs-msg:PublishedService
    :initform (cl:make-instance 'zeroconf_msgs-msg:PublishedService)))
)

(cl:defclass RemoveService-request (<RemoveService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<RemoveService-request> is deprecated: use zeroconf_msgs-srv:RemoveService-request instead.")))

(cl:ensure-generic-function 'service-val :lambda-list '(m))
(cl:defmethod service-val ((m <RemoveService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:service-val is deprecated.  Use zeroconf_msgs-srv:service instead.")
  (service m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveService-request>) ostream)
  "Serializes a message object of type '<RemoveService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'service) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveService-request>) istream)
  "Deserializes a message object of type '<RemoveService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'service) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveService-request>)))
  "Returns string type for a service object of type '<RemoveService-request>"
  "zeroconf_msgs/RemoveServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveService-request)))
  "Returns string type for a service object of type 'RemoveService-request"
  "zeroconf_msgs/RemoveServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveService-request>)))
  "Returns md5sum for a message object of type '<RemoveService-request>"
  "2ae0e420b2f58ab49b813cd81e42d4b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveService-request)))
  "Returns md5sum for a message object of type 'RemoveService-request"
  "2ae0e420b2f58ab49b813cd81e42d4b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveService-request>)))
  "Returns full string definition for message of type '<RemoveService-request>"
  (cl:format cl:nil "zeroconf_msgs/PublishedService service~%~%================================================================================~%MSG: zeroconf_msgs/PublishedService~%#~%# Provides all the properties required for publishing of a zeroconf service.~%~%string name~%string type~%string domain~%int32 port~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveService-request)))
  "Returns full string definition for message of type 'RemoveService-request"
  (cl:format cl:nil "zeroconf_msgs/PublishedService service~%~%================================================================================~%MSG: zeroconf_msgs/PublishedService~%#~%# Provides all the properties required for publishing of a zeroconf service.~%~%string name~%string type~%string domain~%int32 port~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'service))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveService-request
    (cl:cons ':service (service msg))
))
;//! \htmlinclude RemoveService-response.msg.html

(cl:defclass <RemoveService-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RemoveService-response (<RemoveService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<RemoveService-response> is deprecated: use zeroconf_msgs-srv:RemoveService-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RemoveService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:result-val is deprecated.  Use zeroconf_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveService-response>) ostream)
  "Serializes a message object of type '<RemoveService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveService-response>) istream)
  "Deserializes a message object of type '<RemoveService-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveService-response>)))
  "Returns string type for a service object of type '<RemoveService-response>"
  "zeroconf_msgs/RemoveServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveService-response)))
  "Returns string type for a service object of type 'RemoveService-response"
  "zeroconf_msgs/RemoveServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveService-response>)))
  "Returns md5sum for a message object of type '<RemoveService-response>"
  "2ae0e420b2f58ab49b813cd81e42d4b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveService-response)))
  "Returns md5sum for a message object of type 'RemoveService-response"
  "2ae0e420b2f58ab49b813cd81e42d4b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveService-response>)))
  "Returns full string definition for message of type '<RemoveService-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveService-response)))
  "Returns full string definition for message of type 'RemoveService-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveService-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveService)))
  'RemoveService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveService)))
  'RemoveService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveService)))
  "Returns string type for a service object of type '<RemoveService>"
  "zeroconf_msgs/RemoveService")