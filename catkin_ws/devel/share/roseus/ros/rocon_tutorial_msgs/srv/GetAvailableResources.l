;; Auto-generated. Do not edit!


(when (boundp 'rocon_tutorial_msgs::GetAvailableResources)
  (if (not (find-package "ROCON_TUTORIAL_MSGS"))
    (make-package "ROCON_TUTORIAL_MSGS"))
  (shadow 'GetAvailableResources (find-package "ROCON_TUTORIAL_MSGS")))
(unless (find-package "ROCON_TUTORIAL_MSGS::GETAVAILABLERESOURCES")
  (make-package "ROCON_TUTORIAL_MSGS::GETAVAILABLERESOURCES"))
(unless (find-package "ROCON_TUTORIAL_MSGS::GETAVAILABLERESOURCESREQUEST")
  (make-package "ROCON_TUTORIAL_MSGS::GETAVAILABLERESOURCESREQUEST"))
(unless (find-package "ROCON_TUTORIAL_MSGS::GETAVAILABLERESOURCESRESPONSE")
  (make-package "ROCON_TUTORIAL_MSGS::GETAVAILABLERESOURCESRESPONSE"))

(in-package "ROS")





(defclass rocon_tutorial_msgs::GetAvailableResourcesRequest
  :super ros::object
  :slots (_rapp _priority ))

(defmethod rocon_tutorial_msgs::GetAvailableResourcesRequest
  (:init
   (&key
    ((:rapp __rapp) "")
    ((:priority __priority) 0)
    )
   (send-super :init)
   (setq _rapp (string __rapp))
   (setq _priority (round __priority))
   self)
  (:rapp
   (&optional __rapp)
   (if __rapp (setq _rapp __rapp)) _rapp)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:serialization-length
   ()
   (+
    ;; string _rapp
    4 (length _rapp)
    ;; int16 _priority
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _rapp
       (write-long (length _rapp) s) (princ _rapp s)
     ;; int16 _priority
       (write-word _priority s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _rapp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rapp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass rocon_tutorial_msgs::GetAvailableResourcesResponse
  :super ros::object
  :slots (_available_resources _preemptible_resources ))

(defmethod rocon_tutorial_msgs::GetAvailableResourcesResponse
  (:init
   (&key
    ((:available_resources __available_resources) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:preemptible_resources __preemptible_resources) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _available_resources __available_resources)
   (setq _preemptible_resources __preemptible_resources)
   self)
  (:available_resources
   (&optional __available_resources)
   (if __available_resources (setq _available_resources __available_resources)) _available_resources)
  (:preemptible_resources
   (&optional __preemptible_resources)
   (if __preemptible_resources (setq _preemptible_resources __preemptible_resources)) _preemptible_resources)
  (:serialization-length
   ()
   (+
    ;; string[] _available_resources
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _available_resources)) 4
    ;; string[] _preemptible_resources
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _preemptible_resources)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _available_resources
     (write-long (length _available_resources) s)
     (dolist (elem _available_resources)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _preemptible_resources
     (write-long (length _preemptible_resources) s)
     (dolist (elem _preemptible_resources)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _available_resources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available_resources (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _available_resources i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _preemptible_resources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _preemptible_resources (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _preemptible_resources i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rocon_tutorial_msgs::GetAvailableResources
  :super ros::object
  :slots ())

(setf (get rocon_tutorial_msgs::GetAvailableResources :md5sum-) "b8917c59e7f27df2ec9f8142cd23fade")
(setf (get rocon_tutorial_msgs::GetAvailableResources :datatype-) "rocon_tutorial_msgs/GetAvailableResources")
(setf (get rocon_tutorial_msgs::GetAvailableResources :request) rocon_tutorial_msgs::GetAvailableResourcesRequest)
(setf (get rocon_tutorial_msgs::GetAvailableResources :response) rocon_tutorial_msgs::GetAvailableResourcesResponse)

(defmethod rocon_tutorial_msgs::GetAvailableResourcesRequest
  (:response () (instance rocon_tutorial_msgs::GetAvailableResourcesResponse :init)))

(setf (get rocon_tutorial_msgs::GetAvailableResourcesRequest :md5sum-) "b8917c59e7f27df2ec9f8142cd23fade")
(setf (get rocon_tutorial_msgs::GetAvailableResourcesRequest :datatype-) "rocon_tutorial_msgs/GetAvailableResourcesRequest")
(setf (get rocon_tutorial_msgs::GetAvailableResourcesRequest :definition-)
      "string rapp
int16 priority
---
string[] available_resources
string[] preemptible_resources

")

(setf (get rocon_tutorial_msgs::GetAvailableResourcesResponse :md5sum-) "b8917c59e7f27df2ec9f8142cd23fade")
(setf (get rocon_tutorial_msgs::GetAvailableResourcesResponse :datatype-) "rocon_tutorial_msgs/GetAvailableResourcesResponse")
(setf (get rocon_tutorial_msgs::GetAvailableResourcesResponse :definition-)
      "string rapp
int16 priority
---
string[] available_resources
string[] preemptible_resources

")



(provide :rocon_tutorial_msgs/GetAvailableResources "b8917c59e7f27df2ec9f8142cd23fade")


