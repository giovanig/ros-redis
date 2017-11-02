;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::AdvertiseAll)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'AdvertiseAll (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::ADVERTISEALL")
  (make-package "GATEWAY_MSGS::ADVERTISEALL"))
(unless (find-package "GATEWAY_MSGS::ADVERTISEALLREQUEST")
  (make-package "GATEWAY_MSGS::ADVERTISEALLREQUEST"))
(unless (find-package "GATEWAY_MSGS::ADVERTISEALLRESPONSE")
  (make-package "GATEWAY_MSGS::ADVERTISEALLRESPONSE"))

(in-package "ROS")





(defclass gateway_msgs::AdvertiseAllRequest
  :super ros::object
  :slots (_cancel _blacklist ))

(defmethod gateway_msgs::AdvertiseAllRequest
  (:init
   (&key
    ((:cancel __cancel) nil)
    ((:blacklist __blacklist) (let (r) (dotimes (i 0) (push (instance gateway_msgs::Rule :init) r)) r))
    )
   (send-super :init)
   (setq _cancel __cancel)
   (setq _blacklist __blacklist)
   self)
  (:cancel
   (&optional __cancel)
   (if __cancel (setq _cancel __cancel)) _cancel)
  (:blacklist
   (&rest __blacklist)
   (if (keywordp (car __blacklist))
       (send* _blacklist __blacklist)
     (progn
       (if __blacklist (setq _blacklist (car __blacklist)))
       _blacklist)))
  (:serialization-length
   ()
   (+
    ;; bool _cancel
    1
    ;; gateway_msgs/Rule[] _blacklist
    (apply #'+ (send-all _blacklist :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _cancel
       (if _cancel (write-byte -1 s) (write-byte 0 s))
     ;; gateway_msgs/Rule[] _blacklist
     (write-long (length _blacklist) s)
     (dolist (elem _blacklist)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _cancel
     (setq _cancel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; gateway_msgs/Rule[] _blacklist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blacklist (let (r) (dotimes (i n) (push (instance gateway_msgs::Rule :init) r)) r))
     (dolist (elem- _blacklist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass gateway_msgs::AdvertiseAllResponse
  :super ros::object
  :slots (_result _error_message _blacklist ))

(defmethod gateway_msgs::AdvertiseAllResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:error_message __error_message) "")
    ((:blacklist __blacklist) (let (r) (dotimes (i 0) (push (instance gateway_msgs::Rule :init) r)) r))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _error_message (string __error_message))
   (setq _blacklist __blacklist)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:blacklist
   (&rest __blacklist)
   (if (keywordp (car __blacklist))
       (send* _blacklist __blacklist)
     (progn
       (if __blacklist (setq _blacklist (car __blacklist)))
       _blacklist)))
  (:serialization-length
   ()
   (+
    ;; int8 _result
    1
    ;; string _error_message
    4 (length _error_message)
    ;; gateway_msgs/Rule[] _blacklist
    (apply #'+ (send-all _blacklist :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _result
       (write-byte _result s)
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;; gateway_msgs/Rule[] _blacklist
     (write-long (length _blacklist) s)
     (dolist (elem _blacklist)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _result 127) (setq _result (- _result 256)))
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; gateway_msgs/Rule[] _blacklist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blacklist (let (r) (dotimes (i n) (push (instance gateway_msgs::Rule :init) r)) r))
     (dolist (elem- _blacklist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass gateway_msgs::AdvertiseAll
  :super ros::object
  :slots ())

(setf (get gateway_msgs::AdvertiseAll :md5sum-) "51a5c6982ba636b1397142aab7eb86e6")
(setf (get gateway_msgs::AdvertiseAll :datatype-) "gateway_msgs/AdvertiseAll")
(setf (get gateway_msgs::AdvertiseAll :request) gateway_msgs::AdvertiseAllRequest)
(setf (get gateway_msgs::AdvertiseAll :response) gateway_msgs::AdvertiseAllResponse)

(defmethod gateway_msgs::AdvertiseAllRequest
  (:response () (instance gateway_msgs::AdvertiseAllResponse :init)))

(setf (get gateway_msgs::AdvertiseAllRequest :md5sum-) "51a5c6982ba636b1397142aab7eb86e6")
(setf (get gateway_msgs::AdvertiseAllRequest :datatype-) "gateway_msgs/AdvertiseAllRequest")
(setf (get gateway_msgs::AdvertiseAllRequest :definition-)
      "
bool cancel
Rule[] blacklist


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

Rule[] blacklist


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
")

(setf (get gateway_msgs::AdvertiseAllResponse :md5sum-) "51a5c6982ba636b1397142aab7eb86e6")
(setf (get gateway_msgs::AdvertiseAllResponse :datatype-) "gateway_msgs/AdvertiseAllResponse")
(setf (get gateway_msgs::AdvertiseAllResponse :definition-)
      "
bool cancel
Rule[] blacklist


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

Rule[] blacklist


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
")



(provide :gateway_msgs/AdvertiseAll "51a5c6982ba636b1397142aab7eb86e6")


