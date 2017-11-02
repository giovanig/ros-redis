;; Auto-generated. Do not edit!


(when (boundp 'zeroconf_msgs::ListPublishedServices)
  (if (not (find-package "ZEROCONF_MSGS"))
    (make-package "ZEROCONF_MSGS"))
  (shadow 'ListPublishedServices (find-package "ZEROCONF_MSGS")))
(unless (find-package "ZEROCONF_MSGS::LISTPUBLISHEDSERVICES")
  (make-package "ZEROCONF_MSGS::LISTPUBLISHEDSERVICES"))
(unless (find-package "ZEROCONF_MSGS::LISTPUBLISHEDSERVICESREQUEST")
  (make-package "ZEROCONF_MSGS::LISTPUBLISHEDSERVICESREQUEST"))
(unless (find-package "ZEROCONF_MSGS::LISTPUBLISHEDSERVICESRESPONSE")
  (make-package "ZEROCONF_MSGS::LISTPUBLISHEDSERVICESRESPONSE"))

(in-package "ROS")





(defclass zeroconf_msgs::ListPublishedServicesRequest
  :super ros::object
  :slots (_service_type ))

(defmethod zeroconf_msgs::ListPublishedServicesRequest
  (:init
   (&key
    ((:service_type __service_type) "")
    )
   (send-super :init)
   (setq _service_type (string __service_type))
   self)
  (:service_type
   (&optional __service_type)
   (if __service_type (setq _service_type __service_type)) _service_type)
  (:serialization-length
   ()
   (+
    ;; string _service_type
    4 (length _service_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _service_type
       (write-long (length _service_type) s) (princ _service_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _service_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _service_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass zeroconf_msgs::ListPublishedServicesResponse
  :super ros::object
  :slots (_services ))

(defmethod zeroconf_msgs::ListPublishedServicesResponse
  (:init
   (&key
    ((:services __services) (let (r) (dotimes (i 0) (push (instance zeroconf_msgs::PublishedService :init) r)) r))
    )
   (send-super :init)
   (setq _services __services)
   self)
  (:services
   (&rest __services)
   (if (keywordp (car __services))
       (send* _services __services)
     (progn
       (if __services (setq _services (car __services)))
       _services)))
  (:serialization-length
   ()
   (+
    ;; zeroconf_msgs/PublishedService[] _services
    (apply #'+ (send-all _services :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zeroconf_msgs/PublishedService[] _services
     (write-long (length _services) s)
     (dolist (elem _services)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zeroconf_msgs/PublishedService[] _services
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _services (let (r) (dotimes (i n) (push (instance zeroconf_msgs::PublishedService :init) r)) r))
     (dolist (elem- _services)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass zeroconf_msgs::ListPublishedServices
  :super ros::object
  :slots ())

(setf (get zeroconf_msgs::ListPublishedServices :md5sum-) "7d391b756e89ad5929088251d9e80c9f")
(setf (get zeroconf_msgs::ListPublishedServices :datatype-) "zeroconf_msgs/ListPublishedServices")
(setf (get zeroconf_msgs::ListPublishedServices :request) zeroconf_msgs::ListPublishedServicesRequest)
(setf (get zeroconf_msgs::ListPublishedServices :response) zeroconf_msgs::ListPublishedServicesResponse)

(defmethod zeroconf_msgs::ListPublishedServicesRequest
  (:response () (instance zeroconf_msgs::ListPublishedServicesResponse :init)))

(setf (get zeroconf_msgs::ListPublishedServicesRequest :md5sum-) "7d391b756e89ad5929088251d9e80c9f")
(setf (get zeroconf_msgs::ListPublishedServicesRequest :datatype-) "zeroconf_msgs/ListPublishedServicesRequest")
(setf (get zeroconf_msgs::ListPublishedServicesRequest :definition-)
      "string service_type
---
zeroconf_msgs/PublishedService[] services


================================================================================
MSG: zeroconf_msgs/PublishedService
#
# Provides all the properties required for publishing of a zeroconf service.

string name
string type
string domain
int32 port
string description
")

(setf (get zeroconf_msgs::ListPublishedServicesResponse :md5sum-) "7d391b756e89ad5929088251d9e80c9f")
(setf (get zeroconf_msgs::ListPublishedServicesResponse :datatype-) "zeroconf_msgs/ListPublishedServicesResponse")
(setf (get zeroconf_msgs::ListPublishedServicesResponse :definition-)
      "string service_type
---
zeroconf_msgs/PublishedService[] services


================================================================================
MSG: zeroconf_msgs/PublishedService
#
# Provides all the properties required for publishing of a zeroconf service.

string name
string type
string domain
int32 port
string description
")



(provide :zeroconf_msgs/ListPublishedServices "7d391b756e89ad5929088251d9e80c9f")


