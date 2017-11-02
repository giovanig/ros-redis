;; Auto-generated. Do not edit!


(when (boundp 'rocon_std_msgs::EmptyString)
  (if (not (find-package "ROCON_STD_MSGS"))
    (make-package "ROCON_STD_MSGS"))
  (shadow 'EmptyString (find-package "ROCON_STD_MSGS")))
(unless (find-package "ROCON_STD_MSGS::EMPTYSTRING")
  (make-package "ROCON_STD_MSGS::EMPTYSTRING"))
(unless (find-package "ROCON_STD_MSGS::EMPTYSTRINGREQUEST")
  (make-package "ROCON_STD_MSGS::EMPTYSTRINGREQUEST"))
(unless (find-package "ROCON_STD_MSGS::EMPTYSTRINGRESPONSE")
  (make-package "ROCON_STD_MSGS::EMPTYSTRINGRESPONSE"))

(in-package "ROS")





(defclass rocon_std_msgs::EmptyStringRequest
  :super ros::object
  :slots ())

(defmethod rocon_std_msgs::EmptyStringRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rocon_std_msgs::EmptyStringResponse
  :super ros::object
  :slots (_data ))

(defmethod rocon_std_msgs::EmptyStringResponse
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

(defclass rocon_std_msgs::EmptyString
  :super ros::object
  :slots ())

(setf (get rocon_std_msgs::EmptyString :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get rocon_std_msgs::EmptyString :datatype-) "rocon_std_msgs/EmptyString")
(setf (get rocon_std_msgs::EmptyString :request) rocon_std_msgs::EmptyStringRequest)
(setf (get rocon_std_msgs::EmptyString :response) rocon_std_msgs::EmptyStringResponse)

(defmethod rocon_std_msgs::EmptyStringRequest
  (:response () (instance rocon_std_msgs::EmptyStringResponse :init)))

(setf (get rocon_std_msgs::EmptyStringRequest :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get rocon_std_msgs::EmptyStringRequest :datatype-) "rocon_std_msgs/EmptyStringRequest")
(setf (get rocon_std_msgs::EmptyStringRequest :definition-)
      "---
string data

")

(setf (get rocon_std_msgs::EmptyStringResponse :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get rocon_std_msgs::EmptyStringResponse :datatype-) "rocon_std_msgs/EmptyStringResponse")
(setf (get rocon_std_msgs::EmptyStringResponse :definition-)
      "---
string data

")



(provide :rocon_std_msgs/EmptyString "992ce8a1687cec8c8bd883ec73ca41d1")


