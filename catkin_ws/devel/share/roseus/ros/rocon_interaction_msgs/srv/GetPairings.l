;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::GetPairings)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'GetPairings (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::GETPAIRINGS")
  (make-package "ROCON_INTERACTION_MSGS::GETPAIRINGS"))
(unless (find-package "ROCON_INTERACTION_MSGS::GETPAIRINGSREQUEST")
  (make-package "ROCON_INTERACTION_MSGS::GETPAIRINGSREQUEST"))
(unless (find-package "ROCON_INTERACTION_MSGS::GETPAIRINGSRESPONSE")
  (make-package "ROCON_INTERACTION_MSGS::GETPAIRINGSRESPONSE"))

(in-package "ROS")





(defclass rocon_interaction_msgs::GetPairingsRequest
  :super ros::object
  :slots ())

(defmethod rocon_interaction_msgs::GetPairingsRequest
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

(defclass rocon_interaction_msgs::GetPairingsResponse
  :super ros::object
  :slots (_pairings ))

(defmethod rocon_interaction_msgs::GetPairingsResponse
  (:init
   (&key
    ((:pairings __pairings) (let (r) (dotimes (i 0) (push (instance rocon_interaction_msgs::Pairing :init) r)) r))
    )
   (send-super :init)
   (setq _pairings __pairings)
   self)
  (:pairings
   (&rest __pairings)
   (if (keywordp (car __pairings))
       (send* _pairings __pairings)
     (progn
       (if __pairings (setq _pairings (car __pairings)))
       _pairings)))
  (:serialization-length
   ()
   (+
    ;; rocon_interaction_msgs/Pairing[] _pairings
    (apply #'+ (send-all _pairings :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rocon_interaction_msgs/Pairing[] _pairings
     (write-long (length _pairings) s)
     (dolist (elem _pairings)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rocon_interaction_msgs/Pairing[] _pairings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pairings (let (r) (dotimes (i n) (push (instance rocon_interaction_msgs::Pairing :init) r)) r))
     (dolist (elem- _pairings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass rocon_interaction_msgs::GetPairings
  :super ros::object
  :slots ())

(setf (get rocon_interaction_msgs::GetPairings :md5sum-) "d29a833c93f116257b8e089a802ebf98")
(setf (get rocon_interaction_msgs::GetPairings :datatype-) "rocon_interaction_msgs/GetPairings")
(setf (get rocon_interaction_msgs::GetPairings :request) rocon_interaction_msgs::GetPairingsRequest)
(setf (get rocon_interaction_msgs::GetPairings :response) rocon_interaction_msgs::GetPairingsResponse)

(defmethod rocon_interaction_msgs::GetPairingsRequest
  (:response () (instance rocon_interaction_msgs::GetPairingsResponse :init)))

(setf (get rocon_interaction_msgs::GetPairingsRequest :md5sum-) "d29a833c93f116257b8e089a802ebf98")
(setf (get rocon_interaction_msgs::GetPairingsRequest :datatype-) "rocon_interaction_msgs/GetPairingsRequest")
(setf (get rocon_interaction_msgs::GetPairingsRequest :definition-)
      "
---
Pairing[] pairings


================================================================================
MSG: rocon_interaction_msgs/Pairing
###############################################################
# Pairing rapp specification
###############################################################

# Unique name that represents this pairing. Note that you can
# have multiple configurations of a single rapp, so the rapp
# name alone is not enough to uniquely identify the pairing
string name

# Group to which this pairing belongs
string group

# ros resource name of the rapp, e.g. rocon_apps/talker
string rapp

###############################################################
# Customising the rapp launch instance
###############################################################

# Can load the default rapp description, but sometimes useful to
# override it to provide more human friendly information.
string description

# Whether or not this rapp should bringup/teardown an interaction
# with the launching of this rapp. If empty, no interaction is
# required, if non-empty, look for the specified interaction.
string requires_interaction

# Again, can load the default rapp icon, but may want to override it.
rocon_std_msgs/Icon icon

rocon_std_msgs/Remapping[] remappings

# Key value pairs representing rapp parameters
rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/Icon
# Used to idenfity the original package/filename resource this icon was/is to be loaded from
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
string resource_name

# Image data format.  \"jpeg\" or \"png\"
string format

# Image data.
uint8[] data
================================================================================
MSG: rocon_std_msgs/Remapping
# Describes your typical ros remapping

string remap_from
string remap_to

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
")

(setf (get rocon_interaction_msgs::GetPairingsResponse :md5sum-) "d29a833c93f116257b8e089a802ebf98")
(setf (get rocon_interaction_msgs::GetPairingsResponse :datatype-) "rocon_interaction_msgs/GetPairingsResponse")
(setf (get rocon_interaction_msgs::GetPairingsResponse :definition-)
      "
---
Pairing[] pairings


================================================================================
MSG: rocon_interaction_msgs/Pairing
###############################################################
# Pairing rapp specification
###############################################################

# Unique name that represents this pairing. Note that you can
# have multiple configurations of a single rapp, so the rapp
# name alone is not enough to uniquely identify the pairing
string name

# Group to which this pairing belongs
string group

# ros resource name of the rapp, e.g. rocon_apps/talker
string rapp

###############################################################
# Customising the rapp launch instance
###############################################################

# Can load the default rapp description, but sometimes useful to
# override it to provide more human friendly information.
string description

# Whether or not this rapp should bringup/teardown an interaction
# with the launching of this rapp. If empty, no interaction is
# required, if non-empty, look for the specified interaction.
string requires_interaction

# Again, can load the default rapp icon, but may want to override it.
rocon_std_msgs/Icon icon

rocon_std_msgs/Remapping[] remappings

# Key value pairs representing rapp parameters
rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: rocon_std_msgs/Icon
# Used to idenfity the original package/filename resource this icon was/is to be loaded from
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
string resource_name

# Image data format.  \"jpeg\" or \"png\"
string format

# Image data.
uint8[] data
================================================================================
MSG: rocon_std_msgs/Remapping
# Describes your typical ros remapping

string remap_from
string remap_to

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
")



(provide :rocon_interaction_msgs/GetPairings "d29a833c93f116257b8e089a802ebf98")


