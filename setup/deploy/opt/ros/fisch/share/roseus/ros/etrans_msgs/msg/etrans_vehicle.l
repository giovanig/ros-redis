;; Auto-generated. Do not edit!


(when (boundp 'etrans_msgs::etrans_vehicle)
  (if (not (find-package "ETRANS_MSGS"))
    (make-package "ETRANS_MSGS"))
  (shadow 'etrans_vehicle (find-package "ETRANS_MSGS")))
(unless (find-package "ETRANS_MSGS::ETRANS_VEHICLE")
  (make-package "ETRANS_MSGS::ETRANS_VEHICLE"))

(in-package "ROS")
;;//! \htmlinclude etrans_vehicle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass etrans_msgs::etrans_vehicle
  :super ros::object
  :slots (_header _ID _latitude _longitude _speed _heading _self ))

(defmethod etrans_msgs::etrans_vehicle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ID __ID) 0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:speed __speed) 0.0)
    ((:heading __heading) 0.0)
    ((:self __self) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ID (round __ID))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _speed (float __speed))
   (setq _heading (float __heading))
   (setq _self __self)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:self
   (&optional __self)
   (if __self (setq _self __self)) _self)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _ID
    4
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _speed
    8
    ;; float64 _heading
    8
    ;; bool _self
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _ID
       (write-long _ID s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _self
       (if _self (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _self
     (setq _self (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get etrans_msgs::etrans_vehicle :md5sum-) "7a208cf19d1f621b47af0d986814c4c0")
(setf (get etrans_msgs::etrans_vehicle :datatype-) "etrans_msgs/etrans_vehicle")
(setf (get etrans_msgs::etrans_vehicle :definition-)
      "std_msgs/Header header
uint32 ID
float64 latitude
float64 longitude
float64 speed
float64 heading
bool self
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



(provide :etrans_msgs/etrans_vehicle "7a208cf19d1f621b47af0d986814c4c0")


