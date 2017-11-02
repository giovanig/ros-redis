;; Auto-generated. Do not edit!


(when (boundp 'rocon_service_pair_msgs::TestiesPairRequest)
  (if (not (find-package "ROCON_SERVICE_PAIR_MSGS"))
    (make-package "ROCON_SERVICE_PAIR_MSGS"))
  (shadow 'TestiesPairRequest (find-package "ROCON_SERVICE_PAIR_MSGS")))
(unless (find-package "ROCON_SERVICE_PAIR_MSGS::TESTIESPAIRREQUEST")
  (make-package "ROCON_SERVICE_PAIR_MSGS::TESTIESPAIRREQUEST"))

(in-package "ROS")
;;//! \htmlinclude TestiesPairRequest.msg.html
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass rocon_service_pair_msgs::TestiesPairRequest
  :super ros::object
  :slots (_id _request ))

(defmethod rocon_service_pair_msgs::TestiesPairRequest
  (:init
   (&key
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:request __request) (instance rocon_service_pair_msgs::TestiesRequest :init))
    )
   (send-super :init)
   (setq _id __id)
   (setq _request __request)
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:request
   (&rest __request)
   (if (keywordp (car __request))
       (send* _request __request)
     (progn
       (if __request (setq _request (car __request)))
       _request)))
  (:serialization-length
   ()
   (+
    ;; uuid_msgs/UniqueID _id
    (send _id :serialization-length)
    ;; rocon_service_pair_msgs/TestiesRequest _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; rocon_service_pair_msgs/TestiesRequest _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uuid_msgs/UniqueID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; rocon_service_pair_msgs/TestiesRequest _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(setf (get rocon_service_pair_msgs::TestiesPairRequest :md5sum-) "71ec95e384ce52aa32491f3b69a62027")
(setf (get rocon_service_pair_msgs::TestiesPairRequest :datatype-) "rocon_service_pair_msgs/TestiesPairRequest")
(setf (get rocon_service_pair_msgs::TestiesPairRequest :definition-)
      "uuid_msgs/UniqueID id
TestiesRequest request

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

================================================================================
MSG: rocon_service_pair_msgs/TestiesRequest
string data

")



(provide :rocon_service_pair_msgs/TestiesPairRequest "71ec95e384ce52aa32491f3b69a62027")


