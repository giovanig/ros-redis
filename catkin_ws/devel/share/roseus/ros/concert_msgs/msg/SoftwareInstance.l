;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::SoftwareInstance)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'SoftwareInstance (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::SOFTWAREINSTANCE")
  (make-package "CONCERT_MSGS::SOFTWAREINSTANCE"))

(in-package "ROS")
;;//! \htmlinclude SoftwareInstance.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(defclass concert_msgs::SoftwareInstance
  :super ros::object
  :slots (_resource_name _name _max_count _namespace _users _parameters ))

(defmethod concert_msgs::SoftwareInstance
  (:init
   (&key
    ((:resource_name __resource_name) "")
    ((:name __name) "")
    ((:max_count __max_count) 0)
    ((:namespace __namespace) "")
    ((:users __users) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:parameters __parameters) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _resource_name (string __resource_name))
   (setq _name (string __name))
   (setq _max_count (round __max_count))
   (setq _namespace (string __namespace))
   (setq _users __users)
   (setq _parameters __parameters)
   self)
  (:resource_name
   (&optional __resource_name)
   (if __resource_name (setq _resource_name __resource_name)) _resource_name)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:max_count
   (&optional __max_count)
   (if __max_count (setq _max_count __max_count)) _max_count)
  (:namespace
   (&optional __namespace)
   (if __namespace (setq _namespace __namespace)) _namespace)
  (:users
   (&optional __users)
   (if __users (setq _users __users)) _users)
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
    ;; string _resource_name
    4 (length _resource_name)
    ;; string _name
    4 (length _name)
    ;; int16 _max_count
    2
    ;; string _namespace
    4 (length _namespace)
    ;; string[] _users
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _users)) 4
    ;; rocon_std_msgs/KeyValue[] _parameters
    (apply #'+ (send-all _parameters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _resource_name
       (write-long (length _resource_name) s) (princ _resource_name s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int16 _max_count
       (write-word _max_count s)
     ;; string _namespace
       (write-long (length _namespace) s) (princ _namespace s)
     ;; string[] _users
     (write-long (length _users) s)
     (dolist (elem _users)
       (write-long (length elem) s) (princ elem s)
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
   ;; string _resource_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _resource_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _max_count
     (setq _max_count (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _users
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _users (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _users i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get concert_msgs::SoftwareInstance :md5sum-) "d51f42200dcf594007d5fbba6c47cfe9")
(setf (get concert_msgs::SoftwareInstance :datatype-) "concert_msgs/SoftwareInstance")
(setf (get concert_msgs::SoftwareInstance :definition-)
      "# Runtime
string  resource_name
string  name

int16   max_count
string  namespace
string[] users
rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
")



(provide :concert_msgs/SoftwareInstance "d51f42200dcf594007d5fbba6c47cfe9")


