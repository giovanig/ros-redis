;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::StartRapp)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'StartRapp (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::STARTRAPP")
  (make-package "ROCON_APP_MANAGER_MSGS::STARTRAPP"))
(unless (find-package "ROCON_APP_MANAGER_MSGS::STARTRAPPREQUEST")
  (make-package "ROCON_APP_MANAGER_MSGS::STARTRAPPREQUEST"))
(unless (find-package "ROCON_APP_MANAGER_MSGS::STARTRAPPRESPONSE")
  (make-package "ROCON_APP_MANAGER_MSGS::STARTRAPPRESPONSE"))

(in-package "ROS")

(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))




(defclass rocon_app_manager_msgs::StartRappRequest
  :super ros::object
  :slots (_name _remappings _parameters ))

(defmethod rocon_app_manager_msgs::StartRappRequest
  (:init
   (&key
    ((:name __name) "")
    ((:remappings __remappings) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::Remapping :init) r)) r))
    ((:parameters __parameters) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _remappings __remappings)
   (setq _parameters __parameters)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:remappings
   (&rest __remappings)
   (if (keywordp (car __remappings))
       (send* _remappings __remappings)
     (progn
       (if __remappings (setq _remappings (car __remappings)))
       _remappings)))
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
    ;; string _name
    4 (length _name)
    ;; rocon_std_msgs/Remapping[] _remappings
    (apply #'+ (send-all _remappings :serialization-length)) 4
    ;; rocon_std_msgs/KeyValue[] _parameters
    (apply #'+ (send-all _parameters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; rocon_std_msgs/Remapping[] _remappings
     (write-long (length _remappings) s)
     (dolist (elem _remappings)
       (send elem :serialize s)
       )
     ;; rocon_std_msgs/KeyValue[] _parameters
     (write-long (length _parameters) s)
     (dolist (elem _parameters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_std_msgs/Remapping[] _remappings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remappings (let (r) (dotimes (i n) (push (instance rocon_std_msgs::Remapping :init) r)) r))
     (dolist (elem- _remappings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
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

(defclass rocon_app_manager_msgs::StartRappResponse
  :super ros::object
  :slots (_started _error_code _message _application_namespace ))

(defmethod rocon_app_manager_msgs::StartRappResponse
  (:init
   (&key
    ((:started __started) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    ((:application_namespace __application_namespace) "")
    )
   (send-super :init)
   (setq _started __started)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   (setq _application_namespace (string __application_namespace))
   self)
  (:started
   (&optional __started)
   (if __started (setq _started __started)) _started)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:application_namespace
   (&optional __application_namespace)
   (if __application_namespace (setq _application_namespace __application_namespace)) _application_namespace)
  (:serialization-length
   ()
   (+
    ;; bool _started
    1
    ;; int32 _error_code
    4
    ;; string _message
    4 (length _message)
    ;; string _application_namespace
    4 (length _application_namespace)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _started
       (if _started (write-byte -1 s) (write-byte 0 s))
     ;; int32 _error_code
       (write-long _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _application_namespace
       (write-long (length _application_namespace) s) (princ _application_namespace s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _started
     (setq _started (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _application_namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _application_namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rocon_app_manager_msgs::StartRapp
  :super ros::object
  :slots ())

(setf (get rocon_app_manager_msgs::StartRapp :md5sum-) "6179a6165f5fc5828f129cad01588b6f")
(setf (get rocon_app_manager_msgs::StartRapp :datatype-) "rocon_app_manager_msgs/StartRapp")
(setf (get rocon_app_manager_msgs::StartRapp :request) rocon_app_manager_msgs::StartRappRequest)
(setf (get rocon_app_manager_msgs::StartRapp :response) rocon_app_manager_msgs::StartRappResponse)

(defmethod rocon_app_manager_msgs::StartRappRequest
  (:response () (instance rocon_app_manager_msgs::StartRappResponse :init)))

(setf (get rocon_app_manager_msgs::StartRappRequest :md5sum-) "6179a6165f5fc5828f129cad01588b6f")
(setf (get rocon_app_manager_msgs::StartRappRequest :datatype-) "rocon_app_manager_msgs/StartRappRequest")
(setf (get rocon_app_manager_msgs::StartRappRequest :definition-)
      "
string name
rocon_std_msgs/Remapping[] remappings


rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/Remapping
# Describes your typical ros remapping

string remap_from
string remap_to

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
---
bool started


int32 error_code


string message


string application_namespace

")

(setf (get rocon_app_manager_msgs::StartRappResponse :md5sum-) "6179a6165f5fc5828f129cad01588b6f")
(setf (get rocon_app_manager_msgs::StartRappResponse :datatype-) "rocon_app_manager_msgs/StartRappResponse")
(setf (get rocon_app_manager_msgs::StartRappResponse :definition-)
      "
string name
rocon_std_msgs/Remapping[] remappings


rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/Remapping
# Describes your typical ros remapping

string remap_from
string remap_to

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
---
bool started


int32 error_code


string message


string application_namespace

")



(provide :rocon_app_manager_msgs/StartRapp "6179a6165f5fc5828f129cad01588b6f")


