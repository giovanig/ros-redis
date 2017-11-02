;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::StopRapp)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'StopRapp (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::STOPRAPP")
  (make-package "ROCON_APP_MANAGER_MSGS::STOPRAPP"))
(unless (find-package "ROCON_APP_MANAGER_MSGS::STOPRAPPREQUEST")
  (make-package "ROCON_APP_MANAGER_MSGS::STOPRAPPREQUEST"))
(unless (find-package "ROCON_APP_MANAGER_MSGS::STOPRAPPRESPONSE")
  (make-package "ROCON_APP_MANAGER_MSGS::STOPRAPPRESPONSE"))

(in-package "ROS")





(defclass rocon_app_manager_msgs::StopRappRequest
  :super ros::object
  :slots ())

(defmethod rocon_app_manager_msgs::StopRappRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rocon_app_manager_msgs::StopRappResponse
  :super ros::object
  :slots (_stopped _error_code _message ))

(defmethod rocon_app_manager_msgs::StopRappResponse
  (:init
   (&key
    ((:stopped __stopped) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _stopped __stopped)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:stopped
   (&optional __stopped)
   (if __stopped (setq _stopped __stopped)) _stopped)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _stopped
    1
    ;; int32 _error_code
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stopped
       (if _stopped (write-byte -1 s) (write-byte 0 s))
     ;; int32 _error_code
       (write-long _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stopped
     (setq _stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rocon_app_manager_msgs::StopRapp
  :super ros::object
  :slots ())

(setf (get rocon_app_manager_msgs::StopRapp :md5sum-) "1f94f0ff0fc0fde186f728634f98a3cb")
(setf (get rocon_app_manager_msgs::StopRapp :datatype-) "rocon_app_manager_msgs/StopRapp")
(setf (get rocon_app_manager_msgs::StopRapp :request) rocon_app_manager_msgs::StopRappRequest)
(setf (get rocon_app_manager_msgs::StopRapp :response) rocon_app_manager_msgs::StopRappResponse)

(defmethod rocon_app_manager_msgs::StopRappRequest
  (:response () (instance rocon_app_manager_msgs::StopRappResponse :init)))

(setf (get rocon_app_manager_msgs::StopRappRequest :md5sum-) "1f94f0ff0fc0fde186f728634f98a3cb")
(setf (get rocon_app_manager_msgs::StopRappRequest :datatype-) "rocon_app_manager_msgs/StopRappRequest")
(setf (get rocon_app_manager_msgs::StopRappRequest :definition-)
      "---

bool stopped

int32 error_code

string message


")

(setf (get rocon_app_manager_msgs::StopRappResponse :md5sum-) "1f94f0ff0fc0fde186f728634f98a3cb")
(setf (get rocon_app_manager_msgs::StopRappResponse :datatype-) "rocon_app_manager_msgs/StopRappResponse")
(setf (get rocon_app_manager_msgs::StopRappResponse :definition-)
      "---

bool stopped

int32 error_code

string message


")



(provide :rocon_app_manager_msgs/StopRapp "1f94f0ff0fc0fde186f728634f98a3cb")


