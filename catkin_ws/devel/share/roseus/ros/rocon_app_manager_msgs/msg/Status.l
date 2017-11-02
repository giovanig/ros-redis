;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::Status)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'Status (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::STATUS")
  (make-package "ROCON_APP_MANAGER_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(intern "*RAPP_STOPPED*" (find-package "ROCON_APP_MANAGER_MSGS::STATUS"))
(shadow '*RAPP_STOPPED* (find-package "ROCON_APP_MANAGER_MSGS::STATUS"))
(defconstant rocon_app_manager_msgs::Status::*RAPP_STOPPED* "stopped")
(intern "*RAPP_RUNNING*" (find-package "ROCON_APP_MANAGER_MSGS::STATUS"))
(shadow '*RAPP_RUNNING* (find-package "ROCON_APP_MANAGER_MSGS::STATUS"))
(defconstant rocon_app_manager_msgs::Status::*RAPP_RUNNING* "running")
(defclass rocon_app_manager_msgs::Status
  :super ros::object
  :slots (_application_namespace _remote_controller _rapp_status _rapp _published_interfaces _published_parameters ))

(defmethod rocon_app_manager_msgs::Status
  (:init
   (&key
    ((:application_namespace __application_namespace) "")
    ((:remote_controller __remote_controller) "")
    ((:rapp_status __rapp_status) "")
    ((:rapp __rapp) (instance rocon_app_manager_msgs::Rapp :init))
    ((:published_interfaces __published_interfaces) (let (r) (dotimes (i 0) (push (instance rocon_app_manager_msgs::PublishedInterface :init) r)) r))
    ((:published_parameters __published_parameters) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _application_namespace (string __application_namespace))
   (setq _remote_controller (string __remote_controller))
   (setq _rapp_status (string __rapp_status))
   (setq _rapp __rapp)
   (setq _published_interfaces __published_interfaces)
   (setq _published_parameters __published_parameters)
   self)
  (:application_namespace
   (&optional __application_namespace)
   (if __application_namespace (setq _application_namespace __application_namespace)) _application_namespace)
  (:remote_controller
   (&optional __remote_controller)
   (if __remote_controller (setq _remote_controller __remote_controller)) _remote_controller)
  (:rapp_status
   (&optional __rapp_status)
   (if __rapp_status (setq _rapp_status __rapp_status)) _rapp_status)
  (:rapp
   (&rest __rapp)
   (if (keywordp (car __rapp))
       (send* _rapp __rapp)
     (progn
       (if __rapp (setq _rapp (car __rapp)))
       _rapp)))
  (:published_interfaces
   (&rest __published_interfaces)
   (if (keywordp (car __published_interfaces))
       (send* _published_interfaces __published_interfaces)
     (progn
       (if __published_interfaces (setq _published_interfaces (car __published_interfaces)))
       _published_interfaces)))
  (:published_parameters
   (&rest __published_parameters)
   (if (keywordp (car __published_parameters))
       (send* _published_parameters __published_parameters)
     (progn
       (if __published_parameters (setq _published_parameters (car __published_parameters)))
       _published_parameters)))
  (:serialization-length
   ()
   (+
    ;; string _application_namespace
    4 (length _application_namespace)
    ;; string _remote_controller
    4 (length _remote_controller)
    ;; string _rapp_status
    4 (length _rapp_status)
    ;; rocon_app_manager_msgs/Rapp _rapp
    (send _rapp :serialization-length)
    ;; rocon_app_manager_msgs/PublishedInterface[] _published_interfaces
    (apply #'+ (send-all _published_interfaces :serialization-length)) 4
    ;; rocon_std_msgs/KeyValue[] _published_parameters
    (apply #'+ (send-all _published_parameters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _application_namespace
       (write-long (length _application_namespace) s) (princ _application_namespace s)
     ;; string _remote_controller
       (write-long (length _remote_controller) s) (princ _remote_controller s)
     ;; string _rapp_status
       (write-long (length _rapp_status) s) (princ _rapp_status s)
     ;; rocon_app_manager_msgs/Rapp _rapp
       (send _rapp :serialize s)
     ;; rocon_app_manager_msgs/PublishedInterface[] _published_interfaces
     (write-long (length _published_interfaces) s)
     (dolist (elem _published_interfaces)
       (send elem :serialize s)
       )
     ;; rocon_std_msgs/KeyValue[] _published_parameters
     (write-long (length _published_parameters) s)
     (dolist (elem _published_parameters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _application_namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _application_namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _remote_controller
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remote_controller (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rapp_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rapp_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_app_manager_msgs/Rapp _rapp
     (send _rapp :deserialize buf ptr-) (incf ptr- (send _rapp :serialization-length))
   ;; rocon_app_manager_msgs/PublishedInterface[] _published_interfaces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _published_interfaces (let (r) (dotimes (i n) (push (instance rocon_app_manager_msgs::PublishedInterface :init) r)) r))
     (dolist (elem- _published_interfaces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rocon_std_msgs/KeyValue[] _published_parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _published_parameters (let (r) (dotimes (i n) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
     (dolist (elem- _published_parameters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rocon_app_manager_msgs::Status :md5sum-) "845a2087bbeabf6770c4fda9fcc80442")
(setf (get rocon_app_manager_msgs::Status :datatype-) "rocon_app_manager_msgs/Status")
(setf (get rocon_app_manager_msgs::Status :definition-)
      "# Namespace under which applications will run if connected
string application_namespace

# Who is controlling the app manager (i.e. who invited it to send it's
# control handles). If the empty string, it is not being controlled 
# and subsequently is available
string remote_controller

# Rapp is running or not
string RAPP_STOPPED=stopped
string RAPP_RUNNING=running
string rapp_status

# Current app details (if running), a default Rapp() (filled with empty strings and lists) otherwise
Rapp rapp

# The runtime, possibly namespaced and remapped interfaces/parameters
PublishedInterface[] published_interfaces
rocon_std_msgs/KeyValue[] published_parameters

================================================================================
MSG: rocon_app_manager_msgs/Rapp
# This is the message that gets published in list_rapps. Do not think of it as the
# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)
# Rather it is the published list of rapps with the required information for the concert
# and some introspection.

# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)
string name
# user-friendly display name
string display_name
string description
# a rocon uri string indicating platform compatibility
string compatibility
string status

# a list of implementations
string[] implementations

# A preferred rapp for virtual rapp
string preferred

# icon for showing the app
rocon_std_msgs/Icon icon

# public interface and parameters
rocon_std_msgs/KeyValue[] public_interface
rocon_std_msgs/KeyValue[] public_parameters

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
MSG: rocon_app_manager_msgs/PublishedInterface
# The runtime, possibly namespaced and remapped public interface.

PublicInterface interface

# Final absolute namespaced/remapped name of the topic/service/action xxx
string name
================================================================================
MSG: rocon_app_manager_msgs/PublicInterface
# Represents a public interface of a rapp

# One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)
string connection_type

# The data type, e.g. std_msgs/Strings
string data_type

# Name of the topic/service/action xxx.
string name


")



(provide :rocon_app_manager_msgs/Status "845a2087bbeabf6770c4fda9fcc80442")


