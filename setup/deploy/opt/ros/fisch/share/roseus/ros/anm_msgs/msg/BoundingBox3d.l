;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::BoundingBox3d)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'BoundingBox3d (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::BOUNDINGBOX3D")
  (make-package "ANM_MSGS::BOUNDINGBOX3D"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox3d.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::BoundingBox3d
  :super ros::object
  :slots (_header _total _x _y _z _h _w _l _ry _score _labels ))

(defmethod anm_msgs::BoundingBox3d
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:total __total) 0)
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z __z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:h __h) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:w __w) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:l __l) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ry __ry) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:score __score) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:labels __labels) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _total (round __total))
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _h __h)
   (setq _w __w)
   (setq _l __l)
   (setq _ry __ry)
   (setq _score __score)
   (setq _labels __labels)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:ry
   (&optional __ry)
   (if __ry (setq _ry __ry)) _ry)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:labels
   (&optional __labels)
   (if __labels (setq _labels __labels)) _labels)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _total
    4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; float32[] _z
    (* 4    (length _z)) 4
    ;; float32[] _h
    (* 4    (length _h)) 4
    ;; float32[] _w
    (* 4    (length _w)) 4
    ;; float32[] _l
    (* 4    (length _l)) 4
    ;; float32[] _ry
    (* 4    (length _ry)) 4
    ;; float32[] _score
    (* 4    (length _score)) 4
    ;; uint16[] _labels
    (* 2    (length _labels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _total
       (write-long _total s)
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _z
     (write-long (length _z) s)
     (dotimes (i (length _z))
       (sys::poke (elt _z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _h
     (write-long (length _h) s)
     (dotimes (i (length _h))
       (sys::poke (elt _h i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _w
     (write-long (length _w) s)
     (dotimes (i (length _w))
       (sys::poke (elt _w i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _l
     (write-long (length _l) s)
     (dotimes (i (length _l))
       (sys::poke (elt _l i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ry
     (write-long (length _ry) s)
     (dotimes (i (length _ry))
       (sys::poke (elt _ry i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _score
     (write-long (length _score) s)
     (dotimes (i (length _score))
       (sys::poke (elt _score i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint16[] _labels
     (write-long (length _labels) s)
     (dotimes (i (length _labels))
       (write-word (elt _labels i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _total
     (setq _total (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _h
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _h (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _h i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _w
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _w (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _w i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _l
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _l (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _l i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ry
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ry (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ry i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _score
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _score (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _score i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint16[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _labels i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get anm_msgs::BoundingBox3d :md5sum-) "036e1565fd608b01ec7d4aa4d4607d3a")
(setf (get anm_msgs::BoundingBox3d :datatype-) "anm_msgs/BoundingBox3d")
(setf (get anm_msgs::BoundingBox3d :definition-)
      "# This messages defines a set of labeled 2d bounding boxes
#
# Bounding box coordinates are encoded using Kitti format, where (x,y,z)
# represents the centroid, ry represents rotation around the y-axis in radians,
# and (h,w,l) represent the height, width, length of the bounding box.
#
# All units but ry are in metres
#
# Note that the ground plane is represented using the x,z axis

Header header

uint32 total

float32[] x
float32[] y
float32[] z
float32[] h
float32[] w
float32[] l
float32[] ry
float32[] score
uint16[] labels


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



(provide :anm_msgs/BoundingBox3d "036e1565fd608b01ec7d4aa4d4607d3a")


