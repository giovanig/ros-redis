;; Auto-generated. Do not edit!


(when (boundp 'scheduler_msgs::KnownResources)
  (if (not (find-package "SCHEDULER_MSGS"))
    (make-package "SCHEDULER_MSGS"))
  (shadow 'KnownResources (find-package "SCHEDULER_MSGS")))
(unless (find-package "SCHEDULER_MSGS::KNOWNRESOURCES")
  (make-package "SCHEDULER_MSGS::KNOWNRESOURCES"))

(in-package "ROS")
;;//! \htmlinclude KnownResources.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass scheduler_msgs::KnownResources
  :super ros::object
  :slots (_header _resources ))

(defmethod scheduler_msgs::KnownResources
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:resources __resources) (let (r) (dotimes (i 0) (push (instance scheduler_msgs::CurrentStatus :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _resources __resources)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:resources
   (&rest __resources)
   (if (keywordp (car __resources))
       (send* _resources __resources)
     (progn
       (if __resources (setq _resources (car __resources)))
       _resources)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; scheduler_msgs/CurrentStatus[] _resources
    (apply #'+ (send-all _resources :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; scheduler_msgs/CurrentStatus[] _resources
     (write-long (length _resources) s)
     (dolist (elem _resources)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; scheduler_msgs/CurrentStatus[] _resources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resources (let (r) (dotimes (i n) (push (instance scheduler_msgs::CurrentStatus :init) r)) r))
     (dolist (elem- _resources)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get scheduler_msgs::KnownResources :md5sum-) "d3e12e9eddf5fe98089b8d550ce49151")
(setf (get scheduler_msgs::KnownResources :datatype-) "scheduler_msgs/KnownResources")
(setf (get scheduler_msgs::KnownResources :definition-)
      "### Known resources.
#
#   A ROCON scheduler uses this message to report the status of all
#   the resources it knows about and manages.
#
Header header                   # Time of this status, frame_id irrelevant
CurrentStatus[] resources       # Status of every currently-known resource

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: scheduler_msgs/CurrentStatus
### ROCON resource current status.
#
#   A ROCON scheduler uses this message to report the status of each
#   resource it manages.
#

##############################################################################
# Resource Identification
##############################################################################

#   A canonical ROCON Uniform Resource Identifier describing this
#   resource, a fully-resolved character string in the form:
#
#      rocon:/platform/name/framework/os
#
string uri

##############################################################################
# Status
##############################################################################

uint8 status            # Current status of this resource

#  Status value labels:
uint8 AVAILABLE   = 0   # Available for use
uint8 ALLOCATED   = 1   # Allocated to some ROCON request
uint8 MISSING     = 2   # Not currently responding
uint8 GONE        = 3   # Has left the concert (cleanly)

#   The owner is the unique identifier of the Request message to which
#   this resource is currently assigned, or a zero UUID if it is not
#   assigned.  An AVAILABLE resource never has an owner, but a MISSING
#   one might.
uuid_msgs/UniqueID owner

#   The priority of an ALLOCATED resource is the priority of its
#   owning request.  An AVAILABLE resource never has a non-zero
#   priority, but a MISSING one might.
int16 priority

#   List of ROCON application names currently available with this
#   resource. The name string is usually a ROS \"package/node\"
#   identifier, unique because ROS package names are unique.  The
#   contents of this list could change over time due to the device's
#   own activities.
string[] rapps

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

")



(provide :scheduler_msgs/KnownResources "d3e12e9eddf5fe98089b8d550ce49151")


