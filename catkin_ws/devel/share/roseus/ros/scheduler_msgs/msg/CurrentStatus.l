;; Auto-generated. Do not edit!


(when (boundp 'scheduler_msgs::CurrentStatus)
  (if (not (find-package "SCHEDULER_MSGS"))
    (make-package "SCHEDULER_MSGS"))
  (shadow 'CurrentStatus (find-package "SCHEDULER_MSGS")))
(unless (find-package "SCHEDULER_MSGS::CURRENTSTATUS")
  (make-package "SCHEDULER_MSGS::CURRENTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CurrentStatus.msg.html
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(intern "*AVAILABLE*" (find-package "SCHEDULER_MSGS::CURRENTSTATUS"))
(shadow '*AVAILABLE* (find-package "SCHEDULER_MSGS::CURRENTSTATUS"))
(defconstant scheduler_msgs::CurrentStatus::*AVAILABLE* 0)
(intern "*ALLOCATED*" (find-package "SCHEDULER_MSGS::CURRENTSTATUS"))
(shadow '*ALLOCATED* (find-package "SCHEDULER_MSGS::CURRENTSTATUS"))
(defconstant scheduler_msgs::CurrentStatus::*ALLOCATED* 1)
(intern "*MISSING*" (find-package "SCHEDULER_MSGS::CURRENTSTATUS"))
(shadow '*MISSING* (find-package "SCHEDULER_MSGS::CURRENTSTATUS"))
(defconstant scheduler_msgs::CurrentStatus::*MISSING* 2)
(intern "*GONE*" (find-package "SCHEDULER_MSGS::CURRENTSTATUS"))
(shadow '*GONE* (find-package "SCHEDULER_MSGS::CURRENTSTATUS"))
(defconstant scheduler_msgs::CurrentStatus::*GONE* 3)
(defclass scheduler_msgs::CurrentStatus
  :super ros::object
  :slots (_uri _status _owner _priority _rapps ))

(defmethod scheduler_msgs::CurrentStatus
  (:init
   (&key
    ((:uri __uri) "")
    ((:status __status) 0)
    ((:owner __owner) (instance uuid_msgs::UniqueID :init))
    ((:priority __priority) 0)
    ((:rapps __rapps) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _uri (string __uri))
   (setq _status (round __status))
   (setq _owner __owner)
   (setq _priority (round __priority))
   (setq _rapps __rapps)
   self)
  (:uri
   (&optional __uri)
   (if __uri (setq _uri __uri)) _uri)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:owner
   (&rest __owner)
   (if (keywordp (car __owner))
       (send* _owner __owner)
     (progn
       (if __owner (setq _owner (car __owner)))
       _owner)))
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:rapps
   (&optional __rapps)
   (if __rapps (setq _rapps __rapps)) _rapps)
  (:serialization-length
   ()
   (+
    ;; string _uri
    4 (length _uri)
    ;; uint8 _status
    1
    ;; uuid_msgs/UniqueID _owner
    (send _owner :serialization-length)
    ;; int16 _priority
    2
    ;; string[] _rapps
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _rapps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uri
       (write-long (length _uri) s) (princ _uri s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uuid_msgs/UniqueID _owner
       (send _owner :serialize s)
     ;; int16 _priority
       (write-word _priority s)
     ;; string[] _rapps
     (write-long (length _rapps) s)
     (dolist (elem _rapps)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uuid_msgs/UniqueID _owner
     (send _owner :deserialize buf ptr-) (incf ptr- (send _owner :serialization-length))
   ;; int16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string[] _rapps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rapps (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _rapps i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get scheduler_msgs::CurrentStatus :md5sum-) "6aad8a50fb8e5cf19eb4622c1c4b6467")
(setf (get scheduler_msgs::CurrentStatus :datatype-) "scheduler_msgs/CurrentStatus")
(setf (get scheduler_msgs::CurrentStatus :definition-)
      "### ROCON resource current status.
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



(provide :scheduler_msgs/CurrentStatus "6aad8a50fb8e5cf19eb4622c1c4b6467")


