;; Auto-generated. Do not edit!


(when (boundp 'rocon_std_msgs::Connection)
  (if (not (find-package "ROCON_STD_MSGS"))
    (make-package "ROCON_STD_MSGS"))
  (shadow 'Connection (find-package "ROCON_STD_MSGS")))
(unless (find-package "ROCON_STD_MSGS::CONNECTION")
  (make-package "ROCON_STD_MSGS::CONNECTION"))

(in-package "ROS")
;;//! \htmlinclude Connection.msg.html


(intern "*PUBLISHER*" (find-package "ROCON_STD_MSGS::CONNECTION"))
(shadow '*PUBLISHER* (find-package "ROCON_STD_MSGS::CONNECTION"))
(defconstant rocon_std_msgs::Connection::*PUBLISHER* "publisher")
(intern "*SUBSCRIBER*" (find-package "ROCON_STD_MSGS::CONNECTION"))
(shadow '*SUBSCRIBER* (find-package "ROCON_STD_MSGS::CONNECTION"))
(defconstant rocon_std_msgs::Connection::*SUBSCRIBER* "subscriber")
(intern "*SERVICE*" (find-package "ROCON_STD_MSGS::CONNECTION"))
(shadow '*SERVICE* (find-package "ROCON_STD_MSGS::CONNECTION"))
(defconstant rocon_std_msgs::Connection::*SERVICE* "service")
(intern "*ACTION_CLIENT*" (find-package "ROCON_STD_MSGS::CONNECTION"))
(shadow '*ACTION_CLIENT* (find-package "ROCON_STD_MSGS::CONNECTION"))
(defconstant rocon_std_msgs::Connection::*ACTION_CLIENT* "action_client")
(intern "*ACTION_SERVER*" (find-package "ROCON_STD_MSGS::CONNECTION"))
(shadow '*ACTION_SERVER* (find-package "ROCON_STD_MSGS::CONNECTION"))
(defconstant rocon_std_msgs::Connection::*ACTION_SERVER* "action_server")
(intern "*INVALID*" (find-package "ROCON_STD_MSGS::CONNECTION"))
(shadow '*INVALID* (find-package "ROCON_STD_MSGS::CONNECTION"))
(defconstant rocon_std_msgs::Connection::*INVALID* "invalid")
(defclass rocon_std_msgs::Connection
  :super ros::object
  :slots (_type _name _node _type_msg _type_info _xmlrpc_uri ))

(defmethod rocon_std_msgs::Connection
  (:init
   (&key
    ((:type __type) "")
    ((:name __name) "")
    ((:node __node) "")
    ((:type_msg __type_msg) "")
    ((:type_info __type_info) "")
    ((:xmlrpc_uri __xmlrpc_uri) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _name (string __name))
   (setq _node (string __node))
   (setq _type_msg (string __type_msg))
   (setq _type_info (string __type_info))
   (setq _xmlrpc_uri (string __xmlrpc_uri))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:type_msg
   (&optional __type_msg)
   (if __type_msg (setq _type_msg __type_msg)) _type_msg)
  (:type_info
   (&optional __type_info)
   (if __type_info (setq _type_info __type_info)) _type_info)
  (:xmlrpc_uri
   (&optional __xmlrpc_uri)
   (if __xmlrpc_uri (setq _xmlrpc_uri __xmlrpc_uri)) _xmlrpc_uri)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _name
    4 (length _name)
    ;; string _node
    4 (length _node)
    ;; string _type_msg
    4 (length _type_msg)
    ;; string _type_info
    4 (length _type_info)
    ;; string _xmlrpc_uri
    4 (length _xmlrpc_uri)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;; string _type_msg
       (write-long (length _type_msg) s) (princ _type_msg s)
     ;; string _type_info
       (write-long (length _type_info) s) (princ _type_info s)
     ;; string _xmlrpc_uri
       (write-long (length _xmlrpc_uri) s) (princ _xmlrpc_uri s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _xmlrpc_uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _xmlrpc_uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rocon_std_msgs::Connection :md5sum-) "0dee991006513320090e2ee648136101")
(setf (get rocon_std_msgs::Connection :datatype-) "rocon_std_msgs/Connection")
(setf (get rocon_std_msgs::Connection :definition-)
      "# A connection can be 1 of 5 types
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



(provide :rocon_std_msgs/Connection "0dee991006513320090e2ee648136101")


