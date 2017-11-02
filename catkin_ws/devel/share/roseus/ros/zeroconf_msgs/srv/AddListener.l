;; Auto-generated. Do not edit!


(when (boundp 'zeroconf_msgs::AddListener)
  (if (not (find-package "ZEROCONF_MSGS"))
    (make-package "ZEROCONF_MSGS"))
  (shadow 'AddListener (find-package "ZEROCONF_MSGS")))
(unless (find-package "ZEROCONF_MSGS::ADDLISTENER")
  (make-package "ZEROCONF_MSGS::ADDLISTENER"))
(unless (find-package "ZEROCONF_MSGS::ADDLISTENERREQUEST")
  (make-package "ZEROCONF_MSGS::ADDLISTENERREQUEST"))
(unless (find-package "ZEROCONF_MSGS::ADDLISTENERRESPONSE")
  (make-package "ZEROCONF_MSGS::ADDLISTENERRESPONSE"))

(in-package "ROS")





(defclass zeroconf_msgs::AddListenerRequest
  :super ros::object
  :slots (_service_type ))

(defmethod zeroconf_msgs::AddListenerRequest
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

(defclass zeroconf_msgs::AddListenerResponse
  :super ros::object
  :slots (_result ))

(defmethod zeroconf_msgs::AddListenerResponse
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

(defclass zeroconf_msgs::AddListener
  :super ros::object
  :slots ())

(setf (get zeroconf_msgs::AddListener :md5sum-) "05d7490b40a920d3a0ffcc1ebf3a0889")
(setf (get zeroconf_msgs::AddListener :datatype-) "zeroconf_msgs/AddListener")
(setf (get zeroconf_msgs::AddListener :request) zeroconf_msgs::AddListenerRequest)
(setf (get zeroconf_msgs::AddListener :response) zeroconf_msgs::AddListenerResponse)

(defmethod zeroconf_msgs::AddListenerRequest
  (:response () (instance zeroconf_msgs::AddListenerResponse :init)))

(setf (get zeroconf_msgs::AddListenerRequest :md5sum-) "05d7490b40a920d3a0ffcc1ebf3a0889")
(setf (get zeroconf_msgs::AddListenerRequest :datatype-) "zeroconf_msgs/AddListenerRequest")
(setf (get zeroconf_msgs::AddListenerRequest :definition-)
      "string service_type
---
bool result
")

(setf (get zeroconf_msgs::AddListenerResponse :md5sum-) "05d7490b40a920d3a0ffcc1ebf3a0889")
(setf (get zeroconf_msgs::AddListenerResponse :datatype-) "zeroconf_msgs/AddListenerResponse")
(setf (get zeroconf_msgs::AddListenerResponse :definition-)
      "string service_type
---
bool result
")



(provide :zeroconf_msgs/AddListener "05d7490b40a920d3a0ffcc1ebf3a0889")


