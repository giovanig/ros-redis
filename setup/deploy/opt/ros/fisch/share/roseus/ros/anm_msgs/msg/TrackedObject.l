;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::TrackedObject)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'TrackedObject (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::TRACKEDOBJECT")
  (make-package "ANM_MSGS::TRACKEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude TrackedObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::TrackedObject
  :super ros::object
  :slots (_header _id _labels _center _h _w _l _ry _score _velocity _occluded _historied_center _historied_velocity _historied_occluded ))

(defmethod anm_msgs::TrackedObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:labels __labels) 0)
    ((:center __center) (instance geometry_msgs::Vector3 :init))
    ((:h __h) 0.0)
    ((:w __w) 0.0)
    ((:l __l) 0.0)
    ((:ry __ry) 0.0)
    ((:score __score) 0.0)
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:occluded __occluded) nil)
    ((:historied_center __historied_center) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:historied_velocity __historied_velocity) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:historied_occluded __historied_occluded) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _labels (round __labels))
   (setq _center __center)
   (setq _h (float __h))
   (setq _w (float __w))
   (setq _l (float __l))
   (setq _ry (float __ry))
   (setq _score (float __score))
   (setq _velocity __velocity)
   (setq _occluded __occluded)
   (setq _historied_center __historied_center)
   (setq _historied_velocity __historied_velocity)
   (setq _historied_occluded __historied_occluded)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:labels
   (&optional __labels)
   (if __labels (setq _labels __labels)) _labels)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
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
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:occluded
   (&optional __occluded)
   (if __occluded (setq _occluded __occluded)) _occluded)
  (:historied_center
   (&rest __historied_center)
   (if (keywordp (car __historied_center))
       (send* _historied_center __historied_center)
     (progn
       (if __historied_center (setq _historied_center (car __historied_center)))
       _historied_center)))
  (:historied_velocity
   (&rest __historied_velocity)
   (if (keywordp (car __historied_velocity))
       (send* _historied_velocity __historied_velocity)
     (progn
       (if __historied_velocity (setq _historied_velocity (car __historied_velocity)))
       _historied_velocity)))
  (:historied_occluded
   (&optional __historied_occluded)
   (if __historied_occluded (setq _historied_occluded __historied_occluded)) _historied_occluded)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; uint16 _labels
    2
    ;; geometry_msgs/Vector3 _center
    (send _center :serialization-length)
    ;; float32 _h
    4
    ;; float32 _w
    4
    ;; float32 _l
    4
    ;; float32 _ry
    4
    ;; float32 _score
    4
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; bool _occluded
    1
    ;; geometry_msgs/Vector3[] _historied_center
    (apply #'+ (send-all _historied_center :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _historied_velocity
    (apply #'+ (send-all _historied_velocity :serialization-length)) 4
    ;; bool[] _historied_occluded
    (* 1    (length _historied_occluded)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint16 _labels
       (write-word _labels s)
     ;; geometry_msgs/Vector3 _center
       (send _center :serialize s)
     ;; float32 _h
       (sys::poke _h (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _l
       (sys::poke _l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ry
       (sys::poke _ry (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; bool _occluded
       (if _occluded (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Vector3[] _historied_center
     (write-long (length _historied_center) s)
     (dolist (elem _historied_center)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _historied_velocity
     (write-long (length _historied_velocity) s)
     (dolist (elem _historied_velocity)
       (send elem :serialize s)
       )
     ;; bool[] _historied_occluded
     (write-long (length _historied_occluded) s)
     (dotimes (i (length _historied_occluded))
       (if (elt _historied_occluded i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _labels
     (setq _labels (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Vector3 _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; float32 _h
     (setq _h (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _l
     (setq _l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ry
     (setq _ry (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; bool _occluded
     (setq _occluded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Vector3[] _historied_center
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _historied_center (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _historied_center)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _historied_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _historied_velocity (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _historied_velocity)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool[] _historied_occluded
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _historied_occluded (make-list n))
     (dotimes (i n)
     (setf (elt _historied_occluded i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get anm_msgs::TrackedObject :md5sum-) "5ed9b60bacc1bae8a12b07a094063510")
(setf (get anm_msgs::TrackedObject :datatype-) "anm_msgs/TrackedObject")
(setf (get anm_msgs::TrackedObject :definition-)
      "# This messages defines a set of tracked 3d bounding boxes
#
# 3D Bounding box coordinates are encoded using Kitti format (in camera frame), where (x,y,z)
# represents the centroid, ry represents rotation around the y-axis in radians,
# and (h,w,l) represent the height, width, length of the bounding box.
#
# All units but ry are in metres
#
# Note that the ground plane is represented using the x,z axis
#
# labels for classes classes = ['Car', 'Van', 'Truck', 'Pedestrian', 'Person_sitting', 'Cyclist', 'Tram', 'Misc']
#
#
#

Header header

uint32 id
uint16 labels

# bounding box
geometry_msgs/Vector3 center
float32 h
float32 w
float32 l
float32 ry
float32 score

# speed 
geometry_msgs/Vector3 velocity

# status
bool occluded

# historied center
geometry_msgs/Vector3[] historied_center

# historied speed
geometry_msgs/Vector3[] historied_velocity

# historied occlusion status
bool[] historied_occluded




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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :anm_msgs/TrackedObject "5ed9b60bacc1bae8a12b07a094063510")


