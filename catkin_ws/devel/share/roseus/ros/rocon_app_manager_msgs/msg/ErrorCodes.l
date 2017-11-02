;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::ErrorCodes)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'ErrorCodes (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES")
  (make-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))

(in-package "ROS")
;;//! \htmlinclude ErrorCodes.msg.html


(intern "*SUCCESS*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*SUCCESS* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*SUCCESS* 0)
(intern "*UNKNOWN*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*UNKNOWN* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*UNKNOWN* 1)
(intern "*MULTI_RAPP_NOT_SUPPORTED*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*MULTI_RAPP_NOT_SUPPORTED* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*MULTI_RAPP_NOT_SUPPORTED* 10)
(intern "*RAPP_IS_NOT_RUNNING*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*RAPP_IS_NOT_RUNNING* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*RAPP_IS_NOT_RUNNING* 20)
(intern "*RAPP_IS_NOT_AVAILABLE*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*RAPP_IS_NOT_AVAILABLE* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*RAPP_IS_NOT_AVAILABLE* 21)
(intern "*LOCAL_INVITATIONS_ONLY*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*LOCAL_INVITATIONS_ONLY* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*LOCAL_INVITATIONS_ONLY* 30)
(intern "*NO_LOCAL_GATEWAY*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*NO_LOCAL_GATEWAY* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*NO_LOCAL_GATEWAY* 31)
(intern "*ALREADY_REMOTE_CONTROLLED*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*ALREADY_REMOTE_CONTROLLED* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*ALREADY_REMOTE_CONTROLLED* 32)
(intern "*NOT_CURRENT_REMOTE_CONTROLLER*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*NOT_CURRENT_REMOTE_CONTROLLER* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*NOT_CURRENT_REMOTE_CONTROLLER* 33)
(intern "*INVITING_CONTROLLER_NOT_WHITELISTED*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*INVITING_CONTROLLER_NOT_WHITELISTED* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*INVITING_CONTROLLER_NOT_WHITELISTED* 34)
(intern "*INVITING_CONTROLLER_BLACKLISTED*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*INVITING_CONTROLLER_BLACKLISTED* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*INVITING_CONTROLLER_BLACKLISTED* 35)
(intern "*CLIENT_CONNECTION_DISRUPTED*" (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(shadow '*CLIENT_CONNECTION_DISRUPTED* (find-package "ROCON_APP_MANAGER_MSGS::ERRORCODES"))
(defconstant rocon_app_manager_msgs::ErrorCodes::*CLIENT_CONNECTION_DISRUPTED* 36)
(defclass rocon_app_manager_msgs::ErrorCodes
  :super ros::object
  :slots ())

(defmethod rocon_app_manager_msgs::ErrorCodes
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

(setf (get rocon_app_manager_msgs::ErrorCodes :md5sum-) "cec38b743e8d5698477f7be4d8bfebb8")
(setf (get rocon_app_manager_msgs::ErrorCodes :datatype-) "rocon_app_manager_msgs/ErrorCodes")
(setf (get rocon_app_manager_msgs::ErrorCodes :definition-)
      "# Error types for the rocon app manager

# General
int8 SUCCESS = 0
int8 UNKNOWN = 1

# Start
int8 MULTI_RAPP_NOT_SUPPORTED = 10

# Stop Rapp
int8 RAPP_IS_NOT_RUNNING = 20
int8 RAPP_IS_NOT_AVAILABLE = 21

# Invitations
int8 LOCAL_INVITATIONS_ONLY = 30
int8 NO_LOCAL_GATEWAY = 31
int8 ALREADY_REMOTE_CONTROLLED = 32
int8 NOT_CURRENT_REMOTE_CONTROLLER = 33
int8 INVITING_CONTROLLER_NOT_WHITELISTED = 34
int8 INVITING_CONTROLLER_BLACKLISTED = 35
int8 CLIENT_CONNECTION_DISRUPTED = 36
")



(provide :rocon_app_manager_msgs/ErrorCodes "cec38b743e8d5698477f7be4d8bfebb8")


