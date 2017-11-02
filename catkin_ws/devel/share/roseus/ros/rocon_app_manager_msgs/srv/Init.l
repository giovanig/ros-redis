;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::Init)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'Init (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::INIT")
  (make-package "ROCON_APP_MANAGER_MSGS::INIT"))
(unless (find-package "ROCON_APP_MANAGER_MSGS::INITREQUEST")
  (make-package "ROCON_APP_MANAGER_MSGS::INITREQUEST"))
(unless (find-package "ROCON_APP_MANAGER_MSGS::INITRESPONSE")
  (make-package "ROCON_APP_MANAGER_MSGS::INITRESPONSE"))

(in-package "ROS")





(defclass rocon_app_manager_msgs::InitRequest
  :super ros::object
  :slots (_name ))

(defmethod rocon_app_manager_msgs::InitRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rocon_app_manager_msgs::InitResponse
  :super ros::object
  :slots (_result ))

(defmethod rocon_app_manager_msgs::InitResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rocon_app_manager_msgs::Init
  :super ros::object
  :slots ())

(setf (get rocon_app_manager_msgs::Init :md5sum-) "ee91d68745ef4d7a247816a59dffedf2")
(setf (get rocon_app_manager_msgs::Init :datatype-) "rocon_app_manager_msgs/Init")
(setf (get rocon_app_manager_msgs::Init :request) rocon_app_manager_msgs::InitRequest)
(setf (get rocon_app_manager_msgs::Init :response) rocon_app_manager_msgs::InitResponse)

(defmethod rocon_app_manager_msgs::InitRequest
  (:response () (instance rocon_app_manager_msgs::InitResponse :init)))

(setf (get rocon_app_manager_msgs::InitRequest :md5sum-) "ee91d68745ef4d7a247816a59dffedf2")
(setf (get rocon_app_manager_msgs::InitRequest :datatype-) "rocon_app_manager_msgs/InitRequest")
(setf (get rocon_app_manager_msgs::InitRequest :definition-)
      "












string name
---
bool result

")

(setf (get rocon_app_manager_msgs::InitResponse :md5sum-) "ee91d68745ef4d7a247816a59dffedf2")
(setf (get rocon_app_manager_msgs::InitResponse :datatype-) "rocon_app_manager_msgs/InitResponse")
(setf (get rocon_app_manager_msgs::InitResponse :definition-)
      "












string name
---
bool result

")



(provide :rocon_app_manager_msgs/Init "ee91d68745ef4d7a247816a59dffedf2")


