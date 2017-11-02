;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::IncompatibleRappList)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'IncompatibleRappList (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::INCOMPATIBLERAPPLIST")
  (make-package "ROCON_APP_MANAGER_MSGS::INCOMPATIBLERAPPLIST"))

(in-package "ROS")
;;//! \htmlinclude IncompatibleRappList.msg.html


(defclass rocon_app_manager_msgs::IncompatibleRappList
  :super ros::object
  :slots (_blacklisted_rapps _non_whitelisted_rapps _platform_incompatible_rapps _capabilities_incompatible_rapps ))

(defmethod rocon_app_manager_msgs::IncompatibleRappList
  (:init
   (&key
    ((:blacklisted_rapps __blacklisted_rapps) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:non_whitelisted_rapps __non_whitelisted_rapps) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:platform_incompatible_rapps __platform_incompatible_rapps) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:capabilities_incompatible_rapps __capabilities_incompatible_rapps) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _blacklisted_rapps __blacklisted_rapps)
   (setq _non_whitelisted_rapps __non_whitelisted_rapps)
   (setq _platform_incompatible_rapps __platform_incompatible_rapps)
   (setq _capabilities_incompatible_rapps __capabilities_incompatible_rapps)
   self)
  (:blacklisted_rapps
   (&optional __blacklisted_rapps)
   (if __blacklisted_rapps (setq _blacklisted_rapps __blacklisted_rapps)) _blacklisted_rapps)
  (:non_whitelisted_rapps
   (&optional __non_whitelisted_rapps)
   (if __non_whitelisted_rapps (setq _non_whitelisted_rapps __non_whitelisted_rapps)) _non_whitelisted_rapps)
  (:platform_incompatible_rapps
   (&optional __platform_incompatible_rapps)
   (if __platform_incompatible_rapps (setq _platform_incompatible_rapps __platform_incompatible_rapps)) _platform_incompatible_rapps)
  (:capabilities_incompatible_rapps
   (&optional __capabilities_incompatible_rapps)
   (if __capabilities_incompatible_rapps (setq _capabilities_incompatible_rapps __capabilities_incompatible_rapps)) _capabilities_incompatible_rapps)
  (:serialization-length
   ()
   (+
    ;; string[] _blacklisted_rapps
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _blacklisted_rapps)) 4
    ;; string[] _non_whitelisted_rapps
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _non_whitelisted_rapps)) 4
    ;; string[] _platform_incompatible_rapps
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _platform_incompatible_rapps)) 4
    ;; string[] _capabilities_incompatible_rapps
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _capabilities_incompatible_rapps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _blacklisted_rapps
     (write-long (length _blacklisted_rapps) s)
     (dolist (elem _blacklisted_rapps)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _non_whitelisted_rapps
     (write-long (length _non_whitelisted_rapps) s)
     (dolist (elem _non_whitelisted_rapps)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _platform_incompatible_rapps
     (write-long (length _platform_incompatible_rapps) s)
     (dolist (elem _platform_incompatible_rapps)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _capabilities_incompatible_rapps
     (write-long (length _capabilities_incompatible_rapps) s)
     (dolist (elem _capabilities_incompatible_rapps)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _blacklisted_rapps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blacklisted_rapps (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _blacklisted_rapps i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _non_whitelisted_rapps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _non_whitelisted_rapps (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _non_whitelisted_rapps i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _platform_incompatible_rapps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _platform_incompatible_rapps (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _platform_incompatible_rapps i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _capabilities_incompatible_rapps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _capabilities_incompatible_rapps (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _capabilities_incompatible_rapps i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get rocon_app_manager_msgs::IncompatibleRappList :md5sum-) "f8b60bc2510b0df387f6623f3db3a079")
(setf (get rocon_app_manager_msgs::IncompatibleRappList :datatype-) "rocon_app_manager_msgs/IncompatibleRappList")
(setf (get rocon_app_manager_msgs::IncompatibleRappList :definition-)
      "# List all apps which were filtered for some reason or another

string[] blacklisted_rapps
string[] non_whitelisted_rapps
string[] platform_incompatible_rapps
string[] capabilities_incompatible_rapps

")



(provide :rocon_app_manager_msgs/IncompatibleRappList "f8b60bc2510b0df387f6623f3db3a079")


