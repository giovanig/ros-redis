; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude PairingStatus.msg.html

(cl:defclass <PairingStatus> (roslisp-msg-protocol:ros-message)
  ((active_pairing
    :reader active_pairing
    :initarg :active_pairing
    :type cl:string
    :initform ""))
)

(cl:defclass PairingStatus (<PairingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PairingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PairingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<PairingStatus> is deprecated: use rocon_interaction_msgs-msg:PairingStatus instead.")))

(cl:ensure-generic-function 'active_pairing-val :lambda-list '(m))
(cl:defmethod active_pairing-val ((m <PairingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:active_pairing-val is deprecated.  Use rocon_interaction_msgs-msg:active_pairing instead.")
  (active_pairing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PairingStatus>) ostream)
  "Serializes a message object of type '<PairingStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'active_pairing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'active_pairing))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PairingStatus>) istream)
  "Deserializes a message object of type '<PairingStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_pairing) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'active_pairing) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PairingStatus>)))
  "Returns string type for a message object of type '<PairingStatus>"
  "rocon_interaction_msgs/PairingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PairingStatus)))
  "Returns string type for a message object of type 'PairingStatus"
  "rocon_interaction_msgs/PairingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PairingStatus>)))
  "Returns md5sum for a message object of type '<PairingStatus>"
  "b404b2284f2d7e4f38394ad5a36be453")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PairingStatus)))
  "Returns md5sum for a message object of type 'PairingStatus"
  "b404b2284f2d7e4f38394ad5a36be453")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PairingStatus>)))
  "Returns full string definition for message of type '<PairingStatus>"
  (cl:format cl:nil "# Use this message to send/receive live information about the interaction~%# manager's state relevant to pairing.~%~%# This is useful for remocons to know when a rapp goes up/down or to~%# provide updates about whether there are ~%~%# The hash id of the active core interaction (one sided pair).~%# Remocons should highlight this as a running interaction in their views.~%string active_pairing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PairingStatus)))
  "Returns full string definition for message of type 'PairingStatus"
  (cl:format cl:nil "# Use this message to send/receive live information about the interaction~%# manager's state relevant to pairing.~%~%# This is useful for remocons to know when a rapp goes up/down or to~%# provide updates about whether there are ~%~%# The hash id of the active core interaction (one sided pair).~%# Remocons should highlight this as a running interaction in their views.~%string active_pairing~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PairingStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'active_pairing))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PairingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PairingStatus
    (cl:cons ':active_pairing (active_pairing msg))
))
