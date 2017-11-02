;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::InteractiveClients)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'InteractiveClients (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::INTERACTIVECLIENTS")
  (make-package "ROCON_INTERACTION_MSGS::INTERACTIVECLIENTS"))

(in-package "ROS")
;;//! \htmlinclude InteractiveClients.msg.html


(defclass rocon_interaction_msgs::InteractiveClients
  :super ros::object
  :slots (_idle_clients _running_clients ))

(defmethod rocon_interaction_msgs::InteractiveClients
  (:init
   (&key
    ((:idle_clients __idle_clients) (let (r) (dotimes (i 0) (push (instance rocon_interaction_msgs::InteractiveClient :init) r)) r))
    ((:running_clients __running_clients) (let (r) (dotimes (i 0) (push (instance rocon_interaction_msgs::InteractiveClient :init) r)) r))
    )
   (send-super :init)
   (setq _idle_clients __idle_clients)
   (setq _running_clients __running_clients)
   self)
  (:idle_clients
   (&rest __idle_clients)
   (if (keywordp (car __idle_clients))
       (send* _idle_clients __idle_clients)
     (progn
       (if __idle_clients (setq _idle_clients (car __idle_clients)))
       _idle_clients)))
  (:running_clients
   (&rest __running_clients)
   (if (keywordp (car __running_clients))
       (send* _running_clients __running_clients)
     (progn
       (if __running_clients (setq _running_clients (car __running_clients)))
       _running_clients)))
  (:serialization-length
   ()
   (+
    ;; rocon_interaction_msgs/InteractiveClient[] _idle_clients
    (apply #'+ (send-all _idle_clients :serialization-length)) 4
    ;; rocon_interaction_msgs/InteractiveClient[] _running_clients
    (apply #'+ (send-all _running_clients :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rocon_interaction_msgs/InteractiveClient[] _idle_clients
     (write-long (length _idle_clients) s)
     (dolist (elem _idle_clients)
       (send elem :serialize s)
       )
     ;; rocon_interaction_msgs/InteractiveClient[] _running_clients
     (write-long (length _running_clients) s)
     (dolist (elem _running_clients)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rocon_interaction_msgs/InteractiveClient[] _idle_clients
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idle_clients (let (r) (dotimes (i n) (push (instance rocon_interaction_msgs::InteractiveClient :init) r)) r))
     (dolist (elem- _idle_clients)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rocon_interaction_msgs/InteractiveClient[] _running_clients
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _running_clients (let (r) (dotimes (i n) (push (instance rocon_interaction_msgs::InteractiveClient :init) r)) r))
     (dolist (elem- _running_clients)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rocon_interaction_msgs::InteractiveClients :md5sum-) "5a5f85c169f63b30c61759b0bcca81c4")
(setf (get rocon_interaction_msgs::InteractiveClients :datatype-) "rocon_interaction_msgs/InteractiveClients")
(setf (get rocon_interaction_msgs::InteractiveClients :definition-)
      "# 
# Two lists are included here to distinguish between idle clients and those that
# are currently running an app.
#
InteractiveClient[] idle_clients
InteractiveClient[] running_clients

================================================================================
MSG: rocon_interaction_msgs/InteractiveClient
# 
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



(provide :rocon_interaction_msgs/InteractiveClients "5a5f85c169f63b30c61759b0bcca81c4")


