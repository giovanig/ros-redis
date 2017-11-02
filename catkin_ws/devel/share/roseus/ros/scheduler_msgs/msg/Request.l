;; Auto-generated. Do not edit!


(when (boundp 'scheduler_msgs::Request)
  (if (not (find-package "SCHEDULER_MSGS"))
    (make-package "SCHEDULER_MSGS"))
  (shadow 'Request (find-package "SCHEDULER_MSGS")))
(unless (find-package "SCHEDULER_MSGS::REQUEST")
  (make-package "SCHEDULER_MSGS::REQUEST"))

(in-package "ROS")
;;//! \htmlinclude Request.msg.html
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(intern "*NEW*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*NEW* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*NEW* 0)
(intern "*RESERVED*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*RESERVED* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*RESERVED* 1)
(intern "*WAITING*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*WAITING* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*WAITING* 2)
(intern "*GRANTED*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*GRANTED* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*GRANTED* 3)
(intern "*PREEMPTING*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*PREEMPTING* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*PREEMPTING* 4)
(intern "*CANCELING*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*CANCELING* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*CANCELING* 5)
(intern "*CLOSED*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*CLOSED* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*CLOSED* 6)
(intern "*NONE*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*NONE* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*NONE* 0)
(intern "*PREEMPTED*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*PREEMPTED* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*PREEMPTED* 1)
(intern "*BUSY*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*BUSY* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*BUSY* 2)
(intern "*UNAVAILABLE*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*UNAVAILABLE* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*UNAVAILABLE* 3)
(intern "*TIMEOUT*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*TIMEOUT* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*TIMEOUT* 4)
(intern "*INVALID*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*INVALID* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*INVALID* 5)
(intern "*BACKGROUND_PRIORITY*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*BACKGROUND_PRIORITY* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*BACKGROUND_PRIORITY* -20000)
(intern "*LOW_PRIORITY*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*LOW_PRIORITY* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*LOW_PRIORITY* -10000)
(intern "*DEFAULT_PRIORITY*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*DEFAULT_PRIORITY* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*DEFAULT_PRIORITY* 0)
(intern "*HIGH_PRIORITY*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*HIGH_PRIORITY* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*HIGH_PRIORITY* 10000)
(intern "*CRITICAL_PRIORITY*" (find-package "SCHEDULER_MSGS::REQUEST"))
(shadow '*CRITICAL_PRIORITY* (find-package "SCHEDULER_MSGS::REQUEST"))
(defconstant scheduler_msgs::Request::*CRITICAL_PRIORITY* 20000)
(defclass scheduler_msgs::Request
  :super ros::object
  :slots (_id _resources _status _reason _problem _availability _hold_time _priority ))

(defmethod scheduler_msgs::Request
  (:init
   (&key
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:resources __resources) (let (r) (dotimes (i 0) (push (instance scheduler_msgs::Resource :init) r)) r))
    ((:status __status) 0)
    ((:reason __reason) 0)
    ((:problem __problem) "")
    ((:availability __availability) (instance ros::time :init))
    ((:hold_time __hold_time) (instance ros::time :init))
    ((:priority __priority) 0)
    )
   (send-super :init)
   (setq _id __id)
   (setq _resources __resources)
   (setq _status (round __status))
   (setq _reason (round __reason))
   (setq _problem (string __problem))
   (setq _availability __availability)
   (setq _hold_time __hold_time)
   (setq _priority (round __priority))
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:resources
   (&rest __resources)
   (if (keywordp (car __resources))
       (send* _resources __resources)
     (progn
       (if __resources (setq _resources (car __resources)))
       _resources)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:problem
   (&optional __problem)
   (if __problem (setq _problem __problem)) _problem)
  (:availability
   (&optional __availability)
   (if __availability (setq _availability __availability)) _availability)
  (:hold_time
   (&optional __hold_time)
   (if __hold_time (setq _hold_time __hold_time)) _hold_time)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:serialization-length
   ()
   (+
    ;; uuid_msgs/UniqueID _id
    (send _id :serialization-length)
    ;; scheduler_msgs/Resource[] _resources
    (apply #'+ (send-all _resources :serialization-length)) 4
    ;; uint8 _status
    1
    ;; uint8 _reason
    1
    ;; string _problem
    4 (length _problem)
    ;; time _availability
    8
    ;; duration _hold_time
    8
    ;; int16 _priority
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; scheduler_msgs/Resource[] _resources
     (write-long (length _resources) s)
     (dolist (elem _resources)
       (send elem :serialize s)
       )
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _reason
       (write-byte _reason s)
     ;; string _problem
       (write-long (length _problem) s) (princ _problem s)
     ;; time _availability
       (write-long (send _availability :sec) s) (write-long (send _availability :nsec) s)
     ;; duration _hold_time
       (write-long (send _hold_time :sec) s) (write-long (send _hold_time :nsec) s)
     ;; int16 _priority
       (write-word _priority s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uuid_msgs/UniqueID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; scheduler_msgs/Resource[] _resources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resources (let (r) (dotimes (i n) (push (instance scheduler_msgs::Resource :init) r)) r))
     (dolist (elem- _resources)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reason
     (setq _reason (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _problem
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _problem (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _availability
     (send _availability :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _availability :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _hold_time
     (send _hold_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _hold_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get scheduler_msgs::Request :md5sum-) "1556d9f8919617c2f52b2a4ab15f6468")
(setf (get scheduler_msgs::Request :datatype-) "scheduler_msgs/Request")
(setf (get scheduler_msgs::Request :definition-)
      "### Resource request description
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
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

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



(provide :scheduler_msgs/Request "1556d9f8919617c2f52b2a4ab15f6468")


