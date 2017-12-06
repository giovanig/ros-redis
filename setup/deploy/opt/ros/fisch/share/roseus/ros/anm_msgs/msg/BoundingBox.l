;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::BoundingBox)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'BoundingBox (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::BOUNDINGBOX")
  (make-package "ANM_MSGS::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::BoundingBox
  :super ros::object
  :slots (_header _total _image_width _image_height _x1 _y1 _x2 _y2 _score _labels ))

(defmethod anm_msgs::BoundingBox
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:total __total) 0)
    ((:image_width __image_width) 0)
    ((:image_height __image_height) 0)
    ((:x1 __x1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y1 __y1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:x2 __x2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y2 __y2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:score __score) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:labels __labels) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _total (round __total))
   (setq _image_width (round __image_width))
   (setq _image_height (round __image_height))
   (setq _x1 __x1)
   (setq _y1 __y1)
   (setq _x2 __x2)
   (setq _y2 __y2)
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
  (:image_width
   (&optional __image_width)
   (if __image_width (setq _image_width __image_width)) _image_width)
  (:image_height
   (&optional __image_height)
   (if __image_height (setq _image_height __image_height)) _image_height)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
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
    ;; uint32 _image_width
    4
    ;; uint32 _image_height
    4
    ;; uint16[] _x1
    (* 2    (length _x1)) 4
    ;; uint16[] _y1
    (* 2    (length _y1)) 4
    ;; uint16[] _x2
    (* 2    (length _x2)) 4
    ;; uint16[] _y2
    (* 2    (length _y2)) 4
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
     ;; uint32 _image_width
       (write-long _image_width s)
     ;; uint32 _image_height
       (write-long _image_height s)
     ;; uint16[] _x1
     (write-long (length _x1) s)
     (dotimes (i (length _x1))
       (write-word (elt _x1 i) s)
       )
     ;; uint16[] _y1
     (write-long (length _y1) s)
     (dotimes (i (length _y1))
       (write-word (elt _y1 i) s)
       )
     ;; uint16[] _x2
     (write-long (length _x2) s)
     (dotimes (i (length _x2))
       (write-word (elt _x2 i) s)
       )
     ;; uint16[] _y2
     (write-long (length _y2) s)
     (dotimes (i (length _y2))
       (write-word (elt _y2 i) s)
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
   ;; uint32 _image_width
     (setq _image_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _image_height
     (setq _image_height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16[] _x1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x1 i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _y1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y1 i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _x2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x2 i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _y2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y2 i) (sys::peek buf ptr- :short)) (incf ptr- 2)
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

(setf (get anm_msgs::BoundingBox :md5sum-) "e2941a106c3dc06effa7ce5a73631d0c")
(setf (get anm_msgs::BoundingBox :datatype-) "anm_msgs/BoundingBox")
(setf (get anm_msgs::BoundingBox :definition-)
      "# This messages defines a set of labeled 2d bounding boxes
#
# Bounding box coordinates are encoded using OpenCV format, where
# (x1, y1) represents the left upper corner and (x2, y2) represents
# the bottom right corner. The numeric value denotes the pixel coordinate
# relative to the origin which is the upper left corner of the image.

Header header

uint32 total

uint32 image_width
uint32 image_height

uint16[] x1
uint16[] y1
uint16[] x2
uint16[] y2
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



(provide :anm_msgs/BoundingBox "e2941a106c3dc06effa7ce5a73631d0c")


