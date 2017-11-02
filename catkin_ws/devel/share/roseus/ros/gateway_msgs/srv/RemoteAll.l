;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::RemoteAll)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'RemoteAll (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::REMOTEALL")
  (make-package "GATEWAY_MSGS::REMOTEALL"))
(unless (find-package "GATEWAY_MSGS::REMOTEALLREQUEST")
  (make-package "GATEWAY_MSGS::REMOTEALLREQUEST"))
(unless (find-package "GATEWAY_MSGS::REMOTEALLRESPONSE")
  (make-package "GATEWAY_MSGS::REMOTEALLRESPONSE"))

(in-package "ROS")





(defclass gateway_msgs::RemoteAllRequest
  :super ros::object
  :slots (_gateway _blacklist _cancel ))

(defmethod gateway_msgs::RemoteAllRequest
  (:init
   (&key
    ((:gateway __gateway) "")
    ((:blacklist __blacklist) (let (r) (dotimes (i 0) (push (instance gateway_msgs::Rule :init) r)) r))
    ((:cancel __cancel) nil)
    )
   (send-super :init)
   (setq _gateway (string __gateway))
   (setq _blacklist __blacklist)
   (setq _cancel __cancel)
   self)
  (:gateway
   (&optional __gateway)
   (if __gateway (setq _gateway __gateway)) _gateway)
  (:blacklist
   (&rest __blacklist)
   (if (keywordp (car __blacklist))
       (send* _blacklist __blacklist)
     (progn
       (if __blacklist (setq _blacklist (car __blacklist)))
       _blacklist)))
  (:cancel
   (&optional __cancel)
   (if __cancel (setq _cancel __cancel)) _cancel)
  (:serialization-length
   ()
   (+
    ;; string _gateway
    4 (length _gateway)
    ;; gateway_msgs/Rule[] _blacklist
    (apply #'+ (send-all _blacklist :serialization-length)) 4
    ;; bool _cancel
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gateway
       (write-long (length _gateway) s) (princ _gateway s)
     ;; gateway_msgs/Rule[] _blacklist
     (write-long (length _blacklist) s)
     (dolist (elem _blacklist)
       (send elem :serialize s)
       )
     ;; bool _cancel
       (if _cancel (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gateway
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gateway (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; gateway_msgs/Rule[] _blacklist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blacklist (let (r) (dotimes (i n) (push (instance gateway_msgs::Rule :init) r)) r))
     (dolist (elem- _blacklist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _cancel
     (setq _cancel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gateway_msgs::RemoteAllResponse
  :super ros::object
  :slots (_result _error_message ))

(defmethod gateway_msgs::RemoteAllResponse
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

(defclass gateway_msgs::RemoteAll
  :super ros::object
  :slots ())

(setf (get gateway_msgs::RemoteAll :md5sum-) "dae39b2540424f9672db2c4f37b6394a")
(setf (get gateway_msgs::RemoteAll :datatype-) "gateway_msgs/RemoteAll")
(setf (get gateway_msgs::RemoteAll :request) gateway_msgs::RemoteAllRequest)
(setf (get gateway_msgs::RemoteAll :response) gateway_msgs::RemoteAllResponse)

(defmethod gateway_msgs::RemoteAllRequest
  (:response () (instance gateway_msgs::RemoteAllResponse :init)))

(setf (get gateway_msgs::RemoteAllRequest :md5sum-) "dae39b2540424f9672db2c4f37b6394a")
(setf (get gateway_msgs::RemoteAllRequest :datatype-) "gateway_msgs/RemoteAllRequest")
(setf (get gateway_msgs::RemoteAllRequest :definition-)
      "


string gateway


Rule[] blacklist


bool cancel


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

(setf (get gateway_msgs::RemoteAllResponse :md5sum-) "dae39b2540424f9672db2c4f37b6394a")
(setf (get gateway_msgs::RemoteAllResponse :datatype-) "gateway_msgs/RemoteAllResponse")
(setf (get gateway_msgs::RemoteAllResponse :definition-)
      "


string gateway


Rule[] blacklist


bool cancel


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



(provide :gateway_msgs/RemoteAll "dae39b2540424f9672db2c4f37b6394a")


