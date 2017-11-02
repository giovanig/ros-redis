;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::SetInteractions)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'SetInteractions (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::SETINTERACTIONS")
  (make-package "ROCON_INTERACTION_MSGS::SETINTERACTIONS"))
(unless (find-package "ROCON_INTERACTION_MSGS::SETINTERACTIONSREQUEST")
  (make-package "ROCON_INTERACTION_MSGS::SETINTERACTIONSREQUEST"))
(unless (find-package "ROCON_INTERACTION_MSGS::SETINTERACTIONSRESPONSE")
  (make-package "ROCON_INTERACTION_MSGS::SETINTERACTIONSRESPONSE"))

(in-package "ROS")





(defclass rocon_interaction_msgs::SetInteractionsRequest
  :super ros::object
  :slots (_pairings _interactions _load ))

(defmethod rocon_interaction_msgs::SetInteractionsRequest
  (:init
   (&key
    ((:pairings __pairings) (let (r) (dotimes (i 0) (push (instance rocon_interaction_msgs::Pairing :init) r)) r))
    ((:interactions __interactions) (let (r) (dotimes (i 0) (push (instance rocon_interaction_msgs::Interaction :init) r)) r))
    ((:load __load) nil)
    )
   (send-super :init)
   (setq _pairings __pairings)
   (setq _interactions __interactions)
   (setq _load __load)
   self)
  (:pairings
   (&rest __pairings)
   (if (keywordp (car __pairings))
       (send* _pairings __pairings)
     (progn
       (if __pairings (setq _pairings (car __pairings)))
       _pairings)))
  (:interactions
   (&rest __interactions)
   (if (keywordp (car __interactions))
       (send* _interactions __interactions)
     (progn
       (if __interactions (setq _interactions (car __interactions)))
       _interactions)))
  (:load
   (&optional __load)
   (if __load (setq _load __load)) _load)
  (:serialization-length
   ()
   (+
    ;; rocon_interaction_msgs/Pairing[] _pairings
    (apply #'+ (send-all _pairings :serialization-length)) 4
    ;; rocon_interaction_msgs/Interaction[] _interactions
    (apply #'+ (send-all _interactions :serialization-length)) 4
    ;; bool _load
    1
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
     ;; rocon_interaction_msgs/Interaction[] _interactions
     (write-long (length _interactions) s)
     (dolist (elem _interactions)
       (send elem :serialize s)
       )
     ;; bool _load
       (if _load (write-byte -1 s) (write-byte 0 s))
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
   ;; rocon_interaction_msgs/Interaction[] _interactions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _interactions (let (r) (dotimes (i n) (push (instance rocon_interaction_msgs::Interaction :init) r)) r))
     (dolist (elem- _interactions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _load
     (setq _load (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rocon_interaction_msgs::SetInteractionsResponse
  :super ros::object
  :slots (_result ))

(defmethod rocon_interaction_msgs::SetInteractionsResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rocon_interaction_msgs::SetInteractions
  :super ros::object
  :slots ())

(setf (get rocon_interaction_msgs::SetInteractions :md5sum-) "d25434387362e7f44070be30fb6f2590")
(setf (get rocon_interaction_msgs::SetInteractions :datatype-) "rocon_interaction_msgs/SetInteractions")
(setf (get rocon_interaction_msgs::SetInteractions :request) rocon_interaction_msgs::SetInteractionsRequest)
(setf (get rocon_interaction_msgs::SetInteractions :response) rocon_interaction_msgs::SetInteractionsResponse)

(defmethod rocon_interaction_msgs::SetInteractionsRequest
  (:response () (instance rocon_interaction_msgs::SetInteractionsResponse :init)))

(setf (get rocon_interaction_msgs::SetInteractionsRequest :md5sum-) "d25434387362e7f44070be30fb6f2590")
(setf (get rocon_interaction_msgs::SetInteractionsRequest :datatype-) "rocon_interaction_msgs/SetInteractionsRequest")
(setf (get rocon_interaction_msgs::SetInteractionsRequest :definition-)
      "

Pairing[] pairings
Interaction[] interactions


bool load


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
string value
================================================================================
MSG: rocon_interaction_msgs/Interaction
###############################################################
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

---

bool result



")

(setf (get rocon_interaction_msgs::SetInteractionsResponse :md5sum-) "d25434387362e7f44070be30fb6f2590")
(setf (get rocon_interaction_msgs::SetInteractionsResponse :datatype-) "rocon_interaction_msgs/SetInteractionsResponse")
(setf (get rocon_interaction_msgs::SetInteractionsResponse :definition-)
      "

Pairing[] pairings
Interaction[] interactions


bool load


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
string value
================================================================================
MSG: rocon_interaction_msgs/Interaction
###############################################################
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

---

bool result



")



(provide :rocon_interaction_msgs/SetInteractions "d25434387362e7f44070be30fb6f2590")


