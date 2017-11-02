;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::GetInteraction)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'GetInteraction (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::GETINTERACTION")
  (make-package "ROCON_INTERACTION_MSGS::GETINTERACTION"))
(unless (find-package "ROCON_INTERACTION_MSGS::GETINTERACTIONREQUEST")
  (make-package "ROCON_INTERACTION_MSGS::GETINTERACTIONREQUEST"))
(unless (find-package "ROCON_INTERACTION_MSGS::GETINTERACTIONRESPONSE")
  (make-package "ROCON_INTERACTION_MSGS::GETINTERACTIONRESPONSE"))

(in-package "ROS")





(defclass rocon_interaction_msgs::GetInteractionRequest
  :super ros::object
  :slots (_hash ))

(defmethod rocon_interaction_msgs::GetInteractionRequest
  (:init
   (&key
    ((:hash __hash) 0)
    )
   (send-super :init)
   (setq _hash (round __hash))
   self)
  (:hash
   (&optional __hash)
   (if __hash (setq _hash __hash)) _hash)
  (:serialization-length
   ()
   (+
    ;; int32 _hash
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _hash
       (write-long _hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _hash
     (setq _hash (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rocon_interaction_msgs::GetInteractionResponse
  :super ros::object
  :slots (_result _interaction ))

(defmethod rocon_interaction_msgs::GetInteractionResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:interaction __interaction) (instance rocon_interaction_msgs::Interaction :init))
    )
   (send-super :init)
   (setq _result __result)
   (setq _interaction __interaction)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:interaction
   (&rest __interaction)
   (if (keywordp (car __interaction))
       (send* _interaction __interaction)
     (progn
       (if __interaction (setq _interaction (car __interaction)))
       _interaction)))
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; rocon_interaction_msgs/Interaction _interaction
    (send _interaction :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; rocon_interaction_msgs/Interaction _interaction
       (send _interaction :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; rocon_interaction_msgs/Interaction _interaction
     (send _interaction :deserialize buf ptr-) (incf ptr- (send _interaction :serialization-length))
   ;;
   self)
  )

(defclass rocon_interaction_msgs::GetInteraction
  :super ros::object
  :slots ())

(setf (get rocon_interaction_msgs::GetInteraction :md5sum-) "99b98a8efcdde2712b480273db0f877e")
(setf (get rocon_interaction_msgs::GetInteraction :datatype-) "rocon_interaction_msgs/GetInteraction")
(setf (get rocon_interaction_msgs::GetInteraction :request) rocon_interaction_msgs::GetInteractionRequest)
(setf (get rocon_interaction_msgs::GetInteraction :response) rocon_interaction_msgs::GetInteractionResponse)

(defmethod rocon_interaction_msgs::GetInteractionRequest
  (:response () (instance rocon_interaction_msgs::GetInteractionResponse :init)))

(setf (get rocon_interaction_msgs::GetInteractionRequest :md5sum-) "99b98a8efcdde2712b480273db0f877e")
(setf (get rocon_interaction_msgs::GetInteractionRequest :datatype-) "rocon_interaction_msgs/GetInteractionRequest")
(setf (get rocon_interaction_msgs::GetInteractionRequest :definition-)
      "




int32 hash





---

bool result
Interaction interaction


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

(setf (get rocon_interaction_msgs::GetInteractionResponse :md5sum-) "99b98a8efcdde2712b480273db0f877e")
(setf (get rocon_interaction_msgs::GetInteractionResponse :datatype-) "rocon_interaction_msgs/GetInteractionResponse")
(setf (get rocon_interaction_msgs::GetInteractionResponse :definition-)
      "




int32 hash





---

bool result
Interaction interaction


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



(provide :rocon_interaction_msgs/GetInteraction "99b98a8efcdde2712b480273db0f877e")


