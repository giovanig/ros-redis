;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::SystemStateRequest)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'SystemStateRequest (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::SYSTEMSTATEREQUEST")
  (make-package "ANM_MSGS::SYSTEMSTATEREQUEST"))

(in-package "ROS")
;;//! \htmlinclude SystemStateRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SYS_REQ_SIMULATE_FAIL_STACK*" (find-package "ANM_MSGS::SYSTEMSTATEREQUEST"))
(shadow '*SYS_REQ_SIMULATE_FAIL_STACK* (find-package "ANM_MSGS::SYSTEMSTATEREQUEST"))
(defconstant anm_msgs::SystemStateRequest::*SYS_REQ_SIMULATE_FAIL_STACK* 101)
(intern "*SYS_REQ_NONE*" (find-package "ANM_MSGS::SYSTEMSTATEREQUEST"))
(shadow '*SYS_REQ_NONE* (find-package "ANM_MSGS::SYSTEMSTATEREQUEST"))
(defconstant anm_msgs::SystemStateRequest::*SYS_REQ_NONE* 127)
(defclass anm_msgs::SystemStateRequest
  :super ros::object
  :slots (_header _state_request _new_state _other_request ))

(defmethod anm_msgs::SystemStateRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state_request __state_request) nil)
    ((:new_state __new_state) (instance anm_msgs::SystemState :init))
    ((:other_request __other_request) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state_request __state_request)
   (setq _new_state __new_state)
   (setq _other_request (round __other_request))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state_request
   (&optional __state_request)
   (if __state_request (setq _state_request __state_request)) _state_request)
  (:new_state
   (&rest __new_state)
   (if (keywordp (car __new_state))
       (send* _new_state __new_state)
     (progn
       (if __new_state (setq _new_state (car __new_state)))
       _new_state)))
  (:other_request
   (&optional __other_request)
   (if __other_request (setq _other_request __other_request)) _other_request)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _state_request
    1
    ;; anm_msgs/SystemState _new_state
    (send _new_state :serialization-length)
    ;; uint8 _other_request
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _state_request
       (if _state_request (write-byte -1 s) (write-byte 0 s))
     ;; anm_msgs/SystemState _new_state
       (send _new_state :serialize s)
     ;; uint8 _other_request
       (write-byte _other_request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _state_request
     (setq _state_request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; anm_msgs/SystemState _new_state
     (send _new_state :deserialize buf ptr-) (incf ptr- (send _new_state :serialization-length))
   ;; uint8 _other_request
     (setq _other_request (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get anm_msgs::SystemStateRequest :md5sum-) "0c64e8ff4ef392d8b8f1e28448c86939")
(setf (get anm_msgs::SystemStateRequest :datatype-) "anm_msgs/SystemStateRequest")
(setf (get anm_msgs::SystemStateRequest :definition-)
      "# This message indicates the requests for the system supervisor

# Other requests:
uint8 SYS_REQ_SIMULATE_FAIL_STACK = 101
uint8 SYS_REQ_NONE = 127

# Message definition
Header header
bool state_request          # request for a state change or something else
SystemState new_state       # new state request (if state_request = true)
uint8 other_request         # other request (if state request = false)

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
MSG: anm_msgs/SystemState
# This message contains the current state of the autonomous system
# Detailed documentation can be found in google drive under the
# architecture/system supervisor folder

# The following constants are used to define the states
uint8 ST_OFF = 0         # in manual mode - system is off
uint8 ST_STANDBY = 1     # in manual mode - system is ready to go to auto mode
uint8 ST_NOT_READY = 2   # in manual mode - system is not ready to go auto mode
uint8 ST_PARKED = 3      # in auto mode - system is autonomously parked
uint8 ST_DRIVE = 4       # in auto mode - system is autonomously driving
uint8 ST_ENAVIGATION = 5 # in auto mode - system is emergency navigation
uint8 ST_FINDPARKING = 6 # in auto mode - system is finding parking
uint8 ST_PLATOONING  = 7 # in auto mode - system is platooning
uint8 ST_EPULLOVER  = 8  # in auto mode - system is emergency pullover
uint8 ST_REVERSE_PARK = 9  # in auto mode - system is reverse parking

# Message definition
Header header
uint8 state             # the state of the system
uint8 envchks           # environment ready checks - 0 = fail, 1 = pass
uint8 syschks           # hardware/software ready checks - 0 = fail, 1 = pass
uint8 navptschks        # is there navigation points currently? 0 = no, 1 = yes


")



(provide :anm_msgs/SystemStateRequest "0c64e8ff4ef392d8b8f1e28448c86939")


