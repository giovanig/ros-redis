;; Auto-generated. Do not edit!


(when (boundp 'zeroconf_msgs::AddService)
  (if (not (find-package "ZEROCONF_MSGS"))
    (make-package "ZEROCONF_MSGS"))
  (shadow 'AddService (find-package "ZEROCONF_MSGS")))
(unless (find-package "ZEROCONF_MSGS::ADDSERVICE")
  (make-package "ZEROCONF_MSGS::ADDSERVICE"))
(unless (find-package "ZEROCONF_MSGS::ADDSERVICEREQUEST")
  (make-package "ZEROCONF_MSGS::ADDSERVICEREQUEST"))
(unless (find-package "ZEROCONF_MSGS::ADDSERVICERESPONSE")
  (make-package "ZEROCONF_MSGS::ADDSERVICERESPONSE"))

(in-package "ROS")





(defclass zeroconf_msgs::AddServiceRequest
  :super ros::object
  :slots (_service ))

(defmethod zeroconf_msgs::AddServiceRequest
  (:init
   (&key
    ((:service __service) (instance zeroconf_msgs::PublishedService :init))
    )
   (send-super :init)
   (setq _service __service)
   self)
  (:service
   (&rest __service)
   (if (keywordp (car __service))
       (send* _service __service)
     (progn
       (if __service (setq _service (car __service)))
       _service)))
  (:serialization-length
   ()
   (+
    ;; zeroconf_msgs/PublishedService _service
    (send _service :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zeroconf_msgs/PublishedService _service
       (send _service :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zeroconf_msgs/PublishedService _service
     (send _service :deserialize buf ptr-) (incf ptr- (send _service :serialization-length))
   ;;
   self)
  )

(defclass zeroconf_msgs::AddServiceResponse
  :super ros::object
  :slots (_result ))

(defmethod zeroconf_msgs::AddServiceResponse
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

(defclass zeroconf_msgs::AddService
  :super ros::object
  :slots ())

(setf (get zeroconf_msgs::AddService :md5sum-) "2ae0e420b2f58ab49b813cd81e42d4b3")
(setf (get zeroconf_msgs::AddService :datatype-) "zeroconf_msgs/AddService")
(setf (get zeroconf_msgs::AddService :request) zeroconf_msgs::AddServiceRequest)
(setf (get zeroconf_msgs::AddService :response) zeroconf_msgs::AddServiceResponse)

(defmethod zeroconf_msgs::AddServiceRequest
  (:response () (instance zeroconf_msgs::AddServiceResponse :init)))

(setf (get zeroconf_msgs::AddServiceRequest :md5sum-) "2ae0e420b2f58ab49b813cd81e42d4b3")
(setf (get zeroconf_msgs::AddServiceRequest :datatype-) "zeroconf_msgs/AddServiceRequest")
(setf (get zeroconf_msgs::AddServiceRequest :definition-)
      "zeroconf_msgs/PublishedService service

================================================================================
MSG: zeroconf_msgs/PublishedService
#
# Provides all the properties required for publishing of a zeroconf service.

string name
string type
string domain
int32 port
string description
---
bool result

")

(setf (get zeroconf_msgs::AddServiceResponse :md5sum-) "2ae0e420b2f58ab49b813cd81e42d4b3")
(setf (get zeroconf_msgs::AddServiceResponse :datatype-) "zeroconf_msgs/AddServiceResponse")
(setf (get zeroconf_msgs::AddServiceResponse :definition-)
      "zeroconf_msgs/PublishedService service

================================================================================
MSG: zeroconf_msgs/PublishedService
#
# Provides all the properties required for publishing of a zeroconf service.

string name
string type
string domain
int32 port
string description
---
bool result

")



(provide :zeroconf_msgs/AddService "2ae0e420b2f58ab49b813cd81e42d4b3")


