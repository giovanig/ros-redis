;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::HMIReport)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'HMIReport (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::HMIREPORT")
  (make-package "ANM_MSGS::HMIREPORT"))

(in-package "ROS")
;;//! \htmlinclude HMIReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*HMI_REQ_MANUAL*" (find-package "ANM_MSGS::HMIREPORT"))
(shadow '*HMI_REQ_MANUAL* (find-package "ANM_MSGS::HMIREPORT"))
(defconstant anm_msgs::HMIReport::*HMI_REQ_MANUAL* 0)
(intern "*HMI_REQ_STOP_AND_PARK*" (find-package "ANM_MSGS::HMIREPORT"))
(shadow '*HMI_REQ_STOP_AND_PARK* (find-package "ANM_MSGS::HMIREPORT"))
(defconstant anm_msgs::HMIReport::*HMI_REQ_STOP_AND_PARK* 1)
(intern "*HMI_REQ_FIND_PARKING*" (find-package "ANM_MSGS::HMIREPORT"))
(shadow '*HMI_REQ_FIND_PARKING* (find-package "ANM_MSGS::HMIREPORT"))
(defconstant anm_msgs::HMIReport::*HMI_REQ_FIND_PARKING* 2)
(intern "*HMI_REQ_DRIVE_ROUTE*" (find-package "ANM_MSGS::HMIREPORT"))
(shadow '*HMI_REQ_DRIVE_ROUTE* (find-package "ANM_MSGS::HMIREPORT"))
(defconstant anm_msgs::HMIReport::*HMI_REQ_DRIVE_ROUTE* 3)
(intern "*HMI_REQ_DRIVE_PLATOONING*" (find-package "ANM_MSGS::HMIREPORT"))
(shadow '*HMI_REQ_DRIVE_PLATOONING* (find-package "ANM_MSGS::HMIREPORT"))
(defconstant anm_msgs::HMIReport::*HMI_REQ_DRIVE_PLATOONING* 4)
(intern "*HMI_REQ_SIMULATE_FAIL_STACK*" (find-package "ANM_MSGS::HMIREPORT"))
(shadow '*HMI_REQ_SIMULATE_FAIL_STACK* (find-package "ANM_MSGS::HMIREPORT"))
(defconstant anm_msgs::HMIReport::*HMI_REQ_SIMULATE_FAIL_STACK* 101)
(intern "*HMI_REQ_FORCE_EMERGENCY_NAV*" (find-package "ANM_MSGS::HMIREPORT"))
(shadow '*HMI_REQ_FORCE_EMERGENCY_NAV* (find-package "ANM_MSGS::HMIREPORT"))
(defconstant anm_msgs::HMIReport::*HMI_REQ_FORCE_EMERGENCY_NAV* 102)
(intern "*HMI_REQ_FORCE_EMERGENCY_PULLOVER*" (find-package "ANM_MSGS::HMIREPORT"))
(shadow '*HMI_REQ_FORCE_EMERGENCY_PULLOVER* (find-package "ANM_MSGS::HMIREPORT"))
(defconstant anm_msgs::HMIReport::*HMI_REQ_FORCE_EMERGENCY_PULLOVER* 103)
(intern "*HMI_REQ_INVALID*" (find-package "ANM_MSGS::HMIREPORT"))
(shadow '*HMI_REQ_INVALID* (find-package "ANM_MSGS::HMIREPORT"))
(defconstant anm_msgs::HMIReport::*HMI_REQ_INVALID* 126)
(intern "*HMI_REQ_NONE*" (find-package "ANM_MSGS::HMIREPORT"))
(shadow '*HMI_REQ_NONE* (find-package "ANM_MSGS::HMIREPORT"))
(defconstant anm_msgs::HMIReport::*HMI_REQ_NONE* 127)
(defclass anm_msgs::HMIReport
  :super ros::object
  :slots (_header _request ))

(defmethod anm_msgs::HMIReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:request __request) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _request (round __request))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:request
   (&optional __request)
   (if __request (setq _request __request)) _request)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _request
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _request
       (write-byte _request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _request
     (setq _request (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get anm_msgs::HMIReport :md5sum-) "b9053208a0924d8bbe1073b5b6cbebfb")
(setf (get anm_msgs::HMIReport :datatype-) "anm_msgs/HMIReport")
(setf (get anm_msgs::HMIReport :definition-)
      "# This message indicates the requests from the HMI

# Defined modes:
uint8 HMI_REQ_MANUAL = 0
uint8 HMI_REQ_STOP_AND_PARK = 1
uint8 HMI_REQ_FIND_PARKING = 2
uint8 HMI_REQ_DRIVE_ROUTE = 3
uint8 HMI_REQ_DRIVE_PLATOONING = 4
uint8 HMI_REQ_SIMULATE_FAIL_STACK = 101
uint8 HMI_REQ_FORCE_EMERGENCY_NAV = 102
uint8 HMI_REQ_FORCE_EMERGENCY_PULLOVER = 103
uint8 HMI_REQ_INVALID = 126
uint8 HMI_REQ_NONE = 127

# Message definition
Header header
uint8 request


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

")



(provide :anm_msgs/HMIReport "b9053208a0924d8bbe1073b5b6cbebfb")


