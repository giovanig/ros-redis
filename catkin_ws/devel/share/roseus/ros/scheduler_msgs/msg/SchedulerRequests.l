;; Auto-generated. Do not edit!


(when (boundp 'scheduler_msgs::SchedulerRequests)
  (if (not (find-package "SCHEDULER_MSGS"))
    (make-package "SCHEDULER_MSGS"))
  (shadow 'SchedulerRequests (find-package "SCHEDULER_MSGS")))
(unless (find-package "SCHEDULER_MSGS::SCHEDULERREQUESTS")
  (make-package "SCHEDULER_MSGS::SCHEDULERREQUESTS"))

(in-package "ROS")
;;//! \htmlinclude SchedulerRequests.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass scheduler_msgs::SchedulerRequests
  :super ros::object
  :slots (_header _requester _requests ))

(defmethod scheduler_msgs::SchedulerRequests
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:requester __requester) (instance uuid_msgs::UniqueID :init))
    ((:requests __requests) (let (r) (dotimes (i 0) (push (instance scheduler_msgs::Request :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _requester __requester)
   (setq _requests __requests)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:requester
   (&rest __requester)
   (if (keywordp (car __requester))
       (send* _requester __requester)
     (progn
       (if __requester (setq _requester (car __requester)))
       _requester)))
  (:requests
   (&rest __requests)
   (if (keywordp (car __requests))
       (send* _requests __requests)
     (progn
       (if __requests (setq _requests (car __requests)))
       _requests)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uuid_msgs/UniqueID _requester
    (send _requester :serialization-length)
    ;; scheduler_msgs/Request[] _requests
    (apply #'+ (send-all _requests :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uuid_msgs/UniqueID _requester
       (send _requester :serialize s)
     ;; scheduler_msgs/Request[] _requests
     (write-long (length _requests) s)
     (dolist (elem _requests)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uuid_msgs/UniqueID _requester
     (send _requester :deserialize buf ptr-) (incf ptr- (send _requester :serialization-length))
   ;; scheduler_msgs/Request[] _requests
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _requests (let (r) (dotimes (i n) (push (instance scheduler_msgs::Request :init) r)) r))
     (dolist (elem- _requests)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get scheduler_msgs::SchedulerRequests :md5sum-) "d0adc2f83296939c4b208a3e0619e86f")
(setf (get scheduler_msgs::SchedulerRequests :datatype-) "scheduler_msgs/SchedulerRequests")
(setf (get scheduler_msgs::SchedulerRequests :definition-)
      "### Scheduler Requests
#
#   Rocon services send this message on the scheduler's input topic to
#   make or update their resource requests.  All resources they
#   currently have or desire should be included.
#
#   If not all of the requested resources are immediately available,
#   the scheduler will queue those requests and provide feedback using
#   a message of the same type.  The requester should wait until
#   feedback indicates the associated resources are available.  It may
#   cancel some requests at any time via an new allocation message.
#
Header header                   # Time of this status, frame_id irrelevant
uuid_msgs/UniqueID requester    # Requester identifier
Request[] requests              # Status of every currently-known request

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
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

================================================================================
MSG: scheduler_msgs/Request
### Resource request description
#
#   This tracks the progress of a single requested resource group.
#   All these resources will be granted, preempted or canceled
#   together as a unit.

##############################################################################
# Resource Identification
##############################################################################

uuid_msgs/UniqueID id   # Requester-assigned universally unique identifier
Resource[] resources    # List of requested rapps and platforms

##############################################################################
# State
##############################################################################

uint8 status            # Current status of this request
uint8 reason            # Reason for this status
string problem          # Convenience message for introspecting on the reason 

#  Status value labels:
uint8 NEW         = 0   # New request for the scheduler
uint8 RESERVED    = 1   # Request for a reservation at some future time
uint8 WAITING     = 2   # Request has been queued by the scheduler
uint8 GRANTED     = 3   # Request was granted by the scheduler
uint8 PREEMPTING  = 4   # The scheduler wants to preempt this
                        #   previously-granted request, but the
                        #   requester has not yet canceled it
uint8 CANCELING   = 5   # The requester wishes to cancel this
                        #   request, but the scheduler has not yet
                        #   confirmed that it is closed
uint8 CLOSED      = 6   # Request is now closed (terminal state)

# Reason labels:
uint8 NONE        = 0   # No reason provided
uint8 PREEMPTED   = 1   # Preempted for higher-priority task
uint8 BUSY        = 2   # Requested resource busy elsewhere
uint8 UNAVAILABLE = 3   # Requested resource not available
uint8 TIMEOUT     = 4   # Lost contact with requester
uint8 INVALID     = 5   # Ill-formed request: see problem string for details

##############################################################################
# Scheduling Variables
##############################################################################

time     availability   # Estimated time of availability (zero if unknown)
duration hold_time      # Estimated hold time once allocated (zero if unknown)
int16    priority       # Current priority of this request

# Priority labels:
int16 BACKGROUND_PRIORITY = -20000      # When nothing else to do
int16 LOW_PRIORITY = -10000             # Low-priority task
int16 DEFAULT_PRIORITY = 0              # Sane default priority
int16 HIGH_PRIORITY = 10000             # High-priority task
int16 CRITICAL_PRIORITY = 20000         # Mission-critical task

================================================================================
MSG: scheduler_msgs/Resource
### ROCON resource request or response.
#
#   A scheduler_msgs/Request message includes one Resource message for
#   each desired resource.  The scheduler responds using this same
#   message to identify exactly what corresponding resource it has
#   granted.

# This is usually a uniquely identifying ros_package/rapp name
# identifier, which is unique because ros packages are unique.
string rapp

# Unique identifier assigned by the requester to track resources
# assigned in the scheduler feedback.
uuid_msgs/UniqueID id

# Uniform Resource Identifier for the platform.  ROCON defines two
# kinds of URI strings:
#
# 1) A \"resource description URI\" is a canonical string for a specific
#    device.  All components are fully resolved to their most specific
#    values, like:
#
#      \"rocon:/turtlebot/dude3/hydro/precise\"
#
#    The scheduler provides fully resolved resource description URIs
#    in its feedback for requests that have been granted.
#
# 2) A \"request URI\" may provide a similar descriptive representation,
#    or may include patterns for matching multiple alternative
#    platforms.  Omitted or '*' patterns match any valid value:
#
#      \"\"                               # (empty string): any platform
#      \"rocon:/turtlebot\"               # any turtlebot
#      \"rocon:/(turtlebot|segbot)\"      # any robot of either type
#      \"rocon:/*/dude3\"                 # any device named dude3
#      \"rocon:/*/*/ros/ubuntu\"          # any ROS Ubuntu platform
#
string uri

# Remappings which get passed on for starting the rapps. Also potentially for
# more esoteric use cases such as checking whether an app is sharable.
rocon_std_msgs/Remapping[] remappings
rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/Remapping
# Describes your typical ros remapping

string remap_from
string remap_to

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
")



(provide :scheduler_msgs/SchedulerRequests "d0adc2f83296939c4b208a3e0619e86f")


