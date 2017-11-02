;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::SoftwareInstances)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'SoftwareInstances (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::SOFTWAREINSTANCES")
  (make-package "CONCERT_MSGS::SOFTWAREINSTANCES"))

(in-package "ROS")
;;//! \htmlinclude SoftwareInstances.msg.html


(defclass concert_msgs::SoftwareInstances
  :super ros::object
  :slots (_instances ))

(defmethod concert_msgs::SoftwareInstances
  (:init
   (&key
    ((:instances __instances) (let (r) (dotimes (i 0) (push (instance concert_msgs::SoftwareInstance :init) r)) r))
    )
   (send-super :init)
   (setq _instances __instances)
   self)
  (:instances
   (&rest __instances)
   (if (keywordp (car __instances))
       (send* _instances __instances)
     (progn
       (if __instances (setq _instances (car __instances)))
       _instances)))
  (:serialization-length
   ()
   (+
    ;; concert_msgs/SoftwareInstance[] _instances
    (apply #'+ (send-all _instances :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; concert_msgs/SoftwareInstance[] _instances
     (write-long (length _instances) s)
     (dolist (elem _instances)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; concert_msgs/SoftwareInstance[] _instances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _instances (let (r) (dotimes (i n) (push (instance concert_msgs::SoftwareInstance :init) r)) r))
     (dolist (elem- _instances)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get concert_msgs::SoftwareInstances :md5sum-) "3db13b2ea7c2b945782f742cf7b4ac03")
(setf (get concert_msgs::SoftwareInstances :datatype-) "concert_msgs/SoftwareInstances")
(setf (get concert_msgs::SoftwareInstances :definition-)
      "SoftwareInstance[] instances

================================================================================
MSG: concert_msgs/SoftwareInstance
# Runtime
string  resource_name
string  name

int16   max_count
string  namespace
string[] users
rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
")



(provide :concert_msgs/SoftwareInstances "3db13b2ea7c2b945782f742cf7b4ac03")


