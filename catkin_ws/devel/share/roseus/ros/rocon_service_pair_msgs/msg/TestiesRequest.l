;; Auto-generated. Do not edit!


(when (boundp 'rocon_service_pair_msgs::TestiesRequest)
  (if (not (find-package "ROCON_SERVICE_PAIR_MSGS"))
    (make-package "ROCON_SERVICE_PAIR_MSGS"))
  (shadow 'TestiesRequest (find-package "ROCON_SERVICE_PAIR_MSGS")))
(unless (find-package "ROCON_SERVICE_PAIR_MSGS::TESTIESREQUEST")
  (make-package "ROCON_SERVICE_PAIR_MSGS::TESTIESREQUEST"))

(in-package "ROS")
;;//! \htmlinclude TestiesRequest.msg.html


(defclass rocon_service_pair_msgs::TestiesRequest
  :super ros::object
  :slots (_data ))

(defmethod rocon_service_pair_msgs::TestiesRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rocon_service_pair_msgs::TestiesRequest :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get rocon_service_pair_msgs::TestiesRequest :datatype-) "rocon_service_pair_msgs/TestiesRequest")
(setf (get rocon_service_pair_msgs::TestiesRequest :definition-)
      "string data

")



(provide :rocon_service_pair_msgs/TestiesRequest "992ce8a1687cec8c8bd883ec73ca41d1")


