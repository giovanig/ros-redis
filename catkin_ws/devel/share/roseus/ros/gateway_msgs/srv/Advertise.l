;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::Advertise)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'Advertise (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::ADVERTISE")
  (make-package "GATEWAY_MSGS::ADVERTISE"))
(unless (find-package "GATEWAY_MSGS::ADVERTISEREQUEST")
  (make-package "GATEWAY_MSGS::ADVERTISEREQUEST"))
(unless (find-package "GATEWAY_MSGS::ADVERTISERESPONSE")
  (make-package "GATEWAY_MSGS::ADVERTISERESPONSE"))

(in-package "ROS")





(defclass gateway_msgs::AdvertiseRequest
  :super ros::object
  :slots (_cancel _rules ))

(defmethod gateway_msgs::AdvertiseRequest
  (:init
   (&key
    ((:cancel __cancel) nil)
    ((:rules __rules) (let (r) (dotimes (i 0) (push (instance gateway_msgs::Rule :init) r)) r))
    )
   (send-super :init)
   (setq _cancel __cancel)
   (setq _rules __rules)
   self)
  (:cancel
   (&optional __cancel)
   (if __cancel (setq _cancel __cancel)) _cancel)
  (:rules
   (&rest __rules)
   (if (keywordp (car __rules))
       (send* _rules __rules)
     (progn
       (if __rules (setq _rules (car __rules)))
       _rules)))
  (:serialization-length
   ()
   (+
    ;; bool _cancel
    1
    ;; gateway_msgs/Rule[] _rules
    (apply #'+ (send-all _rules :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _cancel
       (if _cancel (write-byte -1 s) (write-byte 0 s))
     ;; gateway_msgs/Rule[] _rules
     (write-long (length _rules) s)
     (dolist (elem _rules)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _cancel
     (setq _cancel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; gateway_msgs/Rule[] _rules
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rules (let (r) (dotimes (i n) (push (instance gateway_msgs::Rule :init) r)) r))
     (dolist (elem- _rules)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass gateway_msgs::AdvertiseResponse
  :super ros::object
  :slots (_result _error_message _watchlist ))

(defmethod gateway_msgs::AdvertiseResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:error_message __error_message) "")
    ((:watchlist __watchlist) (let (r) (dotimes (i 0) (push (instance gateway_msgs::Rule :init) r)) r))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _error_message (string __error_message))
   (setq _watchlist __watchlist)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:watchlist
   (&rest __watchlist)
   (if (keywordp (car __watchlist))
       (send* _watchlist __watchlist)
     (progn
       (if __watchlist (setq _watchlist (car __watchlist)))
       _watchlist)))
  (:serialization-length
   ()
   (+
    ;; int8 _result
    1
    ;; string _error_message
    4 (length _error_message)
    ;; gateway_msgs/Rule[] _watchlist
    (apply #'+ (send-all _watchlist :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _result
       (write-byte _result s)
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;; gateway_msgs/Rule[] _watchlist
     (write-long (length _watchlist) s)
     (dolist (elem _watchlist)
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
   ;; gateway_msgs/Rule[] _watchlist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _watchlist (let (r) (dotimes (i n) (push (instance gateway_msgs::Rule :init) r)) r))
     (dolist (elem- _watchlist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass gateway_msgs::Advertise
  :super ros::object
  :slots ())

(setf (get gateway_msgs::Advertise :md5sum-) "394a2b6787bc0694573ae81a1842f14b")
(setf (get gateway_msgs::Advertise :datatype-) "gateway_msgs/Advertise")
(setf (get gateway_msgs::Advertise :request) gateway_msgs::AdvertiseRequest)
(setf (get gateway_msgs::Advertise :response) gateway_msgs::AdvertiseResponse)

(defmethod gateway_msgs::AdvertiseRequest
  (:response () (instance gateway_msgs::AdvertiseResponse :init)))

(setf (get gateway_msgs::AdvertiseRequest :md5sum-) "394a2b6787bc0694573ae81a1842f14b")
(setf (get gateway_msgs::AdvertiseRequest :datatype-) "gateway_msgs/AdvertiseRequest")
(setf (get gateway_msgs::AdvertiseRequest :definition-)
      "
bool cancel
Rule[] rules


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

Rule[] watchlist


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

(setf (get gateway_msgs::AdvertiseResponse :md5sum-) "394a2b6787bc0694573ae81a1842f14b")
(setf (get gateway_msgs::AdvertiseResponse :datatype-) "gateway_msgs/AdvertiseResponse")
(setf (get gateway_msgs::AdvertiseResponse :definition-)
      "
bool cancel
Rule[] rules


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

Rule[] watchlist


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



(provide :gateway_msgs/Advertise "394a2b6787bc0694573ae81a1842f14b")


