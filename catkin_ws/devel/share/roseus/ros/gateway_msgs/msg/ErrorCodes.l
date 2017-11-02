;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::ErrorCodes)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'ErrorCodes (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::ERRORCODES")
  (make-package "GATEWAY_MSGS::ERRORCODES"))

(in-package "ROS")
;;//! \htmlinclude ErrorCodes.msg.html


(intern "*SUCCESS*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*SUCCESS* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*SUCCESS* 0)
(intern "*NO_HUB_CONNECTION*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*NO_HUB_CONNECTION* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*NO_HUB_CONNECTION* 1)
(intern "*HUB_CONNECTION_ALREADY_EXISTS*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*HUB_CONNECTION_ALREADY_EXISTS* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*HUB_CONNECTION_ALREADY_EXISTS* 11)
(intern "*HUB_CONNECTION_UNRESOLVABLE*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*HUB_CONNECTION_UNRESOLVABLE* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*HUB_CONNECTION_UNRESOLVABLE* 12)
(intern "*HUB_CONNECTION_BLACKLISTED*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*HUB_CONNECTION_BLACKLISTED* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*HUB_CONNECTION_BLACKLISTED* 13)
(intern "*HUB_CONNECTION_FAILED*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*HUB_CONNECTION_FAILED* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*HUB_CONNECTION_FAILED* 14)
(intern "*HUB_CONNECTION_NOT_IN_NONEMPTY_WHITELIST*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*HUB_CONNECTION_NOT_IN_NONEMPTY_WHITELIST* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*HUB_CONNECTION_NOT_IN_NONEMPTY_WHITELIST* 15)
(intern "*HUB_NAME_NOT_FOUND*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*HUB_NAME_NOT_FOUND* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*HUB_NAME_NOT_FOUND* 16)
(intern "*HUB_CONNECTION_LOST*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*HUB_CONNECTION_LOST* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*HUB_CONNECTION_LOST* 17)
(intern "*HUB_UNKNOWN_ERROR*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*HUB_UNKNOWN_ERROR* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*HUB_UNKNOWN_ERROR* 19)
(intern "*FLIP_RULE_ALREADY_EXISTS*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*FLIP_RULE_ALREADY_EXISTS* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*FLIP_RULE_ALREADY_EXISTS* 22)
(intern "*FLIP_PATTERN_ALREDY_EXISTS*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*FLIP_PATTERN_ALREDY_EXISTS* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*FLIP_PATTERN_ALREDY_EXISTS* 23)
(intern "*FLIP_REMOTE_GATEWAY_FIREWALLING*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*FLIP_REMOTE_GATEWAY_FIREWALLING* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*FLIP_REMOTE_GATEWAY_FIREWALLING* 24)
(intern "*ADVERTISEMENT_EXISTS*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*ADVERTISEMENT_EXISTS* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*ADVERTISEMENT_EXISTS* 31)
(intern "*ADVERTISEMENT_NOT_FOUND*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*ADVERTISEMENT_NOT_FOUND* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*ADVERTISEMENT_NOT_FOUND* 32)
(intern "*UNKNOWN_ADVERTISEMENT_ERROR*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*UNKNOWN_ADVERTISEMENT_ERROR* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*UNKNOWN_ADVERTISEMENT_ERROR* 39)
(intern "*PULL_RULE_ALREADY_EXISTS*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*PULL_RULE_ALREADY_EXISTS* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*PULL_RULE_ALREADY_EXISTS* 41)
(intern "*REMOTE_GATEWAY_NOT_VISIBLE*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*REMOTE_GATEWAY_NOT_VISIBLE* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*REMOTE_GATEWAY_NOT_VISIBLE* 51)
(intern "*REMOTE_GATEWAY_SELF_IS_NOT*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*REMOTE_GATEWAY_SELF_IS_NOT* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*REMOTE_GATEWAY_SELF_IS_NOT* 52)
(intern "*REMOTE_GATEWAY_TARGET_HAS_MULTIPLE_MATCHES*" (find-package "GATEWAY_MSGS::ERRORCODES"))
(shadow '*REMOTE_GATEWAY_TARGET_HAS_MULTIPLE_MATCHES* (find-package "GATEWAY_MSGS::ERRORCODES"))
(defconstant gateway_msgs::ErrorCodes::*REMOTE_GATEWAY_TARGET_HAS_MULTIPLE_MATCHES* 53)
(defclass gateway_msgs::ErrorCodes
  :super ros::object
  :slots ())

(defmethod gateway_msgs::ErrorCodes
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

(setf (get gateway_msgs::ErrorCodes :md5sum-) "cc2f69c68d11f625f99f07d82c572d47")
(setf (get gateway_msgs::ErrorCodes :datatype-) "gateway_msgs/ErrorCodes")
(setf (get gateway_msgs::ErrorCodes :definition-)
      "# Error types for the gateway ros api

# General
int8 SUCCESS = 0
int8 NO_HUB_CONNECTION = 1

# Hub
int8 HUB_CONNECTION_ALREADY_EXISTS = 11
int8 HUB_CONNECTION_UNRESOLVABLE = 12
int8 HUB_CONNECTION_BLACKLISTED = 13
int8 HUB_CONNECTION_FAILED = 14
int8 HUB_CONNECTION_NOT_IN_NONEMPTY_WHITELIST = 15
int8 HUB_NAME_NOT_FOUND = 16
int8 HUB_CONNECTION_LOST = 17
int8 HUB_UNKNOWN_ERROR = 19

# Flipping
int8 FLIP_RULE_ALREADY_EXISTS = 22
int8 FLIP_PATTERN_ALREDY_EXISTS = 23
int8 FLIP_REMOTE_GATEWAY_FIREWALLING = 24

# Advertise
int8 ADVERTISEMENT_EXISTS = 31
int8 ADVERTISEMENT_NOT_FOUND = 32
int8 UNKNOWN_ADVERTISEMENT_ERROR = 39

# Pulling
int8 PULL_RULE_ALREADY_EXISTS = 41

# Remotes
int8 REMOTE_GATEWAY_NOT_VISIBLE = 51
int8 REMOTE_GATEWAY_SELF_IS_NOT = 52
int8 REMOTE_GATEWAY_TARGET_HAS_MULTIPLE_MATCHES = 53
")



(provide :gateway_msgs/ErrorCodes "cc2f69c68d11f625f99f07d82c572d47")


