;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::Services)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'Services (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::SERVICES")
  (make-package "CONCERT_MSGS::SERVICES"))

(in-package "ROS")
;;//! \htmlinclude Services.msg.html


(defclass concert_msgs::Services
  :super ros::object
  :slots (_services ))

(defmethod concert_msgs::Services
  (:init
   (&key
    ((:services __services) (let (r) (dotimes (i 0) (push (instance concert_msgs::ServiceProfile :init) r)) r))
    )
   (send-super :init)
   (setq _services __services)
   self)
  (:services
   (&rest __services)
   (if (keywordp (car __services))
       (send* _services __services)
     (progn
       (if __services (setq _services (car __services)))
       _services)))
  (:serialization-length
   ()
   (+
    ;; concert_msgs/ServiceProfile[] _services
    (apply #'+ (send-all _services :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; concert_msgs/ServiceProfile[] _services
     (write-long (length _services) s)
     (dolist (elem _services)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; concert_msgs/ServiceProfile[] _services
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _services (let (r) (dotimes (i n) (push (instance concert_msgs::ServiceProfile :init) r)) r))
     (dolist (elem- _services)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get concert_msgs::Services :md5sum-) "385406088e57b4886d05051733612cb1")
(setf (get concert_msgs::Services :datatype-) "concert_msgs/Services")
(setf (get concert_msgs::Services :definition-)
      "ServiceProfile[] services

================================================================================
MSG: concert_msgs/ServiceProfile
# Constants - service types
string TYPE_ROSLAUNCH = roslaunch
string TYPE_CUSTOM    = custom
string TYPE_SHADOW    = shadow

# Pre-configured parameters
string                      resource_name
string                      name
string                      description
string                      author
uint16                      priority
rocon_std_msgs/Icon         icon
string                      launcher_type
string                      launcher
string                      interactions
string                      parameters
rocon_std_msgs/KeyValue[]   parameters_detail

# Initialised parameters (on startup)
uuid_msgs/UniqueID          uuid

# Runtime variables
int16                       status
bool                        enabled

================================================================================
MSG: rocon_std_msgs/Icon
# Used to idenfity the original package/filename resource this icon was/is to be loaded from
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
string resource_name

# Image data format.  \"jpeg\" or \"png\"
string format

# Image data.
uint8[] data
================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

")



(provide :concert_msgs/Services "385406088e57b4886d05051733612cb1")


