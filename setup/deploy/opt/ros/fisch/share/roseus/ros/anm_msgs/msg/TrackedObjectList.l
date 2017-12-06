;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::TrackedObjectList)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'TrackedObjectList (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::TRACKEDOBJECTLIST")
  (make-package "ANM_MSGS::TRACKEDOBJECTLIST"))

(in-package "ROS")
;;//! \htmlinclude TrackedObjectList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::TrackedObjectList
  :super ros::object
  :slots (_header _tracked_objects ))

(defmethod anm_msgs::TrackedObjectList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracked_objects __tracked_objects) (let (r) (dotimes (i 0) (push (instance anm_msgs::TrackedObject :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracked_objects __tracked_objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracked_objects
   (&rest __tracked_objects)
   (if (keywordp (car __tracked_objects))
       (send* _tracked_objects __tracked_objects)
     (progn
       (if __tracked_objects (setq _tracked_objects (car __tracked_objects)))
       _tracked_objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; anm_msgs/TrackedObject[] _tracked_objects
    (apply #'+ (send-all _tracked_objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; anm_msgs/TrackedObject[] _tracked_objects
     (write-long (length _tracked_objects) s)
     (dolist (elem _tracked_objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; anm_msgs/TrackedObject[] _tracked_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracked_objects (let (r) (dotimes (i n) (push (instance anm_msgs::TrackedObject :init) r)) r))
     (dolist (elem- _tracked_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get anm_msgs::TrackedObjectList :md5sum-) "2f252c59951ec5bfb4bcf631dd7845d1")
(setf (get anm_msgs::TrackedObjectList :datatype-) "anm_msgs/TrackedObjectList")
(setf (get anm_msgs::TrackedObjectList :definition-)
      "# This messages defines an array of tracked 3d bounding boxes

Header header
TrackedObject[] tracked_objects

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
MSG: anm_msgs/TrackedObject
# This messages defines a set of tracked 3d bounding boxes
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



(provide :anm_msgs/TrackedObjectList "2f252c59951ec5bfb4bcf631dd7845d1")


