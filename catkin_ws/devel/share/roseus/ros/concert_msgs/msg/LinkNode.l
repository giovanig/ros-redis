;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::LinkNode)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'LinkNode (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::LINKNODE")
  (make-package "CONCERT_MSGS::LINKNODE"))

(in-package "ROS")
;;//! \htmlinclude LinkNode.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(intern "*UNLIMITED_RESOURCE*" (find-package "CONCERT_MSGS::LINKNODE"))
(shadow '*UNLIMITED_RESOURCE* (find-package "CONCERT_MSGS::LINKNODE"))
(defconstant concert_msgs::LinkNode::*UNLIMITED_RESOURCE* -1)
(defclass concert_msgs::LinkNode
  :super ros::object
  :slots (_id _resource _min _max _force_name_matching _parameters ))

(defmethod concert_msgs::LinkNode
  (:init
   (&key
    ((:id __id) "")
    ((:resource __resource) "")
    ((:min __min) 0)
    ((:max __max) 0)
    ((:force_name_matching __force_name_matching) nil)
    ((:parameters __parameters) (instance rocon_std_msgs::KeyValue :init))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _resource (string __resource))
   (setq _min (round __min))
   (setq _max (round __max))
   (setq _force_name_matching __force_name_matching)
   (setq _parameters __parameters)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:resource
   (&optional __resource)
   (if __resource (setq _resource __resource)) _resource)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:force_name_matching
   (&optional __force_name_matching)
   (if __force_name_matching (setq _force_name_matching __force_name_matching)) _force_name_matching)
  (:parameters
   (&rest __parameters)
   (if (keywordp (car __parameters))
       (send* _parameters __parameters)
     (progn
       (if __parameters (setq _parameters (car __parameters)))
       _parameters)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _resource
    4 (length _resource)
    ;; int8 _min
    1
    ;; int8 _max
    1
    ;; bool _force_name_matching
    1
    ;; rocon_std_msgs/KeyValue _parameters
    (send _parameters :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _resource
       (write-long (length _resource) s) (princ _resource s)
     ;; int8 _min
       (write-byte _min s)
     ;; int8 _max
       (write-byte _max s)
     ;; bool _force_name_matching
       (if _force_name_matching (write-byte -1 s) (write-byte 0 s))
     ;; rocon_std_msgs/KeyValue _parameters
       (send _parameters :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _resource
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _resource (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _min
     (setq _min (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _min 127) (setq _min (- _min 256)))
   ;; int8 _max
     (setq _max (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _max 127) (setq _max (- _max 256)))
   ;; bool _force_name_matching
     (setq _force_name_matching (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; rocon_std_msgs/KeyValue _parameters
     (send _parameters :deserialize buf ptr-) (incf ptr- (send _parameters :serialization-length))
   ;;
   self)
  )

(setf (get concert_msgs::LinkNode :md5sum-) "66d27e37c29408b86c119285c34c50cd")
(setf (get concert_msgs::LinkNode :datatype-) "concert_msgs/LinkNode")
(setf (get concert_msgs::LinkNode :definition-)
      "# Representation of a concert client node in the implementation graph

# unique identifier
string id

# rocon uri representing the required resource, e.g. rocon:/turtlebot/*#turtle_concert/turtle_stroll
string resource

# Constraints on how many of these nodes may exist
#   min, max not set -> min = 1, max = 1
#   min not set -> min = 1
#   max not set -> max = UNLIMITED_RESOURCE
# Zero is a valid minimum value
int8 UNLIMITED_RESOURCE=-1
int8 min
int8 max

# Force matching of robot name (only really useful for demos)
bool force_name_matching

# public parameters for node
rocon_std_msgs/KeyValue parameters

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
")



(provide :concert_msgs/LinkNode "66d27e37c29408b86c119285c34c50cd")


