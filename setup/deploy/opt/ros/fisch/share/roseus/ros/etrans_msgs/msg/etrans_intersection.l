;; Auto-generated. Do not edit!


(when (boundp 'etrans_msgs::etrans_intersection)
  (if (not (find-package "ETRANS_MSGS"))
    (make-package "ETRANS_MSGS"))
  (shadow 'etrans_intersection (find-package "ETRANS_MSGS")))
(unless (find-package "ETRANS_MSGS::ETRANS_INTERSECTION")
  (make-package "ETRANS_MSGS::ETRANS_INTERSECTION"))

(in-package "ROS")
;;//! \htmlinclude etrans_intersection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass etrans_msgs::etrans_intersection
  :super ros::object
  :slots (_header _ID _lights _lanes ))

(defmethod etrans_msgs::etrans_intersection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ID __ID) 0)
    ((:lights __lights) (let (r) (dotimes (i 0) (push (instance etrans_msgs::etrans_light :init) r)) r))
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance etrans_msgs::etrans_lane :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ID (round __ID))
   (setq _lights __lights)
   (setq _lanes __lanes)
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
  (:lights
   (&rest __lights)
   (if (keywordp (car __lights))
       (send* _lights __lights)
     (progn
       (if __lights (setq _lights (car __lights)))
       _lights)))
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _ID
    4
    ;; etrans_msgs/etrans_light[] _lights
    (apply #'+ (send-all _lights :serialization-length)) 4
    ;; etrans_msgs/etrans_lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _ID
       (write-long _ID s)
     ;; etrans_msgs/etrans_light[] _lights
     (write-long (length _lights) s)
     (dolist (elem _lights)
       (send elem :serialize s)
       )
     ;; etrans_msgs/etrans_lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; etrans_msgs/etrans_light[] _lights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lights (let (r) (dotimes (i n) (push (instance etrans_msgs::etrans_light :init) r)) r))
     (dolist (elem- _lights)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; etrans_msgs/etrans_lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance etrans_msgs::etrans_lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get etrans_msgs::etrans_intersection :md5sum-) "0c97a642a195257607a5e8b421317b71")
(setf (get etrans_msgs::etrans_intersection :datatype-) "etrans_msgs/etrans_intersection")
(setf (get etrans_msgs::etrans_intersection :definition-)
      "std_msgs/Header header
uint32 ID
etrans_msgs/etrans_light[] lights
etrans_msgs/etrans_lane[] lanes
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
MSG: etrans_msgs/etrans_light
int8 state
uint32 signal_group
float64 time_to_change
float64 latitude
float64 longitude

================================================================================
MSG: etrans_msgs/etrans_lane
uint32 ID
etrans_msgs/etrans_latlon[] centerpoints
================================================================================
MSG: etrans_msgs/etrans_latlon
float64 latitude
float64 longitude
")



(provide :etrans_msgs/etrans_intersection "0c97a642a195257607a5e8b421317b71")


