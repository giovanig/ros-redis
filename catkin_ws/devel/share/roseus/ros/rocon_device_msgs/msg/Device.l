;; Auto-generated. Do not edit!


(when (boundp 'rocon_device_msgs::Device)
  (if (not (find-package "ROCON_DEVICE_MSGS"))
    (make-package "ROCON_DEVICE_MSGS"))
  (shadow 'Device (find-package "ROCON_DEVICE_MSGS")))
(unless (find-package "ROCON_DEVICE_MSGS::DEVICE")
  (make-package "ROCON_DEVICE_MSGS::DEVICE"))

(in-package "ROS")
;;//! \htmlinclude Device.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(defclass rocon_device_msgs::Device
  :super ros::object
  :slots (_label _type _uuid _data ))

(defmethod rocon_device_msgs::Device
  (:init
   (&key
    ((:label __label) "")
    ((:type __type) "")
    ((:uuid __uuid) "")
    ((:data __data) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _type (string __type))
   (setq _uuid (string __uuid))
   (setq _data __data)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; string _type
    4 (length _type)
    ;; string _uuid
    4 (length _uuid)
    ;; rocon_std_msgs/KeyValue[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; rocon_std_msgs/KeyValue[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_std_msgs/KeyValue[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rocon_device_msgs::Device :md5sum-) "42048d9df2b1309c7673a9a4c66a9d9b")
(setf (get rocon_device_msgs::Device :datatype-) "rocon_device_msgs/Device")
(setf (get rocon_device_msgs::Device :definition-)
      "string label
string type
string uuid
rocon_std_msgs/KeyValue[] data

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
")



(provide :rocon_device_msgs/Device "42048d9df2b1309c7673a9a4c66a9d9b")


