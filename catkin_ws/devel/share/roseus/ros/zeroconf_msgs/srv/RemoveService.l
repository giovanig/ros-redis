;; Auto-generated. Do not edit!


(when (boundp 'zeroconf_msgs::RemoveService)
  (if (not (find-package "ZEROCONF_MSGS"))
    (make-package "ZEROCONF_MSGS"))
  (shadow 'RemoveService (find-package "ZEROCONF_MSGS")))
(unless (find-package "ZEROCONF_MSGS::REMOVESERVICE")
  (make-package "ZEROCONF_MSGS::REMOVESERVICE"))
(unless (find-package "ZEROCONF_MSGS::REMOVESERVICEREQUEST")
  (make-package "ZEROCONF_MSGS::REMOVESERVICEREQUEST"))
(unless (find-package "ZEROCONF_MSGS::REMOVESERVICERESPONSE")
  (make-package "ZEROCONF_MSGS::REMOVESERVICERESPONSE"))

(in-package "ROS")





(defclass zeroconf_msgs::RemoveServiceRequest
  :super ros::object
  :slots (_service ))

(defmethod zeroconf_msgs::RemoveServiceRequest
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

(defclass zeroconf_msgs::RemoveServiceResponse
  :super ros::object
  :slots (_result ))

(defmethod zeroconf_msgs::RemoveServiceResponse
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

(defclass zeroconf_msgs::RemoveService
  :super ros::object
  :slots ())

(setf (get zeroconf_msgs::RemoveService :md5sum-) "2ae0e420b2f58ab49b813cd81e42d4b3")
(setf (get zeroconf_msgs::RemoveService :datatype-) "zeroconf_msgs/RemoveService")
(setf (get zeroconf_msgs::RemoveService :request) zeroconf_msgs::RemoveServiceRequest)
(setf (get zeroconf_msgs::RemoveService :response) zeroconf_msgs::RemoveServiceResponse)

(defmethod zeroconf_msgs::RemoveServiceRequest
  (:response () (instance zeroconf_msgs::RemoveServiceResponse :init)))

(setf (get zeroconf_msgs::RemoveServiceRequest :md5sum-) "2ae0e420b2f58ab49b813cd81e42d4b3")
(setf (get zeroconf_msgs::RemoveServiceRequest :datatype-) "zeroconf_msgs/RemoveServiceRequest")
(setf (get zeroconf_msgs::RemoveServiceRequest :definition-)
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

(setf (get zeroconf_msgs::RemoveServiceResponse :md5sum-) "2ae0e420b2f58ab49b813cd81e42d4b3")
(setf (get zeroconf_msgs::RemoveServiceResponse :datatype-) "zeroconf_msgs/RemoveServiceResponse")
(setf (get zeroconf_msgs::RemoveServiceResponse :definition-)
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



(provide :zeroconf_msgs/RemoveService "2ae0e420b2f58ab49b813cd81e42d4b3")


