;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::ConnectHub)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'ConnectHub (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::CONNECTHUB")
  (make-package "GATEWAY_MSGS::CONNECTHUB"))
(unless (find-package "GATEWAY_MSGS::CONNECTHUBREQUEST")
  (make-package "GATEWAY_MSGS::CONNECTHUBREQUEST"))
(unless (find-package "GATEWAY_MSGS::CONNECTHUBRESPONSE")
  (make-package "GATEWAY_MSGS::CONNECTHUBRESPONSE"))

(in-package "ROS")





(defclass gateway_msgs::ConnectHubRequest
  :super ros::object
  :slots (_uri ))

(defmethod gateway_msgs::ConnectHubRequest
  (:init
   (&key
    ((:uri __uri) "")
    )
   (send-super :init)
   (setq _uri (string __uri))
   self)
  (:uri
   (&optional __uri)
   (if __uri (setq _uri __uri)) _uri)
  (:serialization-length
   ()
   (+
    ;; string _uri
    4 (length _uri)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uri
       (write-long (length _uri) s) (princ _uri s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gateway_msgs::ConnectHubResponse
  :super ros::object
  :slots (_result _error_message ))

(defmethod gateway_msgs::ConnectHubResponse
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

(defclass gateway_msgs::ConnectHub
  :super ros::object
  :slots ())

(setf (get gateway_msgs::ConnectHub :md5sum-) "6815c96f7df47a58c645055a2e0d9e1b")
(setf (get gateway_msgs::ConnectHub :datatype-) "gateway_msgs/ConnectHub")
(setf (get gateway_msgs::ConnectHub :request) gateway_msgs::ConnectHubRequest)
(setf (get gateway_msgs::ConnectHub :response) gateway_msgs::ConnectHubResponse)

(defmethod gateway_msgs::ConnectHubRequest
  (:response () (instance gateway_msgs::ConnectHubResponse :init)))

(setf (get gateway_msgs::ConnectHubRequest :md5sum-) "6815c96f7df47a58c645055a2e0d9e1b")
(setf (get gateway_msgs::ConnectHubRequest :datatype-) "gateway_msgs/ConnectHubRequest")
(setf (get gateway_msgs::ConnectHubRequest :definition-)
      "

string uri
---


int8 result
string error_message


")

(setf (get gateway_msgs::ConnectHubResponse :md5sum-) "6815c96f7df47a58c645055a2e0d9e1b")
(setf (get gateway_msgs::ConnectHubResponse :datatype-) "gateway_msgs/ConnectHubResponse")
(setf (get gateway_msgs::ConnectHubResponse :definition-)
      "

string uri
---


int8 result
string error_message


")



(provide :gateway_msgs/ConnectHub "6815c96f7df47a58c645055a2e0d9e1b")


