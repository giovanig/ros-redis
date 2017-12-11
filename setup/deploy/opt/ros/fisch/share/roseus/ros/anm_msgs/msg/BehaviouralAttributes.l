;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::BehaviouralAttributes)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'BehaviouralAttributes (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES")
  (make-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))

(in-package "ROS")
;;//! \htmlinclude BehaviouralAttributes.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TRACK_SPEED*" (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))
(shadow '*TRACK_SPEED* (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))
(defconstant anm_msgs::BehaviouralAttributes::*TRACK_SPEED* 0)
(intern "*DECELERATE_TO_STOP*" (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))
(shadow '*DECELERATE_TO_STOP* (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))
(defconstant anm_msgs::BehaviouralAttributes::*DECELERATE_TO_STOP* 1)
(intern "*STOP*" (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))
(shadow '*STOP* (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))
(defconstant anm_msgs::BehaviouralAttributes::*STOP* 2)
(intern "*PARKED_VEHICLE_AVOID*" (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))
(shadow '*PARKED_VEHICLE_AVOID* (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))
(defconstant anm_msgs::BehaviouralAttributes::*PARKED_VEHICLE_AVOID* 3)
(intern "*LEAD_VEHICLE_FOLLOW*" (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))
(shadow '*LEAD_VEHICLE_FOLLOW* (find-package "ANM_MSGS::BEHAVIOURALATTRIBUTES"))
(defconstant anm_msgs::BehaviouralAttributes::*LEAD_VEHICLE_FOLLOW* 4)
(defclass anm_msgs::BehaviouralAttributes
  :super ros::object
  :slots (_header _maneuver _left_boundary _right_boundary _center_line _stop_location _target_velocity _lead_vehicle_id ))

(defmethod anm_msgs::BehaviouralAttributes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:maneuver __maneuver) 0)
    ((:left_boundary __left_boundary) (instance nav_msgs::Path :init))
    ((:right_boundary __right_boundary) (instance nav_msgs::Path :init))
    ((:center_line __center_line) (instance nav_msgs::Path :init))
    ((:stop_location __stop_location) (instance geometry_msgs::Point :init))
    ((:target_velocity __target_velocity) 0.0)
    ((:lead_vehicle_id __lead_vehicle_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _maneuver (round __maneuver))
   (setq _left_boundary __left_boundary)
   (setq _right_boundary __right_boundary)
   (setq _center_line __center_line)
   (setq _stop_location __stop_location)
   (setq _target_velocity (float __target_velocity))
   (setq _lead_vehicle_id (round __lead_vehicle_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:maneuver
   (&optional __maneuver)
   (if __maneuver (setq _maneuver __maneuver)) _maneuver)
  (:left_boundary
   (&rest __left_boundary)
   (if (keywordp (car __left_boundary))
       (send* _left_boundary __left_boundary)
     (progn
       (if __left_boundary (setq _left_boundary (car __left_boundary)))
       _left_boundary)))
  (:right_boundary
   (&rest __right_boundary)
   (if (keywordp (car __right_boundary))
       (send* _right_boundary __right_boundary)
     (progn
       (if __right_boundary (setq _right_boundary (car __right_boundary)))
       _right_boundary)))
  (:center_line
   (&rest __center_line)
   (if (keywordp (car __center_line))
       (send* _center_line __center_line)
     (progn
       (if __center_line (setq _center_line (car __center_line)))
       _center_line)))
  (:stop_location
   (&rest __stop_location)
   (if (keywordp (car __stop_location))
       (send* _stop_location __stop_location)
     (progn
       (if __stop_location (setq _stop_location (car __stop_location)))
       _stop_location)))
  (:target_velocity
   (&optional __target_velocity)
   (if __target_velocity (setq _target_velocity __target_velocity)) _target_velocity)
  (:lead_vehicle_id
   (&optional __lead_vehicle_id)
   (if __lead_vehicle_id (setq _lead_vehicle_id __lead_vehicle_id)) _lead_vehicle_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _maneuver
    1
    ;; nav_msgs/Path _left_boundary
    (send _left_boundary :serialization-length)
    ;; nav_msgs/Path _right_boundary
    (send _right_boundary :serialization-length)
    ;; nav_msgs/Path _center_line
    (send _center_line :serialization-length)
    ;; geometry_msgs/Point _stop_location
    (send _stop_location :serialization-length)
    ;; float64 _target_velocity
    8
    ;; uint32 _lead_vehicle_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _maneuver
       (write-byte _maneuver s)
     ;; nav_msgs/Path _left_boundary
       (send _left_boundary :serialize s)
     ;; nav_msgs/Path _right_boundary
       (send _right_boundary :serialize s)
     ;; nav_msgs/Path _center_line
       (send _center_line :serialize s)
     ;; geometry_msgs/Point _stop_location
       (send _stop_location :serialize s)
     ;; float64 _target_velocity
       (sys::poke _target_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _lead_vehicle_id
       (write-long _lead_vehicle_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _maneuver
     (setq _maneuver (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; nav_msgs/Path _left_boundary
     (send _left_boundary :deserialize buf ptr-) (incf ptr- (send _left_boundary :serialization-length))
   ;; nav_msgs/Path _right_boundary
     (send _right_boundary :deserialize buf ptr-) (incf ptr- (send _right_boundary :serialization-length))
   ;; nav_msgs/Path _center_line
     (send _center_line :deserialize buf ptr-) (incf ptr- (send _center_line :serialization-length))
   ;; geometry_msgs/Point _stop_location
     (send _stop_location :deserialize buf ptr-) (incf ptr- (send _stop_location :serialization-length))
   ;; float64 _target_velocity
     (setq _target_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _lead_vehicle_id
     (setq _lead_vehicle_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get anm_msgs::BehaviouralAttributes :md5sum-) "f25317166506ec5eda1d82c7f612bedf")
(setf (get anm_msgs::BehaviouralAttributes :datatype-) "anm_msgs/BehaviouralAttributes")
(setf (get anm_msgs::BehaviouralAttributes :definition-)
      "# This message describes all necessary communication between the behavior and local planner

Header header

# The following constants are used to define the current maneuver being executed 
uint8 TRACK_SPEED = 0  			# Track the target speed as defined by target_velocity
uint8 DECELERATE_TO_STOP = 1		# Decelerate to a stopping point as defined by stop_location
uint8 STOP = 2  			# Stay stopped in its current location
uint8 PARKED_VEHICLE_AVOID = 3		# Avoid an upcoming parked vehicle by relaxing the left_boundary constraint
uint8 LEAD_VEHICLE_FOLLOW = 4      	# Follow a lead vehicle as defined by its lead_vehicle_id

uint8 maneuver				# Identifies the maneuver to be executed
nav_msgs/Path left_boundary		# Left lane boundary constraint
nav_msgs/Path right_boundary		# Right lane boundary constraint
nav_msgs/Path center_line		# Center of the lane path (global path) that should be follow
geometry_msgs/Point stop_location	# A point at which the car should stop by
float64 target_velocity			# The velocity which the car should attempt to maintain
uint32 lead_vehicle_id			# The ID of the vehicle that should be followed

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
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :anm_msgs/BehaviouralAttributes "f25317166506ec5eda1d82c7f612bedf")


