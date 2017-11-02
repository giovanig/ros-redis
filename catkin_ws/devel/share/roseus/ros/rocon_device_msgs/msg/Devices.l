;; Auto-generated. Do not edit!


(when (boundp 'rocon_device_msgs::Devices)
  (if (not (find-package "ROCON_DEVICE_MSGS"))
    (make-package "ROCON_DEVICE_MSGS"))
  (shadow 'Devices (find-package "ROCON_DEVICE_MSGS")))
(unless (find-package "ROCON_DEVICE_MSGS::DEVICES")
  (make-package "ROCON_DEVICE_MSGS::DEVICES"))

(in-package "ROS")
;;//! \htmlinclude Devices.msg.html


(defclass rocon_device_msgs::Devices
  :super ros::object
  :slots (_devices ))

(defmethod rocon_device_msgs::Devices
  (:init
   (&key
    ((:devices __devices) (let (r) (dotimes (i 0) (push (instance rocon_device_msgs::Device :init) r)) r))
    )
   (send-super :init)
   (setq _devices __devices)
   self)
  (:devices
   (&rest __devices)
   (if (keywordp (car __devices))
       (send* _devices __devices)
     (progn
       (if __devices (setq _devices (car __devices)))
       _devices)))
  (:serialization-length
   ()
   (+
    ;; rocon_device_msgs/Device[] _devices
    (apply #'+ (send-all _devices :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rocon_device_msgs/Device[] _devices
     (write-long (length _devices) s)
     (dolist (elem _devices)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rocon_device_msgs/Device[] _devices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _devices (let (r) (dotimes (i n) (push (instance rocon_device_msgs::Device :init) r)) r))
     (dolist (elem- _devices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rocon_device_msgs::Devices :md5sum-) "47ac4241194bb5519686779949c9843b")
(setf (get rocon_device_msgs::Devices :datatype-) "rocon_device_msgs/Devices")
(setf (get rocon_device_msgs::Devices :definition-)
      "Device[] devices

================================================================================
MSG: rocon_device_msgs/Device
string label
string type
string uuid
rocon_std_msgs/KeyValue[] data

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
")



(provide :rocon_device_msgs/Devices "47ac4241194bb5519686779949c9843b")


