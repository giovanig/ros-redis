;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::EnableService)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'EnableService (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::ENABLESERVICE")
  (make-package "CONCERT_MSGS::ENABLESERVICE"))
(unless (find-package "CONCERT_MSGS::ENABLESERVICEREQUEST")
  (make-package "CONCERT_MSGS::ENABLESERVICEREQUEST"))
(unless (find-package "CONCERT_MSGS::ENABLESERVICERESPONSE")
  (make-package "CONCERT_MSGS::ENABLESERVICERESPONSE"))

(in-package "ROS")





(defclass concert_msgs::EnableServiceRequest
  :super ros::object
  :slots (_name _enable ))

(defmethod concert_msgs::EnableServiceRequest
  (:init
   (&key
    ((:name __name) "")
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _enable __enable)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass concert_msgs::EnableServiceResponse
  :super ros::object
  :slots (_success _error_message ))

(defmethod concert_msgs::EnableServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_message (string __error_message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass concert_msgs::EnableService
  :super ros::object
  :slots ())

(setf (get concert_msgs::EnableService :md5sum-) "1cec37e7e5df14d95c8bda48b6179b1a")
(setf (get concert_msgs::EnableService :datatype-) "concert_msgs/EnableService")
(setf (get concert_msgs::EnableService :request) concert_msgs::EnableServiceRequest)
(setf (get concert_msgs::EnableService :response) concert_msgs::EnableServiceResponse)

(defmethod concert_msgs::EnableServiceRequest
  (:response () (instance concert_msgs::EnableServiceResponse :init)))

(setf (get concert_msgs::EnableServiceRequest :md5sum-) "1cec37e7e5df14d95c8bda48b6179b1a")
(setf (get concert_msgs::EnableServiceRequest :datatype-) "concert_msgs/EnableServiceRequest")
(setf (get concert_msgs::EnableServiceRequest :definition-)
      "string name
bool enable
---
bool success
string error_message

")

(setf (get concert_msgs::EnableServiceResponse :md5sum-) "1cec37e7e5df14d95c8bda48b6179b1a")
(setf (get concert_msgs::EnableServiceResponse :datatype-) "concert_msgs/EnableServiceResponse")
(setf (get concert_msgs::EnableServiceResponse :definition-)
      "string name
bool enable
---
bool success
string error_message

")



(provide :concert_msgs/EnableService "1cec37e7e5df14d95c8bda48b6179b1a")


