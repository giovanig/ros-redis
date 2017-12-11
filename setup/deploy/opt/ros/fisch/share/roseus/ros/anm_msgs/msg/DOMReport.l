;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::DOMReport)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'DOMReport (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::DOMREPORT")
  (make-package "ANM_MSGS::DOMREPORT"))

(in-package "ROS")
;;//! \htmlinclude DOMReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::DOMReport
  :super ros::object
  :slots (_header _subsystem_name _dom ))

(defmethod anm_msgs::DOMReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:subsystem_name __subsystem_name) "")
    ((:dom __dom) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _subsystem_name (string __subsystem_name))
   (setq _dom (float __dom))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:subsystem_name
   (&optional __subsystem_name)
   (if __subsystem_name (setq _subsystem_name __subsystem_name)) _subsystem_name)
  (:dom
   (&optional __dom)
   (if __dom (setq _dom __dom)) _dom)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _subsystem_name
    4 (length _subsystem_name)
    ;; float32 _dom
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _subsystem_name
       (write-long (length _subsystem_name) s) (princ _subsystem_name s)
     ;; float32 _dom
       (sys::poke _dom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _subsystem_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subsystem_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _dom
     (setq _dom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get anm_msgs::DOMReport :md5sum-) "549661b2ac2e4ffd500a8ce922b77d98")
(setf (get anm_msgs::DOMReport :datatype-) "anm_msgs/DOMReport")
(setf (get anm_msgs::DOMReport :definition-)
      "# The DOMReport is used to inform the supervisory layer of the current DOM
# (Degraded Operation Mode) of a given subsystem.

Header header

# Name of the subsystem/module
string subsystem_name

# Degraded operation mode. 0 = no degradation, 1 = fully degraded or failed
float32 dom

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



(provide :anm_msgs/DOMReport "549661b2ac2e4ffd500a8ce922b77d98")


