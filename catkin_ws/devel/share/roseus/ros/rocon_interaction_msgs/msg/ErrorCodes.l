;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::ErrorCodes)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'ErrorCodes (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::ERRORCODES")
  (make-package "ROCON_INTERACTION_MSGS::ERRORCODES"))

(in-package "ROS")
;;//! \htmlinclude ErrorCodes.msg.html


(intern "*SUCCESS*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*SUCCESS* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*SUCCESS* 0)
(intern "*INTERACTION_UNAVAILABLE*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*INTERACTION_UNAVAILABLE* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*INTERACTION_UNAVAILABLE* 20)
(intern "*INTERACTION_QUOTA_REACHED*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*INTERACTION_QUOTA_REACHED* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*INTERACTION_QUOTA_REACHED* 21)
(intern "*PAIRING_UNAVAILABLE*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*PAIRING_UNAVAILABLE* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*PAIRING_UNAVAILABLE* 30)
(intern "*START_PAIRING_FAILED*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*START_PAIRING_FAILED* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*START_PAIRING_FAILED* 31)
(intern "*ALREADY_PAIRING*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*ALREADY_PAIRING* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*ALREADY_PAIRING* 32)
(intern "*REQUIRED_RAPP_IS_NOT_RUNNING*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*REQUIRED_RAPP_IS_NOT_RUNNING* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*REQUIRED_RAPP_IS_NOT_RUNNING* 33)
(intern "*DIFFERENT_RAPP_IS_RUNNING*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*DIFFERENT_RAPP_IS_RUNNING* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*DIFFERENT_RAPP_IS_RUNNING* 34)
(intern "*NOT_PAIRING*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*NOT_PAIRING* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*NOT_PAIRING* 35)
(intern "*STOP_PAIRING_FAILED*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*STOP_PAIRING_FAILED* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*STOP_PAIRING_FAILED* 36)
(intern "*REQUIRED_INTERACTION_IS_NOT_AVAILABLE*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*REQUIRED_INTERACTION_IS_NOT_AVAILABLE* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*REQUIRED_INTERACTION_IS_NOT_AVAILABLE* 37)
(intern "*REQUIRED_INTERACTION_FAILED*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*REQUIRED_INTERACTION_FAILED* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*REQUIRED_INTERACTION_FAILED* 38)
(intern "*MSG_INTERACTION_UNAVAILABLE*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_INTERACTION_UNAVAILABLE* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_INTERACTION_UNAVAILABLE* "This interaction is not available for use")
(intern "*MSG_PAIRING_UNAVAILABLE*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_PAIRING_UNAVAILABLE* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_PAIRING_UNAVAILABLE* "The specified pairing does not exist")
(intern "*MSG_INTERACTION_QUOTA_REACHED*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_INTERACTION_QUOTA_REACHED* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_INTERACTION_QUOTA_REACHED* "More connections of this type not permitted")
(intern "*MSG_REQUIRED_RAPP_IS_NOT_RUNNING*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_REQUIRED_RAPP_IS_NOT_RUNNING* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_REQUIRED_RAPP_IS_NOT_RUNNING* "No rapp is running and this pairing interaction requires one to be")
(intern "*MSG_DIFFERENT_RAPP_IS_RUNNING*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_DIFFERENT_RAPP_IS_RUNNING* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_DIFFERENT_RAPP_IS_RUNNING* "A different rapp to that required is already running")
(intern "*MSG_START_PAIRING_FAILED*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_START_PAIRING_FAILED* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_START_PAIRING_FAILED* "Failed to start the pairing (rapp)")
(intern "*MSG_STOP_PAIRING_FAILED*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_STOP_PAIRING_FAILED* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_STOP_PAIRING_FAILED* "Failed to stop a pairing (rapp)")
(intern "*MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE* "The required interaction is not available")
(intern "*MSG_REQUIRED_INTERACTION_FAILED*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_REQUIRED_INTERACTION_FAILED* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_REQUIRED_INTERACTION_FAILED* "The required interaction failed to start")
(intern "*MSG_ALREADY_PAIRING*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_ALREADY_PAIRING* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_ALREADY_PAIRING* "Already pairing, cannot start another pairing")
(intern "*MSG_NOT_PAIRING*" (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(shadow '*MSG_NOT_PAIRING* (find-package "ROCON_INTERACTION_MSGS::ERRORCODES"))
(defconstant rocon_interaction_msgs::ErrorCodes::*MSG_NOT_PAIRING* "This interaction manager is not managing paired interactions")
(defclass rocon_interaction_msgs::ErrorCodes
  :super ros::object
  :slots ())

(defmethod rocon_interaction_msgs::ErrorCodes
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get rocon_interaction_msgs::ErrorCodes :md5sum-) "60cce08cdead9a60f088e024206793f8")
(setf (get rocon_interaction_msgs::ErrorCodes :datatype-) "rocon_interaction_msgs/ErrorCodes")
(setf (get rocon_interaction_msgs::ErrorCodes :definition-)
      "# Error types for interactions

int8 SUCCESS = 0

# Interaction errors
int8 INTERACTION_UNAVAILABLE = 20    # The requested role-app pair is not available
int8 INTERACTION_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached 

# Pairing errors
int8 PAIRING_UNAVAILABLE          = 30
int8 START_PAIRING_FAILED         = 31
int8 ALREADY_PAIRING              = 32
int8 REQUIRED_RAPP_IS_NOT_RUNNING = 33
int8 DIFFERENT_RAPP_IS_RUNNING    = 34
int8 NOT_PAIRING                  = 35
int8 STOP_PAIRING_FAILED          = 36
int8 REQUIRED_INTERACTION_IS_NOT_AVAILABLE = 37
int8 REQUIRED_INTERACTION_FAILED  = 38

string MSG_INTERACTION_UNAVAILABLE                  = This interaction is not available for use
string MSG_PAIRING_UNAVAILABLE                      = The specified pairing does not exist
string MSG_INTERACTION_QUOTA_REACHED                = More connections of this type not permitted
string MSG_REQUIRED_RAPP_IS_NOT_RUNNING             = No rapp is running and this pairing interaction requires one to be
string MSG_DIFFERENT_RAPP_IS_RUNNING                = A different rapp to that required is already running
string MSG_START_PAIRING_FAILED                     = Failed to start the pairing (rapp)
string MSG_STOP_PAIRING_FAILED                      = Failed to stop a pairing (rapp)
string MSG_REQUIRED_INTERACTION_IS_NOT_AVAILABLE    = The required interaction is not available
string MSG_REQUIRED_INTERACTION_FAILED              = The required interaction failed to start
string MSG_ALREADY_PAIRING                          = Already pairing, cannot start another pairing
string MSG_NOT_PAIRING                              = This interaction manager is not managing paired interactions

")



(provide :rocon_interaction_msgs/ErrorCodes "60cce08cdead9a60f088e024206793f8")


