;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::Invite)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'Invite (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::INVITE")
  (make-package "ROCON_APP_MANAGER_MSGS::INVITE"))
(unless (find-package "ROCON_APP_MANAGER_MSGS::INVITEREQUEST")
  (make-package "ROCON_APP_MANAGER_MSGS::INVITEREQUEST"))
(unless (find-package "ROCON_APP_MANAGER_MSGS::INVITERESPONSE")
  (make-package "ROCON_APP_MANAGER_MSGS::INVITERESPONSE"))

(in-package "ROS")





(defclass rocon_app_manager_msgs::InviteRequest
  :super ros::object
  :slots (_remote_target_name _application_namespace _cancel ))

(defmethod rocon_app_manager_msgs::InviteRequest
  (:init
   (&key
    ((:remote_target_name __remote_target_name) "")
    ((:application_namespace __application_namespace) "")
    ((:cancel __cancel) nil)
    )
   (send-super :init)
   (setq _remote_target_name (string __remote_target_name))
   (setq _application_namespace (string __application_namespace))
   (setq _cancel __cancel)
   self)
  (:remote_target_name
   (&optional __remote_target_name)
   (if __remote_target_name (setq _remote_target_name __remote_target_name)) _remote_target_name)
  (:application_namespace
   (&optional __application_namespace)
   (if __application_namespace (setq _application_namespace __application_namespace)) _application_namespace)
  (:cancel
   (&optional __cancel)
   (if __cancel (setq _cancel __cancel)) _cancel)
  (:serialization-length
   ()
   (+
    ;; string _remote_target_name
    4 (length _remote_target_name)
    ;; string _application_namespace
    4 (length _application_namespace)
    ;; bool _cancel
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _remote_target_name
       (write-long (length _remote_target_name) s) (princ _remote_target_name s)
     ;; string _application_namespace
       (write-long (length _application_namespace) s) (princ _application_namespace s)
     ;; bool _cancel
       (if _cancel (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _remote_target_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remote_target_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _application_namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _application_namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _cancel
     (setq _cancel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rocon_app_manager_msgs::InviteResponse
  :super ros::object
  :slots (_result _error_code _message ))

(defmethod rocon_app_manager_msgs::InviteResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _result
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
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; int32 _error_code
       (write-long _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rocon_app_manager_msgs::Invite
  :super ros::object
  :slots ())

(setf (get rocon_app_manager_msgs::Invite :md5sum-) "a8a860264b05149cf65b79d0a300e026")
(setf (get rocon_app_manager_msgs::Invite :datatype-) "rocon_app_manager_msgs/Invite")
(setf (get rocon_app_manager_msgs::Invite :request) rocon_app_manager_msgs::InviteRequest)
(setf (get rocon_app_manager_msgs::Invite :response) rocon_app_manager_msgs::InviteResponse)

(defmethod rocon_app_manager_msgs::InviteRequest
  (:response () (instance rocon_app_manager_msgs::InviteResponse :init)))

(setf (get rocon_app_manager_msgs::InviteRequest :md5sum-) "a8a860264b05149cf65b79d0a300e026")
(setf (get rocon_app_manager_msgs::InviteRequest :datatype-) "rocon_app_manager_msgs/InviteRequest")
(setf (get rocon_app_manager_msgs::InviteRequest :definition-)
      "


string remote_target_name





string application_namespace
bool cancel
---
bool result

int32 error_code

string message
")

(setf (get rocon_app_manager_msgs::InviteResponse :md5sum-) "a8a860264b05149cf65b79d0a300e026")
(setf (get rocon_app_manager_msgs::InviteResponse :datatype-) "rocon_app_manager_msgs/InviteResponse")
(setf (get rocon_app_manager_msgs::InviteResponse :definition-)
      "


string remote_target_name





string application_namespace
bool cancel
---
bool result

int32 error_code

string message
")



(provide :rocon_app_manager_msgs/Invite "a8a860264b05149cf65b79d0a300e026")


