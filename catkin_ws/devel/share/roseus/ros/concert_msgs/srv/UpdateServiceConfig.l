;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::UpdateServiceConfig)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'UpdateServiceConfig (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::UPDATESERVICECONFIG")
  (make-package "CONCERT_MSGS::UPDATESERVICECONFIG"))
(unless (find-package "CONCERT_MSGS::UPDATESERVICECONFIGREQUEST")
  (make-package "CONCERT_MSGS::UPDATESERVICECONFIGREQUEST"))
(unless (find-package "CONCERT_MSGS::UPDATESERVICECONFIGRESPONSE")
  (make-package "CONCERT_MSGS::UPDATESERVICECONFIGRESPONSE"))

(in-package "ROS")





(defclass concert_msgs::UpdateServiceConfigRequest
  :super ros::object
  :slots (_service_profile ))

(defmethod concert_msgs::UpdateServiceConfigRequest
  (:init
   (&key
    ((:service_profile __service_profile) (instance concert_msgs::ServiceProfile :init))
    )
   (send-super :init)
   (setq _service_profile __service_profile)
   self)
  (:service_profile
   (&rest __service_profile)
   (if (keywordp (car __service_profile))
       (send* _service_profile __service_profile)
     (progn
       (if __service_profile (setq _service_profile (car __service_profile)))
       _service_profile)))
  (:serialization-length
   ()
   (+
    ;; concert_msgs/ServiceProfile _service_profile
    (send _service_profile :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; concert_msgs/ServiceProfile _service_profile
       (send _service_profile :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; concert_msgs/ServiceProfile _service_profile
     (send _service_profile :deserialize buf ptr-) (incf ptr- (send _service_profile :serialization-length))
   ;;
   self)
  )

(defclass concert_msgs::UpdateServiceConfigResponse
  :super ros::object
  :slots (_success _error_message ))

(defmethod concert_msgs::UpdateServiceConfigResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_message (string __error_message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass concert_msgs::UpdateServiceConfig
  :super ros::object
  :slots ())

(setf (get concert_msgs::UpdateServiceConfig :md5sum-) "c2c38c5e15ad95a99a740e6b43e333e5")
(setf (get concert_msgs::UpdateServiceConfig :datatype-) "concert_msgs/UpdateServiceConfig")
(setf (get concert_msgs::UpdateServiceConfig :request) concert_msgs::UpdateServiceConfigRequest)
(setf (get concert_msgs::UpdateServiceConfig :response) concert_msgs::UpdateServiceConfigResponse)

(defmethod concert_msgs::UpdateServiceConfigRequest
  (:response () (instance concert_msgs::UpdateServiceConfigResponse :init)))

(setf (get concert_msgs::UpdateServiceConfigRequest :md5sum-) "c2c38c5e15ad95a99a740e6b43e333e5")
(setf (get concert_msgs::UpdateServiceConfigRequest :datatype-) "concert_msgs/UpdateServiceConfigRequest")
(setf (get concert_msgs::UpdateServiceConfigRequest :definition-)
      "ServiceProfile service_profile

================================================================================
MSG: concert_msgs/ServiceProfile
# Constants - service types
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
---
bool success
string error_message
")

(setf (get concert_msgs::UpdateServiceConfigResponse :md5sum-) "c2c38c5e15ad95a99a740e6b43e333e5")
(setf (get concert_msgs::UpdateServiceConfigResponse :datatype-) "concert_msgs/UpdateServiceConfigResponse")
(setf (get concert_msgs::UpdateServiceConfigResponse :definition-)
      "ServiceProfile service_profile

================================================================================
MSG: concert_msgs/ServiceProfile
# Constants - service types
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
---
bool success
string error_message
")



(provide :concert_msgs/UpdateServiceConfig "c2c38c5e15ad95a99a740e6b43e333e5")


