;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::LinkConnection)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'LinkConnection (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::LINKCONNECTION")
  (make-package "CONCERT_MSGS::LINKCONNECTION"))

(in-package "ROS")
;;//! \htmlinclude LinkConnection.msg.html


(defclass concert_msgs::LinkConnection
  :super ros::object
  :slots (_id _type ))

(defmethod concert_msgs::LinkConnection
  (:init
   (&key
    ((:id __id) "")
    ((:type __type) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _type (string __type))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get concert_msgs::LinkConnection :md5sum-) "3ba1be4318fd20a9a1eb2187efdddb8d")
(setf (get concert_msgs::LinkConnection :datatype-) "concert_msgs/LinkConnection")
(setf (get concert_msgs::LinkConnection :definition-)
      "# Representation of a topic/action node in the 
# implementation graph

# unique identifier
string id
# type of the topic, e.g. std_msgs/String
string type

")



(provide :concert_msgs/LinkConnection "3ba1be4318fd20a9a1eb2187efdddb8d")


