;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::PublicInterface)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'PublicInterface (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::PUBLICINTERFACE")
  (make-package "ROCON_APP_MANAGER_MSGS::PUBLICINTERFACE"))

(in-package "ROS")
;;//! \htmlinclude PublicInterface.msg.html


(defclass rocon_app_manager_msgs::PublicInterface
  :super ros::object
  :slots (_connection_type _data_type _name ))

(defmethod rocon_app_manager_msgs::PublicInterface
  (:init
   (&key
    ((:connection_type __connection_type) "")
    ((:data_type __data_type) "")
    ((:name __name) "")
    )
   (send-super :init)
   (setq _connection_type (string __connection_type))
   (setq _data_type (string __data_type))
   (setq _name (string __name))
   self)
  (:connection_type
   (&optional __connection_type)
   (if __connection_type (setq _connection_type __connection_type)) _connection_type)
  (:data_type
   (&optional __data_type)
   (if __data_type (setq _data_type __data_type)) _data_type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _connection_type
    4 (length _connection_type)
    ;; string _data_type
    4 (length _data_type)
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _connection_type
       (write-long (length _connection_type) s) (princ _connection_type s)
     ;; string _data_type
       (write-long (length _data_type) s) (princ _data_type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _connection_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _connection_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rocon_app_manager_msgs::PublicInterface :md5sum-) "894455d729ec4bb7068b1f83aa87a23c")
(setf (get rocon_app_manager_msgs::PublicInterface :datatype-) "rocon_app_manager_msgs/PublicInterface")
(setf (get rocon_app_manager_msgs::PublicInterface :definition-)
      "# Represents a public interface of a rapp

# One of rocon_std_msgs.Connection type string constants ('publisher, 'subscriber', ...)
string connection_type

# The data type, e.g. std_msgs/Strings
string data_type

# Name of the topic/service/action xxx.
string name


")



(provide :rocon_app_manager_msgs/PublicInterface "894455d729ec4bb7068b1f83aa87a23c")


