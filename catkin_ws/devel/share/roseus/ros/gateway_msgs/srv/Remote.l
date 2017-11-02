;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::Remote)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'Remote (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::REMOTE")
  (make-package "GATEWAY_MSGS::REMOTE"))
(unless (find-package "GATEWAY_MSGS::REMOTEREQUEST")
  (make-package "GATEWAY_MSGS::REMOTEREQUEST"))
(unless (find-package "GATEWAY_MSGS::REMOTERESPONSE")
  (make-package "GATEWAY_MSGS::REMOTERESPONSE"))

(in-package "ROS")





(defclass gateway_msgs::RemoteRequest
  :super ros::object
  :slots (_remotes _cancel ))

(defmethod gateway_msgs::RemoteRequest
  (:init
   (&key
    ((:remotes __remotes) (let (r) (dotimes (i 0) (push (instance gateway_msgs::RemoteRule :init) r)) r))
    ((:cancel __cancel) nil)
    )
   (send-super :init)
   (setq _remotes __remotes)
   (setq _cancel __cancel)
   self)
  (:remotes
   (&rest __remotes)
   (if (keywordp (car __remotes))
       (send* _remotes __remotes)
     (progn
       (if __remotes (setq _remotes (car __remotes)))
       _remotes)))
  (:cancel
   (&optional __cancel)
   (if __cancel (setq _cancel __cancel)) _cancel)
  (:serialization-length
   ()
   (+
    ;; gateway_msgs/RemoteRule[] _remotes
    (apply #'+ (send-all _remotes :serialization-length)) 4
    ;; bool _cancel
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gateway_msgs/RemoteRule[] _remotes
     (write-long (length _remotes) s)
     (dolist (elem _remotes)
       (send elem :serialize s)
       )
     ;; bool _cancel
       (if _cancel (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gateway_msgs/RemoteRule[] _remotes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remotes (let (r) (dotimes (i n) (push (instance gateway_msgs::RemoteRule :init) r)) r))
     (dolist (elem- _remotes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _cancel
     (setq _cancel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gateway_msgs::RemoteResponse
  :super ros::object
  :slots (_result _error_message ))

(defmethod gateway_msgs::RemoteResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _error_message (string __error_message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; int8 _result
    1
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _result
       (write-byte _result s)
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _result 127) (setq _result (- _result 256)))
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gateway_msgs::Remote
  :super ros::object
  :slots ())

(setf (get gateway_msgs::Remote :md5sum-) "d2170021bdea1c8bfca632d3d43a6993")
(setf (get gateway_msgs::Remote :datatype-) "gateway_msgs/Remote")
(setf (get gateway_msgs::Remote :request) gateway_msgs::RemoteRequest)
(setf (get gateway_msgs::Remote :response) gateway_msgs::RemoteResponse)

(defmethod gateway_msgs::RemoteRequest
  (:response () (instance gateway_msgs::RemoteResponse :init)))

(setf (get gateway_msgs::RemoteRequest :md5sum-) "d2170021bdea1c8bfca632d3d43a6993")
(setf (get gateway_msgs::RemoteRequest :datatype-) "gateway_msgs/RemoteRequest")
(setf (get gateway_msgs::RemoteRequest :definition-)
      "



RemoteRule[] remotes


bool cancel


================================================================================
MSG: gateway_msgs/RemoteRule
# Definition for a flip. It represents either:
#
# 1) an existing flipped connection (from the local gateway)
# 2) a rule that is put on a watchlist

# The target recipient of the flip
string gateway

# Connection has the following parameters that need setting
# - name : fully qualified name of the connection (str)
# - type : connection type (str)
#  
# Use one of the types defined in Connection string constants:
#     (publisher, subscriber, service, action_client, action_server)
#
# - node : name of the node it originates from (str)(optional)
#
# Node name is necessary, for instance, if you have multiple subscribers
# publishing to a single topic. Most of the time it is not necessary,
# but in some cases it helps refine the rule. It helps refine the rule.
#
Rule rule

================================================================================
MSG: gateway_msgs/Rule
# Standard gateway connection rule

# type of connection (from gateway_msgs.msg.Connection)
string type

# this is the topic/service name or the action base name (a regex is supported)
string name 

# (optional) an optional node name can be provided. if node name is not provided
# then all nodes are matched (also supports regex)
string node
---



int8 result
string error_message


")

(setf (get gateway_msgs::RemoteResponse :md5sum-) "d2170021bdea1c8bfca632d3d43a6993")
(setf (get gateway_msgs::RemoteResponse :datatype-) "gateway_msgs/RemoteResponse")
(setf (get gateway_msgs::RemoteResponse :definition-)
      "



RemoteRule[] remotes


bool cancel


================================================================================
MSG: gateway_msgs/RemoteRule
# Definition for a flip. It represents either:
#
# 1) an existing flipped connection (from the local gateway)
# 2) a rule that is put on a watchlist

# The target recipient of the flip
string gateway

# Connection has the following parameters that need setting
# - name : fully qualified name of the connection (str)
# - type : connection type (str)
#  
# Use one of the types defined in Connection string constants:
#     (publisher, subscriber, service, action_client, action_server)
#
# - node : name of the node it originates from (str)(optional)
#
# Node name is necessary, for instance, if you have multiple subscribers
# publishing to a single topic. Most of the time it is not necessary,
# but in some cases it helps refine the rule. It helps refine the rule.
#
Rule rule

================================================================================
MSG: gateway_msgs/Rule
# Standard gateway connection rule

# type of connection (from gateway_msgs.msg.Connection)
string type

# this is the topic/service name or the action base name (a regex is supported)
string name 

# (optional) an optional node name can be provided. if node name is not provided
# then all nodes are matched (also supports regex)
string node
---



int8 result
string error_message


")



(provide :gateway_msgs/Remote "d2170021bdea1c8bfca632d3d43a6993")


