;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::RODElementFeedback)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'RODElementFeedback (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::RODELEMENTFEEDBACK")
  (make-package "ANM_MSGS::RODELEMENTFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude RODElementFeedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SATISFIED*" (find-package "ANM_MSGS::RODELEMENTFEEDBACK"))
(shadow '*SATISFIED* (find-package "ANM_MSGS::RODELEMENTFEEDBACK"))
(defconstant anm_msgs::RODElementFeedback::*SATISFIED* 0)
(intern "*VIOLATED*" (find-package "ANM_MSGS::RODELEMENTFEEDBACK"))
(shadow '*VIOLATED* (find-package "ANM_MSGS::RODELEMENTFEEDBACK"))
(defconstant anm_msgs::RODElementFeedback::*VIOLATED* 1)
(intern "*UPCOMING_VIOLATION*" (find-package "ANM_MSGS::RODELEMENTFEEDBACK"))
(shadow '*UPCOMING_VIOLATION* (find-package "ANM_MSGS::RODELEMENTFEEDBACK"))
(defconstant anm_msgs::RODElementFeedback::*UPCOMING_VIOLATION* 2)
(defclass anm_msgs::RODElementFeedback
  :super ros::object
  :slots (_header _feedback _time_to_violation _element ))

(defmethod anm_msgs::RODElementFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:feedback __feedback) 0)
    ((:time_to_violation __time_to_violation) 0.0)
    ((:element __element) (instance anm_msgs::RODElement :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _feedback (round __feedback))
   (setq _time_to_violation (float __time_to_violation))
   (setq _element __element)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:time_to_violation
   (&optional __time_to_violation)
   (if __time_to_violation (setq _time_to_violation __time_to_violation)) _time_to_violation)
  (:element
   (&rest __element)
   (if (keywordp (car __element))
       (send* _element __element)
     (progn
       (if __element (setq _element (car __element)))
       _element)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _feedback
    1
    ;; float32 _time_to_violation
    4
    ;; anm_msgs/RODElement _element
    (send _element :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _feedback
       (write-byte _feedback s)
     ;; float32 _time_to_violation
       (sys::poke _time_to_violation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; anm_msgs/RODElement _element
       (send _element :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _feedback
     (setq _feedback (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _time_to_violation
     (setq _time_to_violation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; anm_msgs/RODElement _element
     (send _element :deserialize buf ptr-) (incf ptr- (send _element :serialization-length))
   ;;
   self)
  )

(setf (get anm_msgs::RODElementFeedback :md5sum-) "4b487ac5a89abea776b278b3c85cd812")
(setf (get anm_msgs::RODElementFeedback :datatype-) "anm_msgs/RODElementFeedback")
(setf (get anm_msgs::RODElementFeedback :definition-)
      "Header header

uint8 SATISFIED = 0
uint8 VIOLATED = 1
uint8 UPCOMING_VIOLATION = 2

# The feedback code
uint8 feedback

# The time remaining until violation
float32 time_to_violation

# The element which the feedback is for
anm_msgs/RODElement element

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
MSG: anm_msgs/RODElement
Header header

# Type/classification of element
string element_type

# Different values depending on the element type
float32 float_value
string string_value
string[] string_array

")



(provide :anm_msgs/RODElementFeedback "4b487ac5a89abea776b278b3c85cd812")


