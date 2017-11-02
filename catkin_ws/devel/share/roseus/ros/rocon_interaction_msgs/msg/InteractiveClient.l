;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::InteractiveClient)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'InteractiveClient (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::INTERACTIVECLIENT")
  (make-package "ROCON_INTERACTION_MSGS::INTERACTIVECLIENT"))

(in-package "ROS")
;;//! \htmlinclude InteractiveClient.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass rocon_interaction_msgs::InteractiveClient
  :super ros::object
  :slots (_name _id _platform_info _running_interactions ))

(defmethod rocon_interaction_msgs::InteractiveClient
  (:init
   (&key
    ((:name __name) "")
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:platform_info __platform_info) (instance rocon_std_msgs::MasterInfo :init))
    ((:running_interactions __running_interactions) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _id __id)
   (setq _platform_info __platform_info)
   (setq _running_interactions __running_interactions)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:platform_info
   (&rest __platform_info)
   (if (keywordp (car __platform_info))
       (send* _platform_info __platform_info)
     (progn
       (if __platform_info (setq _platform_info (car __platform_info)))
       _platform_info)))
  (:running_interactions
   (&optional __running_interactions)
   (if __running_interactions (setq _running_interactions __running_interactions)) _running_interactions)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uuid_msgs/UniqueID _id
    (send _id :serialization-length)
    ;; rocon_std_msgs/MasterInfo _platform_info
    (send _platform_info :serialization-length)
    ;; string[] _running_interactions
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _running_interactions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; rocon_std_msgs/MasterInfo _platform_info
       (send _platform_info :serialize s)
     ;; string[] _running_interactions
     (write-long (length _running_interactions) s)
     (dolist (elem _running_interactions)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uuid_msgs/UniqueID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; rocon_std_msgs/MasterInfo _platform_info
     (send _platform_info :deserialize buf ptr-) (incf ptr- (send _platform_info :serialization-length))
   ;; string[] _running_interactions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _running_interactions (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _running_interactions i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get rocon_interaction_msgs::InteractiveClient :md5sum-) "8be6d4014d3005ac581b7b0a73488749")
(setf (get rocon_interaction_msgs::InteractiveClient :datatype-) "rocon_interaction_msgs/InteractiveClient")
(setf (get rocon_interaction_msgs::InteractiveClient :definition-)
      "# 
# Describes an interactive concert client.
#
# Unique names - human consumable rocon name as well as globally unique name
# provided by the remocon client.

string name
uuid_msgs/UniqueID id

rocon_std_msgs/MasterInfo platform_info

# easy to read display names of interactions running on this remocon
string[] running_interactions

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

================================================================================
MSG: rocon_std_msgs/MasterInfo
# Publish basic information about this master.

string name
string rocon_uri
string description
rocon_std_msgs/Icon icon
string version
================================================================================
MSG: rocon_std_msgs/Icon
# Used to idenfity the original package/filename resource this icon was/is to be loaded from
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
string resource_name

# Image data format.  \"jpeg\" or \"png\"
string format

# Image data.
uint8[] data
")



(provide :rocon_interaction_msgs/InteractiveClient "8be6d4014d3005ac581b7b0a73488749")


