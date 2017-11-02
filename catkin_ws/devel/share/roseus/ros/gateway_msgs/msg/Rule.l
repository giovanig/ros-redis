;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::Rule)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'Rule (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::RULE")
  (make-package "GATEWAY_MSGS::RULE"))

(in-package "ROS")
;;//! \htmlinclude Rule.msg.html


(defclass gateway_msgs::Rule
  :super ros::object
  :slots (_type _name _node ))

(defmethod gateway_msgs::Rule
  (:init
   (&key
    ((:type __type) "")
    ((:name __name) "")
    ((:node __node) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _name (string __name))
   (setq _node (string __node))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _name
    4 (length _name)
    ;; string _node
    4 (length _node)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gateway_msgs::Rule :md5sum-) "7a98759a4c27c4925840d27b3d7bcecb")
(setf (get gateway_msgs::Rule :datatype-) "gateway_msgs/Rule")
(setf (get gateway_msgs::Rule :definition-)
      "# Standard gateway connection rule

# type of connection (from gateway_msgs.msg.Connection)
string type

# this is the topic/service name or the action base name (a regex is supported)
string name 

# (optional) an optional node name can be provided. if node name is not provided
# then all nodes are matched (also supports regex)
string node

")



(provide :gateway_msgs/Rule "7a98759a4c27c4925840d27b3d7bcecb")


