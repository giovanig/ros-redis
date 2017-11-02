;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::Constants)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'Constants (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::CONSTANTS")
  (make-package "ROCON_APP_MANAGER_MSGS::CONSTANTS"))

(in-package "ROS")
;;//! \htmlinclude Constants.msg.html


(intern "*NO_REMOTE_CONNECTION*" (find-package "ROCON_APP_MANAGER_MSGS::CONSTANTS"))
(shadow '*NO_REMOTE_CONNECTION* (find-package "ROCON_APP_MANAGER_MSGS::CONSTANTS"))
(defconstant rocon_app_manager_msgs::Constants::*NO_REMOTE_CONNECTION* "none")
(intern "*NO_REMOTE_CONTROLLER*" (find-package "ROCON_APP_MANAGER_MSGS::CONSTANTS"))
(shadow '*NO_REMOTE_CONTROLLER* (find-package "ROCON_APP_MANAGER_MSGS::CONSTANTS"))
(defconstant rocon_app_manager_msgs::Constants::*NO_REMOTE_CONTROLLER* "none")
(defclass rocon_app_manager_msgs::Constants
  :super ros::object
  :slots ())

(defmethod rocon_app_manager_msgs::Constants
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get rocon_app_manager_msgs::Constants :md5sum-) "8dc55825f8d5b0d293568ddca66ef50f")
(setf (get rocon_app_manager_msgs::Constants :datatype-) "rocon_app_manager_msgs/Constants")
(setf (get rocon_app_manager_msgs::Constants :definition-)
      "# Rapp manager is not getting controlled, and is thus, available.
string NO_REMOTE_CONNECTION=none
# An alias for the above
string NO_REMOTE_CONTROLLER=none

")



(provide :rocon_app_manager_msgs/Constants "8dc55825f8d5b0d293568ddca66ef50f")


