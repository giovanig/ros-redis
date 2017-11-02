;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::Interaction)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'Interaction (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::INTERACTION")
  (make-package "ROCON_INTERACTION_MSGS::INTERACTION"))

(in-package "ROS")
;;//! \htmlinclude Interaction.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(intern "*UNLIMITED_INTERACTIONS*" (find-package "ROCON_INTERACTION_MSGS::INTERACTION"))
(shadow '*UNLIMITED_INTERACTIONS* (find-package "ROCON_INTERACTION_MSGS::INTERACTION"))
(defconstant rocon_interaction_msgs::Interaction::*UNLIMITED_INTERACTIONS* -1)
(defclass rocon_interaction_msgs::Interaction
  :super ros::object
  :slots (_name _command _compatibility _group _description _icon _namespace _remappings _parameters _max _bringup_pairing _teardown_pairing _required_pairings _hidden _hash ))

(defmethod rocon_interaction_msgs::Interaction
  (:init
   (&key
    ((:name __name) "")
    ((:command __command) "")
    ((:compatibility __compatibility) "")
    ((:group __group) "")
    ((:description __description) "")
    ((:icon __icon) (instance rocon_std_msgs::Icon :init))
    ((:namespace __namespace) "")
    ((:remappings __remappings) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::Remapping :init) r)) r))
    ((:parameters __parameters) "")
    ((:max __max) 0)
    ((:bringup_pairing __bringup_pairing) nil)
    ((:teardown_pairing __teardown_pairing) nil)
    ((:required_pairings __required_pairings) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:hidden __hidden) nil)
    ((:hash __hash) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _command (string __command))
   (setq _compatibility (string __compatibility))
   (setq _group (string __group))
   (setq _description (string __description))
   (setq _icon __icon)
   (setq _namespace (string __namespace))
   (setq _remappings __remappings)
   (setq _parameters (string __parameters))
   (setq _max (round __max))
   (setq _bringup_pairing __bringup_pairing)
   (setq _teardown_pairing __teardown_pairing)
   (setq _required_pairings __required_pairings)
   (setq _hidden __hidden)
   (setq _hash (round __hash))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:compatibility
   (&optional __compatibility)
   (if __compatibility (setq _compatibility __compatibility)) _compatibility)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:icon
   (&rest __icon)
   (if (keywordp (car __icon))
       (send* _icon __icon)
     (progn
       (if __icon (setq _icon (car __icon)))
       _icon)))
  (:namespace
   (&optional __namespace)
   (if __namespace (setq _namespace __namespace)) _namespace)
  (:remappings
   (&rest __remappings)
   (if (keywordp (car __remappings))
       (send* _remappings __remappings)
     (progn
       (if __remappings (setq _remappings (car __remappings)))
       _remappings)))
  (:parameters
   (&optional __parameters)
   (if __parameters (setq _parameters __parameters)) _parameters)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:bringup_pairing
   (&optional __bringup_pairing)
   (if __bringup_pairing (setq _bringup_pairing __bringup_pairing)) _bringup_pairing)
  (:teardown_pairing
   (&optional __teardown_pairing)
   (if __teardown_pairing (setq _teardown_pairing __teardown_pairing)) _teardown_pairing)
  (:required_pairings
   (&optional __required_pairings)
   (if __required_pairings (setq _required_pairings __required_pairings)) _required_pairings)
  (:hidden
   (&optional __hidden)
   (if __hidden (setq _hidden __hidden)) _hidden)
  (:hash
   (&optional __hash)
   (if __hash (setq _hash __hash)) _hash)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _command
    4 (length _command)
    ;; string _compatibility
    4 (length _compatibility)
    ;; string _group
    4 (length _group)
    ;; string _description
    4 (length _description)
    ;; rocon_std_msgs/Icon _icon
    (send _icon :serialization-length)
    ;; string _namespace
    4 (length _namespace)
    ;; rocon_std_msgs/Remapping[] _remappings
    (apply #'+ (send-all _remappings :serialization-length)) 4
    ;; string _parameters
    4 (length _parameters)
    ;; int32 _max
    4
    ;; bool _bringup_pairing
    1
    ;; bool _teardown_pairing
    1
    ;; string[] _required_pairings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _required_pairings)) 4
    ;; bool _hidden
    1
    ;; int32 _hash
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; string _compatibility
       (write-long (length _compatibility) s) (princ _compatibility s)
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; rocon_std_msgs/Icon _icon
       (send _icon :serialize s)
     ;; string _namespace
       (write-long (length _namespace) s) (princ _namespace s)
     ;; rocon_std_msgs/Remapping[] _remappings
     (write-long (length _remappings) s)
     (dolist (elem _remappings)
       (send elem :serialize s)
       )
     ;; string _parameters
       (write-long (length _parameters) s) (princ _parameters s)
     ;; int32 _max
       (write-long _max s)
     ;; bool _bringup_pairing
       (if _bringup_pairing (write-byte -1 s) (write-byte 0 s))
     ;; bool _teardown_pairing
       (if _teardown_pairing (write-byte -1 s) (write-byte 0 s))
     ;; string[] _required_pairings
     (write-long (length _required_pairings) s)
     (dolist (elem _required_pairings)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _hidden
       (if _hidden (write-byte -1 s) (write-byte 0 s))
     ;; int32 _hash
       (write-long _hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _compatibility
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _compatibility (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_std_msgs/Icon _icon
     (send _icon :deserialize buf ptr-) (incf ptr- (send _icon :serialization-length))
   ;; string _namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_std_msgs/Remapping[] _remappings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remappings (let (r) (dotimes (i n) (push (instance rocon_std_msgs::Remapping :init) r)) r))
     (dolist (elem- _remappings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _parameters
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parameters (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _max
     (setq _max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _bringup_pairing
     (setq _bringup_pairing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _teardown_pairing
     (setq _teardown_pairing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _required_pairings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _required_pairings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _required_pairings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _hidden
     (setq _hidden (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _hash
     (setq _hash (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rocon_interaction_msgs::Interaction :md5sum-) "654684c49f3d36d7af7c76c44f9b80e4")
(setf (get rocon_interaction_msgs::Interaction :datatype-) "rocon_interaction_msgs/Interaction")
(setf (get rocon_interaction_msgs::Interaction :definition-)
      "###############################################################
# Required Specifications
###############################################################

# User friendly version of the name. Useful to be customised
# differently from the name for either 1) branding, or 2) because
# some names are complicated visually (e.g. android names).
string name

# This should be the string required to install and execute
# the interaction from a remocon. 
# - android app : the intent action name (e.g. com.github.rosjava.android_apps.listener.Listener)
# - web app : the url
# - roslaunch : package resource name (e.g. gopher_meta/minimal.launch)
# - rosrun : package resource name (e.g. gopher_meta/enable_motors)
# - global : just the executable (e.g. rocon_master_info)
string command

# A rocon uri string denoting the platforms this interaction
# is compatible with
string compatibility

###############################################################
# Optional Specifications
###############################################################

# The group this solution has configured the interaction for.
string group

# Should be a default for the interaction, but sometimes useful to
# override it to provide more human friendly information.
string description

# Again, should exist a default, but may want to override it.
rocon_std_msgs/Icon icon

# The namespace that this interaction will be associated
# with. Interfaces from the interaction will be automatically pushed
# into this namespace (for concerts it will be typically
# used by the services to push interfaces into /services/_service_name_).
# It is up to the user to make sure this is unique to avoid
# potential conflicts.
string namespace

# Any remappings that need to be applied
rocon_std_msgs/Remapping[] remappings

# Yaml string representing parameters for the interaction
string parameters

# Maximum number of permitted connections (-1 = any)
int32 UNLIMITED_INTERACTIONS = -1
int32 max

# If it should be paired with launch configurations via rapps
bool bringup_pairing
bool teardown_pairing
string[] required_pairings

# whether it should be a hidden icon in a remocon
bool hidden

###############################################################
# Parameters finalised by the interactions manager
###############################################################

# This is a crc32 hash code for the name-group-command
# triple that uniquely identifies this interaction.
# crc32 gets a few collisions, so we should be careful of that.
# It is used by the nfc android auto-launching program so we can
# compactify the request in the url sent by the nfc to the autolauncher.
int32 hash


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

")



(provide :rocon_interaction_msgs/Interaction "654684c49f3d36d7af7c76c44f9b80e4")


