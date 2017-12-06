;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::ControlCommands)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'ControlCommands (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::CONTROLCOMMANDS")
  (make-package "ANM_MSGS::CONTROLCOMMANDS"))

(in-package "ROS")
;;//! \htmlinclude ControlCommands.msg.html
(if (not (find-package "DBW_MKZ_MSGS"))
  (ros::roseus-add-msgs "dbw_mkz_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::ControlCommands
  :super ros::object
  :slots (_header _steering_pos_cmd _steering_vel_cmd _steering_EN _throttle_cmd _throttle_EN _brake_cmd _brake_EN _gear_cmd _turn_signal_cmd ))

(defmethod anm_msgs::ControlCommands
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steering_pos_cmd __steering_pos_cmd) 0.0)
    ((:steering_vel_cmd __steering_vel_cmd) 0.0)
    ((:steering_EN __steering_EN) 0)
    ((:throttle_cmd __throttle_cmd) 0.0)
    ((:throttle_EN __throttle_EN) 0)
    ((:brake_cmd __brake_cmd) 0.0)
    ((:brake_EN __brake_EN) 0)
    ((:gear_cmd __gear_cmd) (instance dbw_mkz_msgs::Gear :init))
    ((:turn_signal_cmd __turn_signal_cmd) (instance dbw_mkz_msgs::TurnSignal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _steering_pos_cmd (float __steering_pos_cmd))
   (setq _steering_vel_cmd (float __steering_vel_cmd))
   (setq _steering_EN (round __steering_EN))
   (setq _throttle_cmd (float __throttle_cmd))
   (setq _throttle_EN (round __throttle_EN))
   (setq _brake_cmd (float __brake_cmd))
   (setq _brake_EN (round __brake_EN))
   (setq _gear_cmd __gear_cmd)
   (setq _turn_signal_cmd __turn_signal_cmd)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steering_pos_cmd
   (&optional __steering_pos_cmd)
   (if __steering_pos_cmd (setq _steering_pos_cmd __steering_pos_cmd)) _steering_pos_cmd)
  (:steering_vel_cmd
   (&optional __steering_vel_cmd)
   (if __steering_vel_cmd (setq _steering_vel_cmd __steering_vel_cmd)) _steering_vel_cmd)
  (:steering_EN
   (&optional __steering_EN)
   (if __steering_EN (setq _steering_EN __steering_EN)) _steering_EN)
  (:throttle_cmd
   (&optional __throttle_cmd)
   (if __throttle_cmd (setq _throttle_cmd __throttle_cmd)) _throttle_cmd)
  (:throttle_EN
   (&optional __throttle_EN)
   (if __throttle_EN (setq _throttle_EN __throttle_EN)) _throttle_EN)
  (:brake_cmd
   (&optional __brake_cmd)
   (if __brake_cmd (setq _brake_cmd __brake_cmd)) _brake_cmd)
  (:brake_EN
   (&optional __brake_EN)
   (if __brake_EN (setq _brake_EN __brake_EN)) _brake_EN)
  (:gear_cmd
   (&rest __gear_cmd)
   (if (keywordp (car __gear_cmd))
       (send* _gear_cmd __gear_cmd)
     (progn
       (if __gear_cmd (setq _gear_cmd (car __gear_cmd)))
       _gear_cmd)))
  (:turn_signal_cmd
   (&rest __turn_signal_cmd)
   (if (keywordp (car __turn_signal_cmd))
       (send* _turn_signal_cmd __turn_signal_cmd)
     (progn
       (if __turn_signal_cmd (setq _turn_signal_cmd (car __turn_signal_cmd)))
       _turn_signal_cmd)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _steering_pos_cmd
    4
    ;; float32 _steering_vel_cmd
    4
    ;; uint8 _steering_EN
    1
    ;; float32 _throttle_cmd
    4
    ;; uint8 _throttle_EN
    1
    ;; float32 _brake_cmd
    4
    ;; uint8 _brake_EN
    1
    ;; dbw_mkz_msgs/Gear _gear_cmd
    (send _gear_cmd :serialization-length)
    ;; dbw_mkz_msgs/TurnSignal _turn_signal_cmd
    (send _turn_signal_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _steering_pos_cmd
       (sys::poke _steering_pos_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_vel_cmd
       (sys::poke _steering_vel_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _steering_EN
       (write-byte _steering_EN s)
     ;; float32 _throttle_cmd
       (sys::poke _throttle_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _throttle_EN
       (write-byte _throttle_EN s)
     ;; float32 _brake_cmd
       (sys::poke _brake_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _brake_EN
       (write-byte _brake_EN s)
     ;; dbw_mkz_msgs/Gear _gear_cmd
       (send _gear_cmd :serialize s)
     ;; dbw_mkz_msgs/TurnSignal _turn_signal_cmd
       (send _turn_signal_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _steering_pos_cmd
     (setq _steering_pos_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_vel_cmd
     (setq _steering_vel_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _steering_EN
     (setq _steering_EN (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _throttle_cmd
     (setq _throttle_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _throttle_EN
     (setq _throttle_EN (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _brake_cmd
     (setq _brake_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _brake_EN
     (setq _brake_EN (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dbw_mkz_msgs/Gear _gear_cmd
     (send _gear_cmd :deserialize buf ptr-) (incf ptr- (send _gear_cmd :serialization-length))
   ;; dbw_mkz_msgs/TurnSignal _turn_signal_cmd
     (send _turn_signal_cmd :deserialize buf ptr-) (incf ptr- (send _turn_signal_cmd :serialization-length))
   ;;
   self)
  )

(setf (get anm_msgs::ControlCommands :md5sum-) "d0e12956f02b3e297a2b3e14ba7b4c6b")
(setf (get anm_msgs::ControlCommands :datatype-) "anm_msgs/ControlCommands")
(setf (get anm_msgs::ControlCommands :definition-)
      "# This message defines all control commands required to control the vehicle

Header header

# Steering Wheel
float32 steering_pos_cmd # (rad)
float32 steering_vel_cmd # (rad/s)
uint8 steering_EN

# Throttle
float32 throttle_cmd # (percent) from 0.0 to 1.0
uint8 throttle_EN

# Brake
float32 brake_cmd # (Nm) torque from 0.0 to 3450.0
uint8 brake_EN

# Gear
dbw_mkz_msgs/Gear gear_cmd

# Turn signal
dbw_mkz_msgs/TurnSignal turn_signal_cmd

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
MSG: dbw_mkz_msgs/Gear
uint8 gear

uint8 NONE=0
uint8 PARK=1
uint8 REVERSE=2
uint8 NEUTRAL=3
uint8 DRIVE=4
uint8 LOW=5

================================================================================
MSG: dbw_mkz_msgs/TurnSignal
uint8 value

uint8 NONE=0
uint8 LEFT=1
uint8 RIGHT=2

")



(provide :anm_msgs/ControlCommands "d0e12956f02b3e297a2b3e14ba7b4c6b")


