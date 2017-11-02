; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude ErrorCodes.msg.html

(cl:defclass <ErrorCodes> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ErrorCodes (<ErrorCodes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorCodes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorCodes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<ErrorCodes> is deprecated: use rocon_interaction_msgs-msg:ErrorCodes instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ErrorCodes>)))
    "Constants for message type '<ErrorCodes>"
  '((:SUCCESS . 0)
    (:INTERACTION_UNAVAILABLE . 20)
    (:INTERACTION_QUOTA_REACHED . 21)
    (:PAIRING_UNAVAILABLE . 30)
    (:START_PAIRING_FAILED . 31)
    (:ALREADY_PAIRING . 32)
    (:REQUIRED_RAPP_IS_NOT_RUNNING . 33)
    (:DIFFERENT_RAPP_IS_RUNNING . 34)
    (:NOT_PAIRING . 35)
    (:STOP_PAIRING_FAILED . 36)
    (:REQUIRED_INTERACTION_IS_NOT_AVAILABLE . 37)
    (:REQUIRED_INTERACTION_FAILED . 38)
    (:MSG_INTERACTION_UNAVAILABLE . This interaction is not available for use)
    (:MSG_PAIRING_UNAVAILABLE . The specified pairing does not exist)
    (:MSG_INTERACTION_QUOTA_REACHED . More connections of this type not permitted)
    (:MSG_REQUIRED_RAPP_IS_NOT_RUNNING . No rapp is running and this pairing interaction requires one to be)
    (:MSG_DIFFERENT_RAPP_IS_RUNNING . A different rapp to that required is already running)
    (:MSG_START_PAIRING_FAILED . Failed to start the pairing (rapp))
    (:MSG_STOP_PAIRING_FAILED . Failed to stop a pairing (rapp))
    (:MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE . The required interaction is not available)
    (:MSG_REQUIRED_INTERACTION_FAILED . The required interaction failed to start)
    (:MSG_ALREADY_PAIRING . Already pairing, cannot start another pairing)
    (:MSG_NOT_PAIRING . This interaction manager is not managing paired interactions))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ErrorCodes)))
    "Constants for message type 'ErrorCodes"
  '((:SUCCESS . 0)
    (:INTERACTION_UNAVAILABLE . 20)
    (:INTERACTION_QUOTA_REACHED . 21)
    (:PAIRING_UNAVAILABLE . 30)
    (:START_PAIRING_FAILED . 31)
    (:ALREADY_PAIRING . 32)
    (:REQUIRED_RAPP_IS_NOT_RUNNING . 33)
    (:DIFFERENT_RAPP_IS_RUNNING . 34)
    (:NOT_PAIRING . 35)
    (:STOP_PAIRING_FAILED . 36)
    (:REQUIRED_INTERACTION_IS_NOT_AVAILABLE . 37)
    (:REQUIRED_INTERACTION_FAILED . 38)
    (:MSG_INTERACTION_UNAVAILABLE . This interaction is not available for use)
    (:MSG_PAIRING_UNAVAILABLE . The specified pairing does not exist)
    (:MSG_INTERACTION_QUOTA_REACHED . More connections of this type not permitted)
    (:MSG_REQUIRED_RAPP_IS_NOT_RUNNING . No rapp is running and this pairing interaction requires one to be)
    (:MSG_DIFFERENT_RAPP_IS_RUNNING . A different rapp to that required is already running)
    (:MSG_START_PAIRING_FAILED . Failed to start the pairing (rapp))
    (:MSG_STOP_PAIRING_FAILED . Failed to stop a pairing (rapp))
    (:MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE . The required interaction is not available)
    (:MSG_REQUIRED_INTERACTION_FAILED . The required interaction failed to start)
    (:MSG_ALREADY_PAIRING . Already pairing, cannot start another pairing)
    (:MSG_NOT_PAIRING . This interaction manager is not managing paired interactions))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorCodes>) ostream)
  "Serializes a message object of type '<ErrorCodes>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorCodes>) istream)
  "Deserializes a message object of type '<ErrorCodes>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorCodes>)))
  "Returns string type for a message object of type '<ErrorCodes>"
  "rocon_interaction_msgs/ErrorCodes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorCodes)))
  "Returns string type for a message object of type 'ErrorCodes"
  "rocon_interaction_msgs/ErrorCodes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorCodes>)))
  "Returns md5sum for a message object of type '<ErrorCodes>"
  "60cce08cdead9a60f088e024206793f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorCodes)))
  "Returns md5sum for a message object of type 'ErrorCodes"
  "60cce08cdead9a60f088e024206793f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorCodes>)))
  "Returns full string definition for message of type '<ErrorCodes>"
  (cl:format cl:nil "# Error types for interactions~%~%int8 SUCCESS = 0~%~%# Interaction errors~%int8 INTERACTION_UNAVAILABLE = 20    # The requested role-app pair is not available~%int8 INTERACTION_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached ~%~%# Pairing errors~%int8 PAIRING_UNAVAILABLE          = 30~%int8 START_PAIRING_FAILED         = 31~%int8 ALREADY_PAIRING              = 32~%int8 REQUIRED_RAPP_IS_NOT_RUNNING = 33~%int8 DIFFERENT_RAPP_IS_RUNNING    = 34~%int8 NOT_PAIRING                  = 35~%int8 STOP_PAIRING_FAILED          = 36~%int8 REQUIRED_INTERACTION_IS_NOT_AVAILABLE = 37~%int8 REQUIRED_INTERACTION_FAILED  = 38~%~%string MSG_INTERACTION_UNAVAILABLE                  = This interaction is not available for use~%string MSG_PAIRING_UNAVAILABLE                      = The specified pairing does not exist~%string MSG_INTERACTION_QUOTA_REACHED                = More connections of this type not permitted~%string MSG_REQUIRED_RAPP_IS_NOT_RUNNING             = No rapp is running and this pairing interaction requires one to be~%string MSG_DIFFERENT_RAPP_IS_RUNNING                = A different rapp to that required is already running~%string MSG_START_PAIRING_FAILED                     = Failed to start the pairing (rapp)~%string MSG_STOP_PAIRING_FAILED                      = Failed to stop a pairing (rapp)~%string MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE    = The required interaction is not available~%string MSG_REQUIRED_INTERACTION_FAILED              = The required interaction failed to start~%string MSG_ALREADY_PAIRING                          = Already pairing, cannot start another pairing~%string MSG_NOT_PAIRING                              = This interaction manager is not managing paired interactions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorCodes)))
  "Returns full string definition for message of type 'ErrorCodes"
  (cl:format cl:nil "# Error types for interactions~%~%int8 SUCCESS = 0~%~%# Interaction errors~%int8 INTERACTION_UNAVAILABLE = 20    # The requested role-app pair is not available~%int8 INTERACTION_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached ~%~%# Pairing errors~%int8 PAIRING_UNAVAILABLE          = 30~%int8 START_PAIRING_FAILED         = 31~%int8 ALREADY_PAIRING              = 32~%int8 REQUIRED_RAPP_IS_NOT_RUNNING = 33~%int8 DIFFERENT_RAPP_IS_RUNNING    = 34~%int8 NOT_PAIRING                  = 35~%int8 STOP_PAIRING_FAILED          = 36~%int8 REQUIRED_INTERACTION_IS_NOT_AVAILABLE = 37~%int8 REQUIRED_INTERACTION_FAILED  = 38~%~%string MSG_INTERACTION_UNAVAILABLE                  = This interaction is not available for use~%string MSG_PAIRING_UNAVAILABLE                      = The specified pairing does not exist~%string MSG_INTERACTION_QUOTA_REACHED                = More connections of this type not permitted~%string MSG_REQUIRED_RAPP_IS_NOT_RUNNING             = No rapp is running and this pairing interaction requires one to be~%string MSG_DIFFERENT_RAPP_IS_RUNNING                = A different rapp to that required is already running~%string MSG_START_PAIRING_FAILED                     = Failed to start the pairing (rapp)~%string MSG_STOP_PAIRING_FAILED                      = Failed to stop a pairing (rapp)~%string MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE    = The required interaction is not available~%string MSG_REQUIRED_INTERACTION_FAILED              = The required interaction failed to start~%string MSG_ALREADY_PAIRING                          = Already pairing, cannot start another pairing~%string MSG_NOT_PAIRING                              = This interaction manager is not managing paired interactions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorCodes>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorCodes>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorCodes
))
