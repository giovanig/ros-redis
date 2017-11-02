;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::AllocateSoftware)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'AllocateSoftware (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::ALLOCATESOFTWARE")
  (make-package "CONCERT_MSGS::ALLOCATESOFTWARE"))
(unless (find-package "CONCERT_MSGS::ALLOCATESOFTWAREREQUEST")
  (make-package "CONCERT_MSGS::ALLOCATESOFTWAREREQUEST"))
(unless (find-package "CONCERT_MSGS::ALLOCATESOFTWARERESPONSE")
  (make-package "CONCERT_MSGS::ALLOCATESOFTWARERESPONSE"))

(in-package "ROS")

(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(defclass concert_msgs::AllocateSoftwareRequest
  :super ros::object
  :slots (_user _software _allocate _parameters ))

(defmethod concert_msgs::AllocateSoftwareRequest
  (:init
   (&key
    ((:user __user) "")
    ((:software __software) "")
    ((:allocate __allocate) nil)
    ((:parameters __parameters) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _user (string __user))
   (setq _software (string __software))
   (setq _allocate __allocate)
   (setq _parameters __parameters)
   self)
  (:user
   (&optional __user)
   (if __user (setq _user __user)) _user)
  (:software
   (&optional __software)
   (if __software (setq _software __software)) _software)
  (:allocate
   (&optional __allocate)
   (if __allocate (setq _allocate __allocate)) _allocate)
  (:parameters
   (&rest __parameters)
   (if (keywordp (car __parameters))
       (send* _parameters __parameters)
     (progn
       (if __parameters (setq _parameters (car __parameters)))
       _parameters)))
  (:serialization-length
   ()
   (+
    ;; string _user
    4 (length _user)
    ;; string _software
    4 (length _software)
    ;; bool _allocate
    1
    ;; rocon_std_msgs/KeyValue[] _parameters
    (apply #'+ (send-all _parameters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _user
       (write-long (length _user) s) (princ _user s)
     ;; string _software
       (write-long (length _software) s) (princ _software s)
     ;; bool _allocate
       (if _allocate (write-byte -1 s) (write-byte 0 s))
     ;; rocon_std_msgs/KeyValue[] _parameters
     (write-long (length _parameters) s)
     (dolist (elem _parameters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _user
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _software
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _software (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _allocate
     (setq _allocate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; rocon_std_msgs/KeyValue[] _parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameters (let (r) (dotimes (i n) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
     (dolist (elem- _parameters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass concert_msgs::AllocateSoftwareResponse
  :super ros::object
  :slots (_success _parameters _namespace _error_message ))

(defmethod concert_msgs::AllocateSoftwareResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:parameters __parameters) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    ((:namespace __namespace) "")
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _parameters __parameters)
   (setq _namespace (string __namespace))
   (setq _error_message (string __error_message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:parameters
   (&rest __parameters)
   (if (keywordp (car __parameters))
       (send* _parameters __parameters)
     (progn
       (if __parameters (setq _parameters (car __parameters)))
       _parameters)))
  (:namespace
   (&optional __namespace)
   (if __namespace (setq _namespace __namespace)) _namespace)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; rocon_std_msgs/KeyValue[] _parameters
    (apply #'+ (send-all _parameters :serialization-length)) 4
    ;; string _namespace
    4 (length _namespace)
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; rocon_std_msgs/KeyValue[] _parameters
     (write-long (length _parameters) s)
     (dolist (elem _parameters)
       (send elem :serialize s)
       )
     ;; string _namespace
       (write-long (length _namespace) s) (princ _namespace s)
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; rocon_std_msgs/KeyValue[] _parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameters (let (r) (dotimes (i n) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
     (dolist (elem- _parameters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass concert_msgs::AllocateSoftware
  :super ros::object
  :slots ())

(setf (get concert_msgs::AllocateSoftware :md5sum-) "9a9d4cc73086cbcea67798fb6b0cda56")
(setf (get concert_msgs::AllocateSoftware :datatype-) "concert_msgs/AllocateSoftware")
(setf (get concert_msgs::AllocateSoftware :request) concert_msgs::AllocateSoftwareRequest)
(setf (get concert_msgs::AllocateSoftware :response) concert_msgs::AllocateSoftwareResponse)

(defmethod concert_msgs::AllocateSoftwareRequest
  (:response () (instance concert_msgs::AllocateSoftwareResponse :init)))

(setf (get concert_msgs::AllocateSoftwareRequest :md5sum-) "9a9d4cc73086cbcea67798fb6b0cda56")
(setf (get concert_msgs::AllocateSoftwareRequest :datatype-) "concert_msgs/AllocateSoftwareRequest")
(setf (get concert_msgs::AllocateSoftwareRequest :definition-)
      "string user
string software
bool allocate
rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
---
bool success
rocon_std_msgs/KeyValue[] parameters
string namespace
string error_message


================================================================================
MSG: rocon_std_msgs/KeyValue
string key
")

(setf (get concert_msgs::AllocateSoftwareResponse :md5sum-) "9a9d4cc73086cbcea67798fb6b0cda56")
(setf (get concert_msgs::AllocateSoftwareResponse :datatype-) "concert_msgs/AllocateSoftwareResponse")
(setf (get concert_msgs::AllocateSoftwareResponse :definition-)
      "string user
string software
bool allocate
rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
---
bool success
rocon_std_msgs/KeyValue[] parameters
string namespace
string error_message


================================================================================
MSG: rocon_std_msgs/KeyValue
string key
")



(provide :concert_msgs/AllocateSoftware "9a9d4cc73086cbcea67798fb6b0cda56")


