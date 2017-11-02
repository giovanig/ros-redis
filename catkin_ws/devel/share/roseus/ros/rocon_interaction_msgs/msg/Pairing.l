;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::Pairing)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'Pairing (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::PAIRING")
  (make-package "ROCON_INTERACTION_MSGS::PAIRING"))

(in-package "ROS")
;;//! \htmlinclude Pairing.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(defclass rocon_interaction_msgs::Pairing
  :super ros::object
  :slots (_name _group _rapp _description _requires_interaction _icon _remappings _parameters ))

(defmethod rocon_interaction_msgs::Pairing
  (:init
   (&key
    ((:name __name) "")
    ((:group __group) "")
    ((:rapp __rapp) "")
    ((:description __description) "")
    ((:requires_interaction __requires_interaction) "")
    ((:icon __icon) (instance rocon_std_msgs::Icon :init))
    ((:remappings __remappings) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::Remapping :init) r)) r))
    ((:parameters __parameters) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _group (string __group))
   (setq _rapp (string __rapp))
   (setq _description (string __description))
   (setq _requires_interaction (string __requires_interaction))
   (setq _icon __icon)
   (setq _remappings __remappings)
   (setq _parameters __parameters)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:rapp
   (&optional __rapp)
   (if __rapp (setq _rapp __rapp)) _rapp)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:requires_interaction
   (&optional __requires_interaction)
   (if __requires_interaction (setq _requires_interaction __requires_interaction)) _requires_interaction)
  (:icon
   (&rest __icon)
   (if (keywordp (car __icon))
       (send* _icon __icon)
     (progn
       (if __icon (setq _icon (car __icon)))
       _icon)))
  (:remappings
   (&rest __remappings)
   (if (keywordp (car __remappings))
       (send* _remappings __remappings)
     (progn
       (if __remappings (setq _remappings (car __remappings)))
       _remappings)))
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
    ;; string _name
    4 (length _name)
    ;; string _group
    4 (length _group)
    ;; string _rapp
    4 (length _rapp)
    ;; string _description
    4 (length _description)
    ;; string _requires_interaction
    4 (length _requires_interaction)
    ;; rocon_std_msgs/Icon _icon
    (send _icon :serialization-length)
    ;; rocon_std_msgs/Remapping[] _remappings
    (apply #'+ (send-all _remappings :serialization-length)) 4
    ;; rocon_std_msgs/KeyValue[] _parameters
    (apply #'+ (send-all _parameters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; string _rapp
       (write-long (length _rapp) s) (princ _rapp s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _requires_interaction
       (write-long (length _requires_interaction) s) (princ _requires_interaction s)
     ;; rocon_std_msgs/Icon _icon
       (send _icon :serialize s)
     ;; rocon_std_msgs/Remapping[] _remappings
     (write-long (length _remappings) s)
     (dolist (elem _remappings)
       (send elem :serialize s)
       )
     ;; rocon_std_msgs/KeyValue[] _parameters
     (write-long (length _parameters) s)
     (dolist (elem _parameters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rapp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rapp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _requires_interaction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _requires_interaction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_std_msgs/Icon _icon
     (send _icon :deserialize buf ptr-) (incf ptr- (send _icon :serialization-length))
   ;; rocon_std_msgs/Remapping[] _remappings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remappings (let (r) (dotimes (i n) (push (instance rocon_std_msgs::Remapping :init) r)) r))
     (dolist (elem- _remappings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rocon_std_msgs/KeyValue[] _parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameters (let (r) (dotimes (i n) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
     (dolist (elem- _parameters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rocon_interaction_msgs::Pairing :md5sum-) "1dae0009f23a860ae843f68089b76ed0")
(setf (get rocon_interaction_msgs::Pairing :datatype-) "rocon_interaction_msgs/Pairing")
(setf (get rocon_interaction_msgs::Pairing :definition-)
      "###############################################################
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
string value
")



(provide :rocon_interaction_msgs/Pairing "1dae0009f23a860ae843f68089b76ed0")


