;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::Strings)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'Strings (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::STRINGS")
  (make-package "CONCERT_MSGS::STRINGS"))

(in-package "ROS")
;;//! \htmlinclude Strings.msg.html


(intern "*PARAM_ROCON_SCREEN*" (find-package "CONCERT_MSGS::STRINGS"))
(shadow '*PARAM_ROCON_SCREEN* (find-package "CONCERT_MSGS::STRINGS"))
(defconstant concert_msgs::Strings::*PARAM_ROCON_SCREEN* "/rocon/screen")
(intern "*SCHEDULER_UNALLOCATED_RESOURCE*" (find-package "CONCERT_MSGS::STRINGS"))
(shadow '*SCHEDULER_UNALLOCATED_RESOURCE* (find-package "CONCERT_MSGS::STRINGS"))
(defconstant concert_msgs::Strings::*SCHEDULER_UNALLOCATED_RESOURCE* "unallocated")
(intern "*CONCERT_CLIENTS*" (find-package "CONCERT_MSGS::STRINGS"))
(shadow '*CONCERT_CLIENTS* (find-package "CONCERT_MSGS::STRINGS"))
(defconstant concert_msgs::Strings::*CONCERT_CLIENTS* "/concert/conductor/concert_clients")
(intern "*SERVICE_NAMESPACE*" (find-package "CONCERT_MSGS::STRINGS"))
(shadow '*SERVICE_NAMESPACE* (find-package "CONCERT_MSGS::STRINGS"))
(defconstant concert_msgs::Strings::*SERVICE_NAMESPACE* "/services")
(intern "*SOFTWARE_NAMESPACE*" (find-package "CONCERT_MSGS::STRINGS"))
(shadow '*SOFTWARE_NAMESPACE* (find-package "CONCERT_MSGS::STRINGS"))
(defconstant concert_msgs::Strings::*SOFTWARE_NAMESPACE* "/software")
(defclass concert_msgs::Strings
  :super ros::object
  :slots ())

(defmethod concert_msgs::Strings
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

(setf (get concert_msgs::Strings :md5sum-) "38136d22fdc4ea7e6dd26ec382e266c8")
(setf (get concert_msgs::Strings :datatype-) "concert_msgs/Strings")
(setf (get concert_msgs::Strings :definition-)
      "# Some commonly used constant strings in the concert.
#
# Note: avoid using hardcoded topic_name strings here. Prefer rostopic.find_by_type
# and rosservice.rosservice_find for getting services that should be unique
# (e.g. gateway/interactions). Refer to rocon_python_comms for some wrappers around these.

# Parameters
string PARAM_ROCON_SCREEN = /rocon/screen

# Scheduler
string SCHEDULER_UNALLOCATED_RESOURCE = unallocated

# Conductor
string CONCERT_CLIENTS = /concert/conductor/concert_clients

# Namespaces
string SERVICE_NAMESPACE = /services
string SOFTWARE_NAMESPACE = /software

")



(provide :concert_msgs/Strings "38136d22fdc4ea7e6dd26ec382e266c8")


