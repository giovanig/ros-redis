;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::PublishedInterface)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'PublishedInterface (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::PUBLISHEDINTERFACE")
  (make-package "ROCON_APP_MANAGER_MSGS::PUBLISHEDINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude PublishedInterface.msg.html


(defclass rocon_app_manager_msgs::PublishedInterface
  :super ros::object
  :slots (_interface _name ))

(defmethod rocon_app_manager_msgs::PublishedInterface
  (:init
   (&key
    ((:interface __interface) (instance rocon_app_manager_msgs::PublicInterface :init))
    ((:name __name) "")
    )
   (send-super :init)
   (setq _interface __interface)
   (setq _name (string __name))
   self)
  (:interface
   (&rest __interface)
   (if (keywordp (car __interface))
       (send* _interface __interface)
     (progn
       (if __interface (setq _interface (car __interface)))
       _interface)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; rocon_app_manager_msgs/PublicInterface _interface
    (send _interface :serialization-length)
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rocon_app_manager_msgs/PublicInterface _interface
       (send _interface :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rocon_app_manager_msgs/PublicInterface _interface
     (send _interface :deserialize buf ptr-) (incf ptr- (send _interface :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rocon_app_manager_msgs::PublishedInterface :md5sum-) "0441e6f3dfb91bbff9a213da41a7a0d6")
(setf (get rocon_app_manager_msgs::PublishedInterface :datatype-) "rocon_app_manager_msgs/PublishedInterface")
(setf (get rocon_app_manager_msgs::PublishedInterface :definition-)
      "# The runtime, possibly namespaced and remapped public interface.

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



(provide :rocon_app_manager_msgs/PublishedInterface "0441e6f3dfb91bbff9a213da41a7a0d6")


