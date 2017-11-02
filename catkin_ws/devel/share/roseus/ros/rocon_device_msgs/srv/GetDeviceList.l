;; Auto-generated. Do not edit!


(when (boundp 'rocon_device_msgs::GetDeviceList)
  (if (not (find-package "ROCON_DEVICE_MSGS"))
    (make-package "ROCON_DEVICE_MSGS"))
  (shadow 'GetDeviceList (find-package "ROCON_DEVICE_MSGS")))
(unless (find-package "ROCON_DEVICE_MSGS::GETDEVICELIST")
  (make-package "ROCON_DEVICE_MSGS::GETDEVICELIST"))
(unless (find-package "ROCON_DEVICE_MSGS::GETDEVICELISTREQUEST")
  (make-package "ROCON_DEVICE_MSGS::GETDEVICELISTREQUEST"))
(unless (find-package "ROCON_DEVICE_MSGS::GETDEVICELISTRESPONSE")
  (make-package "ROCON_DEVICE_MSGS::GETDEVICELISTRESPONSE"))

(in-package "ROS")





(defclass rocon_device_msgs::GetDeviceListRequest
  :super ros::object
  :slots ())

(defmethod rocon_device_msgs::GetDeviceListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rocon_device_msgs::GetDeviceListResponse
  :super ros::object
  :slots (_devices ))

(defmethod rocon_device_msgs::GetDeviceListResponse
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

(defclass rocon_device_msgs::GetDeviceList
  :super ros::object
  :slots ())

(setf (get rocon_device_msgs::GetDeviceList :md5sum-) "47ac4241194bb5519686779949c9843b")
(setf (get rocon_device_msgs::GetDeviceList :datatype-) "rocon_device_msgs/GetDeviceList")
(setf (get rocon_device_msgs::GetDeviceList :request) rocon_device_msgs::GetDeviceListRequest)
(setf (get rocon_device_msgs::GetDeviceList :response) rocon_device_msgs::GetDeviceListResponse)

(defmethod rocon_device_msgs::GetDeviceListRequest
  (:response () (instance rocon_device_msgs::GetDeviceListResponse :init)))

(setf (get rocon_device_msgs::GetDeviceListRequest :md5sum-) "47ac4241194bb5519686779949c9843b")
(setf (get rocon_device_msgs::GetDeviceListRequest :datatype-) "rocon_device_msgs/GetDeviceListRequest")
(setf (get rocon_device_msgs::GetDeviceListRequest :definition-)
      "---
Device[] devices


================================================================================
MSG: rocon_device_msgs/Device
string label
string type
string uuid
rocon_std_msgs/KeyValue[] data

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
")

(setf (get rocon_device_msgs::GetDeviceListResponse :md5sum-) "47ac4241194bb5519686779949c9843b")
(setf (get rocon_device_msgs::GetDeviceListResponse :datatype-) "rocon_device_msgs/GetDeviceListResponse")
(setf (get rocon_device_msgs::GetDeviceListResponse :definition-)
      "---
Device[] devices


================================================================================
MSG: rocon_device_msgs/Device
string label
string type
string uuid
rocon_std_msgs/KeyValue[] data

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
")



(provide :rocon_device_msgs/GetDeviceList "47ac4241194bb5519686779949c9843b")


