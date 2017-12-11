;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::SystemHealthReport)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'SystemHealthReport (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::SYSTEMHEALTHREPORT")
  (make-package "ANM_MSGS::SYSTEMHEALTHREPORT"))

(in-package "ROS")
;;//! \htmlinclude SystemHealthReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::SystemHealthReport
  :super ros::object
  :slots (_header _system_summary ))

(defmethod anm_msgs::SystemHealthReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:system_summary __system_summary) (let (r) (dotimes (i 0) (push (instance anm_msgs::DOMReport :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _system_summary __system_summary)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:system_summary
   (&rest __system_summary)
   (if (keywordp (car __system_summary))
       (send* _system_summary __system_summary)
     (progn
       (if __system_summary (setq _system_summary (car __system_summary)))
       _system_summary)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; anm_msgs/DOMReport[] _system_summary
    (apply #'+ (send-all _system_summary :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; anm_msgs/DOMReport[] _system_summary
     (write-long (length _system_summary) s)
     (dolist (elem _system_summary)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; anm_msgs/DOMReport[] _system_summary
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _system_summary (let (r) (dotimes (i n) (push (instance anm_msgs::DOMReport :init) r)) r))
     (dolist (elem- _system_summary)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get anm_msgs::SystemHealthReport :md5sum-) "66f9803a57f858802ab4b9cb70114150")
(setf (get anm_msgs::SystemHealthReport :datatype-) "anm_msgs/SystemHealthReport")
(setf (get anm_msgs::SystemHealthReport :definition-)
      "# Represents the complete system health as a listing of DOMs of all subsystems.

Header header

# Simply a list of all the subsystems and their current DOMs
anm_msgs/DOMReport[] system_summary

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
MSG: anm_msgs/DOMReport
# The DOMReport is used to inform the supervisory layer of the current DOM
# (Degraded Operation Mode) of a given subsystem.

Header header

# Name of the subsystem/module
string subsystem_name

# Degraded operation mode. 0 = no degradation, 1 = fully degraded or failed
float32 dom

")



(provide :anm_msgs/SystemHealthReport "66f9803a57f858802ab4b9cb70114150")


