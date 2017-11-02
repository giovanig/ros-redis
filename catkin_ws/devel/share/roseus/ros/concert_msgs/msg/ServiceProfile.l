;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::ServiceProfile)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'ServiceProfile (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::SERVICEPROFILE")
  (make-package "CONCERT_MSGS::SERVICEPROFILE"))

(in-package "ROS")
;;//! \htmlinclude ServiceProfile.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(intern "*TYPE_ROSLAUNCH*" (find-package "CONCERT_MSGS::SERVICEPROFILE"))
(shadow '*TYPE_ROSLAUNCH* (find-package "CONCERT_MSGS::SERVICEPROFILE"))
(defconstant concert_msgs::ServiceProfile::*TYPE_ROSLAUNCH* "roslaunch")
(intern "*TYPE_CUSTOM*" (find-package "CONCERT_MSGS::SERVICEPROFILE"))
(shadow '*TYPE_CUSTOM* (find-package "CONCERT_MSGS::SERVICEPROFILE"))
(defconstant concert_msgs::ServiceProfile::*TYPE_CUSTOM* "custom")
(intern "*TYPE_SHADOW*" (find-package "CONCERT_MSGS::SERVICEPROFILE"))
(shadow '*TYPE_SHADOW* (find-package "CONCERT_MSGS::SERVICEPROFILE"))
(defconstant concert_msgs::ServiceProfile::*TYPE_SHADOW* "shadow")
(defclass concert_msgs::ServiceProfile
  :super ros::object
  :slots (_resource_name _name _description _author _priority _icon _launcher_type _launcher _interactions _parameters _parameters_detail _uuid _status _enabled ))

(defmethod concert_msgs::ServiceProfile
  (:init
   (&key
    ((:resource_name __resource_name) "")
    ((:name __name) "")
    ((:description __description) "")
    ((:author __author) "")
    ((:priority __priority) 0)
    ((:icon __icon) (instance rocon_std_msgs::Icon :init))
    ((:launcher_type __launcher_type) "")
    ((:launcher __launcher) "")
    ((:interactions __interactions) "")
    ((:parameters __parameters) "")
    ((:parameters_detail __parameters_detail) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    ((:uuid __uuid) (instance uuid_msgs::UniqueID :init))
    ((:status __status) 0)
    ((:enabled __enabled) nil)
    )
   (send-super :init)
   (setq _resource_name (string __resource_name))
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _author (string __author))
   (setq _priority (round __priority))
   (setq _icon __icon)
   (setq _launcher_type (string __launcher_type))
   (setq _launcher (string __launcher))
   (setq _interactions (string __interactions))
   (setq _parameters (string __parameters))
   (setq _parameters_detail __parameters_detail)
   (setq _uuid __uuid)
   (setq _status (round __status))
   (setq _enabled __enabled)
   self)
  (:resource_name
   (&optional __resource_name)
   (if __resource_name (setq _resource_name __resource_name)) _resource_name)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:author
   (&optional __author)
   (if __author (setq _author __author)) _author)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:icon
   (&rest __icon)
   (if (keywordp (car __icon))
       (send* _icon __icon)
     (progn
       (if __icon (setq _icon (car __icon)))
       _icon)))
  (:launcher_type
   (&optional __launcher_type)
   (if __launcher_type (setq _launcher_type __launcher_type)) _launcher_type)
  (:launcher
   (&optional __launcher)
   (if __launcher (setq _launcher __launcher)) _launcher)
  (:interactions
   (&optional __interactions)
   (if __interactions (setq _interactions __interactions)) _interactions)
  (:parameters
   (&optional __parameters)
   (if __parameters (setq _parameters __parameters)) _parameters)
  (:parameters_detail
   (&rest __parameters_detail)
   (if (keywordp (car __parameters_detail))
       (send* _parameters_detail __parameters_detail)
     (progn
       (if __parameters_detail (setq _parameters_detail (car __parameters_detail)))
       _parameters_detail)))
  (:uuid
   (&rest __uuid)
   (if (keywordp (car __uuid))
       (send* _uuid __uuid)
     (progn
       (if __uuid (setq _uuid (car __uuid)))
       _uuid)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:serialization-length
   ()
   (+
    ;; string _resource_name
    4 (length _resource_name)
    ;; string _name
    4 (length _name)
    ;; string _description
    4 (length _description)
    ;; string _author
    4 (length _author)
    ;; uint16 _priority
    2
    ;; rocon_std_msgs/Icon _icon
    (send _icon :serialization-length)
    ;; string _launcher_type
    4 (length _launcher_type)
    ;; string _launcher
    4 (length _launcher)
    ;; string _interactions
    4 (length _interactions)
    ;; string _parameters
    4 (length _parameters)
    ;; rocon_std_msgs/KeyValue[] _parameters_detail
    (apply #'+ (send-all _parameters_detail :serialization-length)) 4
    ;; uuid_msgs/UniqueID _uuid
    (send _uuid :serialization-length)
    ;; int16 _status
    2
    ;; bool _enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _resource_name
       (write-long (length _resource_name) s) (princ _resource_name s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _author
       (write-long (length _author) s) (princ _author s)
     ;; uint16 _priority
       (write-word _priority s)
     ;; rocon_std_msgs/Icon _icon
       (send _icon :serialize s)
     ;; string _launcher_type
       (write-long (length _launcher_type) s) (princ _launcher_type s)
     ;; string _launcher
       (write-long (length _launcher) s) (princ _launcher s)
     ;; string _interactions
       (write-long (length _interactions) s) (princ _interactions s)
     ;; string _parameters
       (write-long (length _parameters) s) (princ _parameters s)
     ;; rocon_std_msgs/KeyValue[] _parameters_detail
     (write-long (length _parameters_detail) s)
     (dolist (elem _parameters_detail)
       (send elem :serialize s)
       )
     ;; uuid_msgs/UniqueID _uuid
       (send _uuid :serialize s)
     ;; int16 _status
       (write-word _status s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _resource_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _resource_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _author
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _author (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; rocon_std_msgs/Icon _icon
     (send _icon :deserialize buf ptr-) (incf ptr- (send _icon :serialization-length))
   ;; string _launcher_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _launcher_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _launcher
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _launcher (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _interactions
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _interactions (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _parameters
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameters (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_std_msgs/KeyValue[] _parameters_detail
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameters_detail (let (r) (dotimes (i n) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
     (dolist (elem- _parameters_detail)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uuid_msgs/UniqueID _uuid
     (send _uuid :deserialize buf ptr-) (incf ptr- (send _uuid :serialization-length))
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get concert_msgs::ServiceProfile :md5sum-) "dcb6ede1f2f06a387af71a83b4776139")
(setf (get concert_msgs::ServiceProfile :datatype-) "concert_msgs/ServiceProfile")
(setf (get concert_msgs::ServiceProfile :definition-)
      "# Constants - service types
string TYPE_ROSLAUNCH = roslaunch
string TYPE_CUSTOM    = custom
string TYPE_SHADOW    = shadow

# Pre-configured parameters
string                      resource_name
string                      name
string                      description
string                      author
uint16                      priority
rocon_std_msgs/Icon         icon
string                      launcher_type
string                      launcher
string                      interactions
string                      parameters
rocon_std_msgs/KeyValue[]   parameters_detail

# Initialised parameters (on startup)
uuid_msgs/UniqueID          uuid

# Runtime variables
int16                       status
bool                        enabled

================================================================================
MSG: rocon_std_msgs/Icon
# Used to idenfity the original package/filename resource this icon was/is to be loaded from
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
string resource_name

# Image data format.  \"jpeg\" or \"png\"
string format

# Image data.
uint8[] data
================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

")



(provide :concert_msgs/ServiceProfile "dcb6ede1f2f06a387af71a83b4776139")


