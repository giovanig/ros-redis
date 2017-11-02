;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::SoftwareProfiles)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'SoftwareProfiles (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::SOFTWAREPROFILES")
  (make-package "CONCERT_MSGS::SOFTWAREPROFILES"))

(in-package "ROS")
;;//! \htmlinclude SoftwareProfiles.msg.html


(defclass concert_msgs::SoftwareProfiles
  :super ros::object
  :slots (_profiles ))

(defmethod concert_msgs::SoftwareProfiles
  (:init
   (&key
    ((:profiles __profiles) (let (r) (dotimes (i 0) (push (instance concert_msgs::SoftwareProfile :init) r)) r))
    )
   (send-super :init)
   (setq _profiles __profiles)
   self)
  (:profiles
   (&rest __profiles)
   (if (keywordp (car __profiles))
       (send* _profiles __profiles)
     (progn
       (if __profiles (setq _profiles (car __profiles)))
       _profiles)))
  (:serialization-length
   ()
   (+
    ;; concert_msgs/SoftwareProfile[] _profiles
    (apply #'+ (send-all _profiles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; concert_msgs/SoftwareProfile[] _profiles
     (write-long (length _profiles) s)
     (dolist (elem _profiles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; concert_msgs/SoftwareProfile[] _profiles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _profiles (let (r) (dotimes (i n) (push (instance concert_msgs::SoftwareProfile :init) r)) r))
     (dolist (elem- _profiles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get concert_msgs::SoftwareProfiles :md5sum-) "b1749b57e354bf30f98c3179a4fff5d7")
(setf (get concert_msgs::SoftwareProfiles :datatype-) "concert_msgs/SoftwareProfiles")
(setf (get concert_msgs::SoftwareProfiles :definition-)
      "SoftwareProfile[] profiles 

================================================================================
MSG: concert_msgs/SoftwareProfile
# Configurations
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



(provide :concert_msgs/SoftwareProfiles "b1749b57e354bf30f98c3179a4fff5d7")


