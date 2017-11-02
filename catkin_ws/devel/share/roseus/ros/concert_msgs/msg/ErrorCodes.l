;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::ErrorCodes)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'ErrorCodes (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::ERRORCODES")
  (make-package "CONCERT_MSGS::ERRORCODES"))

(in-package "ROS")
;;//! \htmlinclude ErrorCodes.msg.html


(intern "*SUCCESS*" (find-package "CONCERT_MSGS::ERRORCODES"))
(shadow '*SUCCESS* (find-package "CONCERT_MSGS::ERRORCODES"))
(defconstant concert_msgs::ErrorCodes::*SUCCESS* 0)
(intern "*SERVICE_UNEXPECTED_ERROR*" (find-package "CONCERT_MSGS::ERRORCODES"))
(shadow '*SERVICE_UNEXPECTED_ERROR* (find-package "CONCERT_MSGS::ERRORCODES"))
(defconstant concert_msgs::ErrorCodes::*SERVICE_UNEXPECTED_ERROR* 31)
(intern "*SERVICE_INSUFFICIENT_CLIENTS*" (find-package "CONCERT_MSGS::ERRORCODES"))
(shadow '*SERVICE_INSUFFICIENT_CLIENTS* (find-package "CONCERT_MSGS::ERRORCODES"))
(defconstant concert_msgs::ErrorCodes::*SERVICE_INSUFFICIENT_CLIENTS* 32)
(intern "*SERVICE_NOT_READY*" (find-package "CONCERT_MSGS::ERRORCODES"))
(shadow '*SERVICE_NOT_READY* (find-package "CONCERT_MSGS::ERRORCODES"))
(defconstant concert_msgs::ErrorCodes::*SERVICE_NOT_READY* 33)
(defclass concert_msgs::ErrorCodes
  :super ros::object
  :slots ())

(defmethod concert_msgs::ErrorCodes
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

(setf (get concert_msgs::ErrorCodes :md5sum-) "850c35c6305cee69bf981dadb8ebd51c")
(setf (get concert_msgs::ErrorCodes :datatype-) "concert_msgs/ErrorCodes")
(setf (get concert_msgs::ErrorCodes :definition-)
      "# Error types for concert components

# General
int8 SUCCESS = 0

# Concert Service
int8 SERVICE_UNEXPECTED_ERROR = 31
int8 SERVICE_INSUFFICIENT_CLIENTS = 32
int8 SERVICE_NOT_READY = 33

")



(provide :concert_msgs/ErrorCodes "850c35c6305cee69bf981dadb8ebd51c")


