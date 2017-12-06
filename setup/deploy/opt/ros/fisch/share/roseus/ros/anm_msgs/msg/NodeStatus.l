;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::NodeStatus)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'NodeStatus (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::NODESTATUS")
  (make-package "ANM_MSGS::NODESTATUS"))

(in-package "ROS")
;;//! \htmlinclude NodeStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FAILED*" (find-package "ANM_MSGS::NODESTATUS"))
(shadow '*FAILED* (find-package "ANM_MSGS::NODESTATUS"))
(defconstant anm_msgs::NodeStatus::*FAILED* 0)
(intern "*INACTIVE*" (find-package "ANM_MSGS::NODESTATUS"))
(shadow '*INACTIVE* (find-package "ANM_MSGS::NODESTATUS"))
(defconstant anm_msgs::NodeStatus::*INACTIVE* 1)
(intern "*ACTIVE*" (find-package "ANM_MSGS::NODESTATUS"))
(shadow '*ACTIVE* (find-package "ANM_MSGS::NODESTATUS"))
(defconstant anm_msgs::NodeStatus::*ACTIVE* 2)
(defclass anm_msgs::NodeStatus
  :super ros::object
  :slots (_header _node_status _node_name ))

(defmethod anm_msgs::NodeStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:node_status __node_status) 0)
    ((:node_name __node_name) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _node_status (round __node_status))
   (setq _node_name (string __node_name))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:node_status
   (&optional __node_status)
   (if __node_status (setq _node_status __node_status)) _node_status)
  (:node_name
   (&optional __node_name)
   (if __node_name (setq _node_name __node_name)) _node_name)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _node_status
    1
    ;; string _node_name
    4 (length _node_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _node_status
       (write-byte _node_status s)
     ;; string _node_name
       (write-long (length _node_name) s) (princ _node_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _node_status
     (setq _node_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get anm_msgs::NodeStatus :md5sum-) "dec5de5121114fa9908b5fe8fcefd1d3")
(setf (get anm_msgs::NodeStatus :datatype-) "anm_msgs/NodeStatus")
(setf (get anm_msgs::NodeStatus :definition-)
      "# This message contains the reported status/health of the publishing nodelet
#
# The status modes are:
#  * Failed
#  * Inactive
#  * Active

# The following constants are used to define the status
uint8 FAILED = 0
uint8 INACTIVE = 1
uint8 ACTIVE = 2

# Message data
Header header
uint8 node_status       # Status of node
string node_name        # Name of reporting node

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



(provide :anm_msgs/NodeStatus "dec5de5121114fa9908b5fe8fcefd1d3")


