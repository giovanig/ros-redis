;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::SoftwareProfile)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'SoftwareProfile (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::SOFTWAREPROFILE")
  (make-package "CONCERT_MSGS::SOFTWAREPROFILE"))

(in-package "ROS")
;;//! \htmlinclude SoftwareProfile.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(defclass concert_msgs::SoftwareProfile
  :super ros::object
  :slots (_resource_name _name _description _author _launch _max_count _parameters ))

(defmethod concert_msgs::SoftwareProfile
  (:init
   (&key
    ((:resource_name __resource_name) "")
    ((:name __name) "")
    ((:description __description) "")
    ((:author __author) "")
    ((:launch __launch) "")
    ((:max_count __max_count) 0)
    ((:parameters __parameters) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _resource_name (string __resource_name))
   (setq _name (string __name))
   (setq _description (string __description))
   (setq _author (string __author))
   (setq _launch (string __launch))
   (setq _max_count (round __max_count))
   (setq _parameters __parameters)
   self)
  (:resource_name
   (&optional __resource_name)
   (if __resource_name (setq _resource_name __resource_name)) _resource_name)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:author
   (&optional __author)
   (if __author (setq _author __author)) _author)
  (:launch
   (&optional __launch)
   (if __launch (setq _launch __launch)) _launch)
  (:max_count
   (&optional __max_count)
   (if __max_count (setq _max_count __max_count)) _max_count)
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
    ;; string _description
    4 (length _description)
    ;; string _author
    4 (length _author)
    ;; string _launch
    4 (length _launch)
    ;; int16 _max_count
    2
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
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _author
       (write-long (length _author) s) (princ _author s)
     ;; string _launch
       (write-long (length _launch) s) (princ _launch s)
     ;; int16 _max_count
       (write-word _max_count s)
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
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _author
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _author (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _launch
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _launch (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _max_count
     (setq _max_count (sys::peek buf ptr- :short)) (incf ptr- 2)
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

(setf (get concert_msgs::SoftwareProfile :md5sum-) "ae0fcd28b11be06d5ad15aafa639856a")
(setf (get concert_msgs::SoftwareProfile :datatype-) "concert_msgs/SoftwareProfile")
(setf (get concert_msgs::SoftwareProfile :definition-)
      "# Configurations
string resource_name
string name
string description
string author
string launch
int16  max_count
rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
")



(provide :concert_msgs/SoftwareProfile "ae0fcd28b11be06d5ad15aafa639856a")


