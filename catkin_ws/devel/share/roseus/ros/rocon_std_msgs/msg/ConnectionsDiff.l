;; Auto-generated. Do not edit!


(when (boundp 'rocon_std_msgs::ConnectionsDiff)
  (if (not (find-package "ROCON_STD_MSGS"))
    (make-package "ROCON_STD_MSGS"))
  (shadow 'ConnectionsDiff (find-package "ROCON_STD_MSGS")))
(unless (find-package "ROCON_STD_MSGS::CONNECTIONSDIFF")
  (make-package "ROCON_STD_MSGS::CONNECTIONSDIFF"))

(in-package "ROS")
;;//! \htmlinclude ConnectionsDiff.msg.html


(defclass rocon_std_msgs::ConnectionsDiff
  :super ros::object
  :slots (_added _lost ))

(defmethod rocon_std_msgs::ConnectionsDiff
  (:init
   (&key
    ((:added __added) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::Connection :init) r)) r))
    ((:lost __lost) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::Connection :init) r)) r))
    )
   (send-super :init)
   (setq _added __added)
   (setq _lost __lost)
   self)
  (:added
   (&rest __added)
   (if (keywordp (car __added))
       (send* _added __added)
     (progn
       (if __added (setq _added (car __added)))
       _added)))
  (:lost
   (&rest __lost)
   (if (keywordp (car __lost))
       (send* _lost __lost)
     (progn
       (if __lost (setq _lost (car __lost)))
       _lost)))
  (:serialization-length
   ()
   (+
    ;; rocon_std_msgs/Connection[] _added
    (apply #'+ (send-all _added :serialization-length)) 4
    ;; rocon_std_msgs/Connection[] _lost
    (apply #'+ (send-all _lost :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rocon_std_msgs/Connection[] _added
     (write-long (length _added) s)
     (dolist (elem _added)
       (send elem :serialize s)
       )
     ;; rocon_std_msgs/Connection[] _lost
     (write-long (length _lost) s)
     (dolist (elem _lost)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rocon_std_msgs/Connection[] _added
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _added (let (r) (dotimes (i n) (push (instance rocon_std_msgs::Connection :init) r)) r))
     (dolist (elem- _added)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rocon_std_msgs/Connection[] _lost
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lost (let (r) (dotimes (i n) (push (instance rocon_std_msgs::Connection :init) r)) r))
     (dolist (elem- _lost)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rocon_std_msgs::ConnectionsDiff :md5sum-) "19f9e3bef1153b4bc619ec3d21b94718")
(setf (get rocon_std_msgs::ConnectionsDiff :datatype-) "rocon_std_msgs/ConnectionsDiff")
(setf (get rocon_std_msgs::ConnectionsDiff :definition-)
      "Connection[] added
Connection[] lost
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



(provide :rocon_std_msgs/ConnectionsDiff "19f9e3bef1153b4bc619ec3d21b94718")


