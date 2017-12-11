; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude BehaviouralAttributes.msg.html

(cl:defclass <BehaviouralAttributes> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (maneuver
    :reader maneuver
    :initarg :maneuver
    :type cl:fixnum
    :initform 0)
   (left_boundary
    :reader left_boundary
    :initarg :left_boundary
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (right_boundary
    :reader right_boundary
    :initarg :right_boundary
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (center_line
    :reader center_line
    :initarg :center_line
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (stop_location
    :reader stop_location
    :initarg :stop_location
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (target_velocity
    :reader target_velocity
    :initarg :target_velocity
    :type cl:float
    :initform 0.0)
   (lead_vehicle_id
    :reader lead_vehicle_id
    :initarg :lead_vehicle_id
    :type cl:integer
    :initform 0))
)

(cl:defclass BehaviouralAttributes (<BehaviouralAttributes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviouralAttributes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviouralAttributes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<BehaviouralAttributes> is deprecated: use anm_msgs-msg:BehaviouralAttributes instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BehaviouralAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'maneuver-val :lambda-list '(m))
(cl:defmethod maneuver-val ((m <BehaviouralAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:maneuver-val is deprecated.  Use anm_msgs-msg:maneuver instead.")
  (maneuver m))

(cl:ensure-generic-function 'left_boundary-val :lambda-list '(m))
(cl:defmethod left_boundary-val ((m <BehaviouralAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:left_boundary-val is deprecated.  Use anm_msgs-msg:left_boundary instead.")
  (left_boundary m))

(cl:ensure-generic-function 'right_boundary-val :lambda-list '(m))
(cl:defmethod right_boundary-val ((m <BehaviouralAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:right_boundary-val is deprecated.  Use anm_msgs-msg:right_boundary instead.")
  (right_boundary m))

(cl:ensure-generic-function 'center_line-val :lambda-list '(m))
(cl:defmethod center_line-val ((m <BehaviouralAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:center_line-val is deprecated.  Use anm_msgs-msg:center_line instead.")
  (center_line m))

(cl:ensure-generic-function 'stop_location-val :lambda-list '(m))
(cl:defmethod stop_location-val ((m <BehaviouralAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:stop_location-val is deprecated.  Use anm_msgs-msg:stop_location instead.")
  (stop_location m))

(cl:ensure-generic-function 'target_velocity-val :lambda-list '(m))
(cl:defmethod target_velocity-val ((m <BehaviouralAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:target_velocity-val is deprecated.  Use anm_msgs-msg:target_velocity instead.")
  (target_velocity m))

(cl:ensure-generic-function 'lead_vehicle_id-val :lambda-list '(m))
(cl:defmethod lead_vehicle_id-val ((m <BehaviouralAttributes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:lead_vehicle_id-val is deprecated.  Use anm_msgs-msg:lead_vehicle_id instead.")
  (lead_vehicle_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BehaviouralAttributes>)))
    "Constants for message type '<BehaviouralAttributes>"
  '((:TRACK_SPEED . 0)
    (:DECELERATE_TO_STOP . 1)
    (:STOP . 2)
    (:PARKED_VEHICLE_AVOID . 3)
    (:LEAD_VEHICLE_FOLLOW . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BehaviouralAttributes)))
    "Constants for message type 'BehaviouralAttributes"
  '((:TRACK_SPEED . 0)
    (:DECELERATE_TO_STOP . 1)
    (:STOP . 2)
    (:PARKED_VEHICLE_AVOID . 3)
    (:LEAD_VEHICLE_FOLLOW . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviouralAttributes>) ostream)
  "Serializes a message object of type '<BehaviouralAttributes>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maneuver)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_boundary) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_boundary) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_line) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stop_location) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lead_vehicle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lead_vehicle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lead_vehicle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lead_vehicle_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviouralAttributes>) istream)
  "Deserializes a message object of type '<BehaviouralAttributes>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maneuver)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_boundary) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_boundary) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_line) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stop_location) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lead_vehicle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lead_vehicle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lead_vehicle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lead_vehicle_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviouralAttributes>)))
  "Returns string type for a message object of type '<BehaviouralAttributes>"
  "anm_msgs/BehaviouralAttributes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviouralAttributes)))
  "Returns string type for a message object of type 'BehaviouralAttributes"
  "anm_msgs/BehaviouralAttributes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviouralAttributes>)))
  "Returns md5sum for a message object of type '<BehaviouralAttributes>"
  "f25317166506ec5eda1d82c7f612bedf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviouralAttributes)))
  "Returns md5sum for a message object of type 'BehaviouralAttributes"
  "f25317166506ec5eda1d82c7f612bedf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviouralAttributes>)))
  "Returns full string definition for message of type '<BehaviouralAttributes>"
  (cl:format cl:nil "# This message describes all necessary communication between the behavior and local planner~%~%Header header~%~%# The following constants are used to define the current maneuver being executed ~%uint8 TRACK_SPEED = 0  			# Track the target speed as defined by target_velocity~%uint8 DECELERATE_TO_STOP = 1		# Decelerate to a stopping point as defined by stop_location~%uint8 STOP = 2  			# Stay stopped in its current location~%uint8 PARKED_VEHICLE_AVOID = 3		# Avoid an upcoming parked vehicle by relaxing the left_boundary constraint~%uint8 LEAD_VEHICLE_FOLLOW = 4      	# Follow a lead vehicle as defined by its lead_vehicle_id~%~%uint8 maneuver				# Identifies the maneuver to be executed~%nav_msgs/Path left_boundary		# Left lane boundary constraint~%nav_msgs/Path right_boundary		# Right lane boundary constraint~%nav_msgs/Path center_line		# Center of the lane path (global path) that should be follow~%geometry_msgs/Point stop_location	# A point at which the car should stop by~%float64 target_velocity			# The velocity which the car should attempt to maintain~%uint32 lead_vehicle_id			# The ID of the vehicle that should be followed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviouralAttributes)))
  "Returns full string definition for message of type 'BehaviouralAttributes"
  (cl:format cl:nil "# This message describes all necessary communication between the behavior and local planner~%~%Header header~%~%# The following constants are used to define the current maneuver being executed ~%uint8 TRACK_SPEED = 0  			# Track the target speed as defined by target_velocity~%uint8 DECELERATE_TO_STOP = 1		# Decelerate to a stopping point as defined by stop_location~%uint8 STOP = 2  			# Stay stopped in its current location~%uint8 PARKED_VEHICLE_AVOID = 3		# Avoid an upcoming parked vehicle by relaxing the left_boundary constraint~%uint8 LEAD_VEHICLE_FOLLOW = 4      	# Follow a lead vehicle as defined by its lead_vehicle_id~%~%uint8 maneuver				# Identifies the maneuver to be executed~%nav_msgs/Path left_boundary		# Left lane boundary constraint~%nav_msgs/Path right_boundary		# Right lane boundary constraint~%nav_msgs/Path center_line		# Center of the lane path (global path) that should be follow~%geometry_msgs/Point stop_location	# A point at which the car should stop by~%float64 target_velocity			# The velocity which the car should attempt to maintain~%uint32 lead_vehicle_id			# The ID of the vehicle that should be followed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviouralAttributes>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_boundary))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_boundary))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_line))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stop_location))
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviouralAttributes>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviouralAttributes
    (cl:cons ':header (header msg))
    (cl:cons ':maneuver (maneuver msg))
    (cl:cons ':left_boundary (left_boundary msg))
    (cl:cons ':right_boundary (right_boundary msg))
    (cl:cons ':center_line (center_line msg))
    (cl:cons ':stop_location (stop_location msg))
    (cl:cons ':target_velocity (target_velocity msg))
    (cl:cons ':lead_vehicle_id (lead_vehicle_id msg))
))
