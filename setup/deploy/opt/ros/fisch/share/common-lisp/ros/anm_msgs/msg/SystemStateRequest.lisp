; Auto-generated. Do not edit!


(cl:in-package anm_msgs-msg)


;//! \htmlinclude SystemStateRequest.msg.html

(cl:defclass <SystemStateRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state_request
    :reader state_request
    :initarg :state_request
    :type cl:boolean
    :initform cl:nil)
   (new_state
    :reader new_state
    :initarg :new_state
    :type anm_msgs-msg:SystemState
    :initform (cl:make-instance 'anm_msgs-msg:SystemState))
   (other_request
    :reader other_request
    :initarg :other_request
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SystemStateRequest (<SystemStateRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemStateRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemStateRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name anm_msgs-msg:<SystemStateRequest> is deprecated: use anm_msgs-msg:SystemStateRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemStateRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:header-val is deprecated.  Use anm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state_request-val :lambda-list '(m))
(cl:defmethod state_request-val ((m <SystemStateRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:state_request-val is deprecated.  Use anm_msgs-msg:state_request instead.")
  (state_request m))

(cl:ensure-generic-function 'new_state-val :lambda-list '(m))
(cl:defmethod new_state-val ((m <SystemStateRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:new_state-val is deprecated.  Use anm_msgs-msg:new_state instead.")
  (new_state m))

(cl:ensure-generic-function 'other_request-val :lambda-list '(m))
(cl:defmethod other_request-val ((m <SystemStateRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader anm_msgs-msg:other_request-val is deprecated.  Use anm_msgs-msg:other_request instead.")
  (other_request m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SystemStateRequest>)))
    "Constants for message type '<SystemStateRequest>"
  '((:SYS_REQ_SIMULATE_FAIL_STACK . 101)
    (:SYS_REQ_NONE . 127))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SystemStateRequest)))
    "Constants for message type 'SystemStateRequest"
  '((:SYS_REQ_SIMULATE_FAIL_STACK . 101)
    (:SYS_REQ_NONE . 127))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemStateRequest>) ostream)
  "Serializes a message object of type '<SystemStateRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state_request) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_request)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemStateRequest>) istream)
  "Deserializes a message object of type '<SystemStateRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'state_request) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_state) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_request)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemStateRequest>)))
  "Returns string type for a message object of type '<SystemStateRequest>"
  "anm_msgs/SystemStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemStateRequest)))
  "Returns string type for a message object of type 'SystemStateRequest"
  "anm_msgs/SystemStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemStateRequest>)))
  "Returns md5sum for a message object of type '<SystemStateRequest>"
  "6ec1139ecccffc08772e2a9685a56bbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemStateRequest)))
  "Returns md5sum for a message object of type 'SystemStateRequest"
  "6ec1139ecccffc08772e2a9685a56bbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemStateRequest>)))
  "Returns full string definition for message of type '<SystemStateRequest>"
  (cl:format cl:nil "# This message indicates the requests for the system supervisor~%~%# Other requests:~%uint8 SYS_REQ_SIMULATE_FAIL_STACK = 101~%uint8 SYS_REQ_NONE = 127~%~%# Message definition~%Header header~%bool state_request          # request for a state change or something else~%SystemState new_state       # new state request (if state_request = true)~%uint8 other_request         # other request (if state request = false)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/SystemState~%# This message contains the current state of the autonomous system~%# Detailed documentation can be found in google drive under the~%# architecture/system supervisor folder~%~%# The following constants are used to define the states~%uint8 ST_OFF = 0         # in manual mode - system is off~%uint8 ST_STANDBY = 1     # in manual mode - system is ready to go to auto mode~%uint8 ST_NOT_READY = 2   # in manual mode - system is not ready to go auto mode~%uint8 ST_PARKED = 3      # in auto mode - system is autonomously parked~%uint8 ST_DRIVE = 4       # in auto mode - system is autonomously driving~%uint8 ST_ENAVIGATION = 5 # in auto mode - system is emergency navigation~%uint8 ST_FINDPARKING = 6 # in auto mode - system is finding parking~%uint8 ST_PLATOONING  = 7 # in auto mode - system is platooning~%uint8 ST_EPULLOVER  = 8  # in auto mode - system is emergency pullover~%uint8 ST_REVERSE_PARK = 9  # in auto mode - system is reverse parking~%uint8 ST_PARALLEL_PARK = 10  # in auto mode - system is parallel parking~%~%# Message definition~%Header header~%uint8 state             # the state of the system~%uint8 envchks           # environment ready checks - 0 = fail, 1 = pass~%uint8 syschks           # hardware/software ready checks - 0 = fail, 1 = pass~%uint8 navptschks        # is there navigation points currently? 0 = no, 1 = yes~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemStateRequest)))
  "Returns full string definition for message of type 'SystemStateRequest"
  (cl:format cl:nil "# This message indicates the requests for the system supervisor~%~%# Other requests:~%uint8 SYS_REQ_SIMULATE_FAIL_STACK = 101~%uint8 SYS_REQ_NONE = 127~%~%# Message definition~%Header header~%bool state_request          # request for a state change or something else~%SystemState new_state       # new state request (if state_request = true)~%uint8 other_request         # other request (if state request = false)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: anm_msgs/SystemState~%# This message contains the current state of the autonomous system~%# Detailed documentation can be found in google drive under the~%# architecture/system supervisor folder~%~%# The following constants are used to define the states~%uint8 ST_OFF = 0         # in manual mode - system is off~%uint8 ST_STANDBY = 1     # in manual mode - system is ready to go to auto mode~%uint8 ST_NOT_READY = 2   # in manual mode - system is not ready to go auto mode~%uint8 ST_PARKED = 3      # in auto mode - system is autonomously parked~%uint8 ST_DRIVE = 4       # in auto mode - system is autonomously driving~%uint8 ST_ENAVIGATION = 5 # in auto mode - system is emergency navigation~%uint8 ST_FINDPARKING = 6 # in auto mode - system is finding parking~%uint8 ST_PLATOONING  = 7 # in auto mode - system is platooning~%uint8 ST_EPULLOVER  = 8  # in auto mode - system is emergency pullover~%uint8 ST_REVERSE_PARK = 9  # in auto mode - system is reverse parking~%uint8 ST_PARALLEL_PARK = 10  # in auto mode - system is parallel parking~%~%# Message definition~%Header header~%uint8 state             # the state of the system~%uint8 envchks           # environment ready checks - 0 = fail, 1 = pass~%uint8 syschks           # hardware/software ready checks - 0 = fail, 1 = pass~%uint8 navptschks        # is there navigation points currently? 0 = no, 1 = yes~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemStateRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemStateRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemStateRequest
    (cl:cons ':header (header msg))
    (cl:cons ':state_request (state_request msg))
    (cl:cons ':new_state (new_state msg))
    (cl:cons ':other_request (other_request msg))
))
