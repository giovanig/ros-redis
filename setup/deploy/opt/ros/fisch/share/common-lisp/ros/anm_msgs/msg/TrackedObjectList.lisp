; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude TrackedObjectList.msg.html

(cl:defclass <TrackedObjectList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tracked_objects
    :reader tracked_objects
    :initarg :tracked_objects
    :type (cl:vector anm_msgs-msg:TrackedObject)
   :initform (cl:make-array 0 :element-type 'anm_msgs-msg:TrackedObject :initial-element (cl:make-instance 'anm_msgs-msg:TrackedObject))))
)

(cl:defclass TrackedObjectList (<TrackedObjectList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackedObjectList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackedObjectList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<TrackedObjectList> is deprecated: use anm_msgs-msg:TrackedObjectList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackedObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tracked_objects-val :lambda-list '(m))
(cl:defmethod tracked_objects-val ((m <TrackedObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:tracked_objects-val is deprecated.  Use anm_msgs-msg:tracked_objects instead.")
  (tracked_objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackedObjectList>) ostream)
  "Serializes a message object of type '<TrackedObjectList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracked_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tracked_objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackedObjectList>) istream)
  "Deserializes a message object of type '<TrackedObjectList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracked_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracked_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'anm_msgs-msg:TrackedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackedObjectList>)))
  "Returns string type for a message object of type '<TrackedObjectList>"
  "anm_msgs/TrackedObjectList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackedObjectList)))
  "Returns string type for a message object of type 'TrackedObjectList"
  "anm_msgs/TrackedObjectList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackedObjectList>)))
  "Returns md5sum for a message object of type '<TrackedObjectList>"
  "2f252c59951ec5bfb4bcf631dd7845d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackedObjectList)))
  "Returns md5sum for a message object of type 'TrackedObjectList"
  "2f252c59951ec5bfb4bcf631dd7845d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackedObjectList>)))
  "Returns full string definition for message of type '<TrackedObjectList>"
  (cl:format cl:nil "# This messages defines an array of tracked 3d bounding boxes~%~%Header header~%TrackedObject[] tracked_objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/TrackedObject~%# This messages defines a set of tracked 3d bounding boxes~%#~%# 3D Bounding box coordinates are encoded using Kitti format (in camera frame), where (x,y,z)~%# represents the centroid, ry represents rotation around the y-axis in radians,~%# and (h,w,l) represent the height, width, length of the bounding box.~%#~%# All units but ry are in metres~%#~%# Note that the ground plane is represented using the x,z axis~%#~%# labels for classes classes = ['Car', 'Van', 'Truck', 'Pedestrian', 'Person_sitting', 'Cyclist', 'Tram', 'Misc']~%#~%#~%#~%~%Header header~%~%uint32 id~%uint16 labels~%~%# bounding box~%geometry_msgs/Vector3 center~%float32 h~%float32 w~%float32 l~%float32 ry~%float32 score~%~%# speed ~%geometry_msgs/Vector3 velocity~%~%# status~%bool occluded~%~%# historied center~%geometry_msgs/Vector3[] historied_center~%~%# historied speed~%geometry_msgs/Vector3[] historied_velocity~%~%# historied occlusion status~%bool[] historied_occluded~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackedObjectList)))
  "Returns full string definition for message of type 'TrackedObjectList"
  (cl:format cl:nil "# This messages defines an array of tracked 3d bounding boxes~%~%Header header~%TrackedObject[] tracked_objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/TrackedObject~%# This messages defines a set of tracked 3d bounding boxes~%#~%# 3D Bounding box coordinates are encoded using Kitti format (in camera frame), where (x,y,z)~%# represents the centroid, ry represents rotation around the y-axis in radians,~%# and (h,w,l) represent the height, width, length of the bounding box.~%#~%# All units but ry are in metres~%#~%# Note that the ground plane is represented using the x,z axis~%#~%# labels for classes classes = ['Car', 'Van', 'Truck', 'Pedestrian', 'Person_sitting', 'Cyclist', 'Tram', 'Misc']~%#~%#~%#~%~%Header header~%~%uint32 id~%uint16 labels~%~%# bounding box~%geometry_msgs/Vector3 center~%float32 h~%float32 w~%float32 l~%float32 ry~%float32 score~%~%# speed ~%geometry_msgs/Vector3 velocity~%~%# status~%bool occluded~%~%# historied center~%geometry_msgs/Vector3[] historied_center~%~%# historied speed~%geometry_msgs/Vector3[] historied_velocity~%~%# historied occlusion status~%bool[] historied_occluded~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackedObjectList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracked_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackedObjectList>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackedObjectList
    (cl:cons ':header (header msg))
    (cl:cons ':tracked_objects (tracked_objects msg))
))
