; Auto-generated. Do not edit!


(cl:in-package zeroconf_msgs-srv)


;//! \htmlinclude AddService-request.msg.html

(cl:defclass <AddService-request> (roslisp-msg-protocol:ros-message)
  ((service
    :reader service
    :initarg :service
    :type zeroconf_msgs-msg:PublishedService
    :initform (cl:make-instance 'zeroconf_msgs-msg:PublishedService)))
)

(cl:defclass AddService-request (<AddService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<AddService-request> is deprecated: use zeroconf_msgs-srv:AddService-request instead.")))

(cl:ensure-generic-function 'service-val :lambda-list '(m))
(cl:defmethod service-val ((m <AddService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:service-val is deprecated.  Use zeroconf_msgs-srv:service instead.")
  (service m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddService-request>) ostream)
  "Serializes a message object of type '<AddService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'service) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddService-request>) istream)
  "Deserializes a message object of type '<AddService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'service) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddService-request>)))
  "Returns string type for a service object of type '<AddService-request>"
  "zeroconf_msgs/AddServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddService-request)))
  "Returns string type for a service object of type 'AddService-request"
  "zeroconf_msgs/AddServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddService-request>)))
  "Returns md5sum for a message object of type '<AddService-request>"
  "2ae0e420b2f58ab49b813cd81e42d4b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddService-request)))
  "Returns md5sum for a message object of type 'AddService-request"
  "2ae0e420b2f58ab49b813cd81e42d4b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddService-request>)))
  "Returns full string definition for message of type '<AddService-request>"
  (cl:format cl:nil "zeroconf_msgs/PublishedService service~%~%================================================================================~%MSG: zeroconf_msgs/PublishedService~%#~%# Provides all the properties required for publishing of a zeroconf service.~%~%string name~%string type~%string domain~%int32 port~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddService-request)))
  "Returns full string definition for message of type 'AddService-request"
  (cl:format cl:nil "zeroconf_msgs/PublishedService service~%~%================================================================================~%MSG: zeroconf_msgs/PublishedService~%#~%# Provides all the properties required for publishing of a zeroconf service.~%~%string name~%string type~%string domain~%int32 port~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'service))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddService-request
    (cl:cons ':service (service msg))
))
;//! \htmlinclude AddService-response.msg.html

(cl:defclass <AddService-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddService-response (<AddService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-srv:<AddService-response> is deprecated: use zeroconf_msgs-srv:AddService-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AddService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-srv:result-val is deprecated.  Use zeroconf_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddService-response>) ostream)
  "Serializes a message object of type '<AddService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddService-response>) istream)
  "Deserializes a message object of type '<AddService-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddService-response>)))
  "Returns string type for a service object of type '<AddService-response>"
  "zeroconf_msgs/AddServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddService-response)))
  "Returns string type for a service object of type 'AddService-response"
  "zeroconf_msgs/AddServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddService-response>)))
  "Returns md5sum for a message object of type '<AddService-response>"
  "2ae0e420b2f58ab49b813cd81e42d4b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddService-response)))
  "Returns md5sum for a message object of type 'AddService-response"
  "2ae0e420b2f58ab49b813cd81e42d4b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddService-response>)))
  "Returns full string definition for message of type '<AddService-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddService-response)))
  "Returns full string definition for message of type 'AddService-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddService-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddService)))
  'AddService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddService)))
  'AddService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddService)))
  "Returns string type for a service object of type '<AddService>"
  "zeroconf_msgs/AddService")