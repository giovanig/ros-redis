;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::RappList)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'RappList (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::RAPPLIST")
  (make-package "ROCON_APP_MANAGER_MSGS::RAPPLIST"))

(in-package "ROS")
;;//! \htmlinclude RappList.msg.html


(defclass rocon_app_manager_msgs::RappList
  :super ros::object
  :slots (_available_rapps ))

(defmethod rocon_app_manager_msgs::RappList
  (:init
   (&key
    ((:available_rapps __available_rapps) (let (r) (dotimes (i 0) (push (instance rocon_app_manager_msgs::Rapp :init) r)) r))
    )
   (send-super :init)
   (setq _available_rapps __available_rapps)
   self)
  (:available_rapps
   (&rest __available_rapps)
   (if (keywordp (car __available_rapps))
       (send* _available_rapps __available_rapps)
     (progn
       (if __available_rapps (setq _available_rapps (car __available_rapps)))
       _available_rapps)))
  (:serialization-length
   ()
   (+
    ;; rocon_app_manager_msgs/Rapp[] _available_rapps
    (apply #'+ (send-all _available_rapps :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rocon_app_manager_msgs/Rapp[] _available_rapps
     (write-long (length _available_rapps) s)
     (dolist (elem _available_rapps)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rocon_app_manager_msgs/Rapp[] _available_rapps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available_rapps (let (r) (dotimes (i n) (push (instance rocon_app_manager_msgs::Rapp :init) r)) r))
     (dolist (elem- _available_rapps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rocon_app_manager_msgs::RappList :md5sum-) "796706b807515187050df80223ad161e")
(setf (get rocon_app_manager_msgs::RappList :datatype-) "rocon_app_manager_msgs/RappList")
(setf (get rocon_app_manager_msgs::RappList :definition-)
      "Rapp[] available_rapps

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
")



(provide :rocon_app_manager_msgs/RappList "796706b807515187050df80223ad161e")


