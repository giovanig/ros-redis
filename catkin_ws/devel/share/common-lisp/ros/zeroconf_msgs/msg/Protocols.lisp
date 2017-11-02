; Auto-generated. Do not edit!


(cl:in-package zeroconf_msgs-msg)


;//! \htmlinclude Protocols.msg.html

(cl:defclass <Protocols> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Protocols (<Protocols>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Protocols>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Protocols)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-msg:<Protocols> is deprecated: use zeroconf_msgs-msg:Protocols instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Protocols>)))
    "Constants for message type '<Protocols>"
  '((:UNSPECIFIED . 0)
    (:IPV4 . 1)
    (:IPV6 . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Protocols)))
    "Constants for message type 'Protocols"
  '((:UNSPECIFIED . 0)
    (:IPV4 . 1)
    (:IPV6 . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Protocols>) ostream)
  "Serializes a message object of type '<Protocols>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Protocols>) istream)
  "Deserializes a message object of type '<Protocols>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Protocols>)))
  "Returns string type for a message object of type '<Protocols>"
  "zeroconf_msgs/Protocols")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Protocols)))
  "Returns string type for a message object of type 'Protocols"
  "zeroconf_msgs/Protocols")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Protocols>)))
  "Returns md5sum for a message object of type '<Protocols>"
  "6e173730dc50e42e6497a38ee52e9e4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Protocols)))
  "Returns md5sum for a message object of type 'Protocols"
  "6e173730dc50e42e6497a38ee52e9e4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Protocols>)))
  "Returns full string definition for message of type '<Protocols>"
  (cl:format cl:nil "~%# Protocol definitions used by all zeroconf messages and services.~%~%int8 UNSPECIFIED = 0~%int8 IPV4 = 1~%int8 IPV6 = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Protocols)))
  "Returns full string definition for message of type 'Protocols"
  (cl:format cl:nil "~%# Protocol definitions used by all zeroconf messages and services.~%~%int8 UNSPECIFIED = 0~%int8 IPV4 = 1~%int8 IPV6 = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Protocols>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Protocols>))
  "Converts a ROS message object to a list"
  (cl:list 'Protocols
))
