;; Auto-generated. Do not edit!


(when (boundp 'rocon_std_msgs::ConnectionsList)
  (if (not (find-package "ROCON_STD_MSGS"))
    (make-package "ROCON_STD_MSGS"))
  (shadow 'ConnectionsList (find-package "ROCON_STD_MSGS")))
(unless (find-package "ROCON_STD_MSGS::CONNECTIONSLIST")
  (make-package "ROCON_STD_MSGS::CONNECTIONSLIST"))

(in-package "ROS")
;;//! \htmlinclude ConnectionsList.msg.html


(defclass rocon_std_msgs::ConnectionsList
  :super ros::object
  :slots (_connections ))

(defmethod rocon_std_msgs::ConnectionsList
  (:init
   (&key
    ((:connections __connections) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::Connection :init) r)) r))
    )
   (send-super :init)
   (setq _connections __connections)
   self)
  (:connections
   (&rest __connections)
   (if (keywordp (car __connections))
       (send* _connections __connections)
     (progn
       (if __connections (setq _connections (car __connections)))
       _connections)))
  (:serialization-length
   ()
   (+
    ;; rocon_std_msgs/Connection[] _connections
    (apply #'+ (send-all _connections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rocon_std_msgs/Connection[] _connections
     (write-long (length _connections) s)
     (dolist (elem _connections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rocon_std_msgs/Connection[] _connections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _connections (let (r) (dotimes (i n) (push (instance rocon_std_msgs::Connection :init) r)) r))
     (dolist (elem- _connections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rocon_std_msgs::ConnectionsList :md5sum-) "672d6ad69b684884f8fb6f4acedbd39f")
(setf (get rocon_std_msgs::ConnectionsList :datatype-) "rocon_std_msgs/ConnectionsList")
(setf (get rocon_std_msgs::ConnectionsList :definition-)
      "Connection[] connections
================================================================================
MSG: rocon_std_msgs/Connection
# A connection can be 1 of 5 types
string PUBLISHER = publisher
string SUBSCRIBER = subscriber
string SERVICE = service
string ACTION_CLIENT = action_client
string ACTION_SERVER = action_server
string INVALID = invalid

# type of connection (from string constants above)
string type

# this is the topic/service name or the action base name
string name 

# the name of the node establishing this connection
string node

# topic, service or action type, e.g. std_msgs/String
string type_msg

# topic, service or action extra type info ( uri for service )
string type_info

# xmlrpc node uri for managing the connection
string xmlrpc_uri
")



(provide :rocon_std_msgs/ConnectionsList "672d6ad69b684884f8fb6f4acedbd39f")


