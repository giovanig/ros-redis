;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::GetInteractions)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'GetInteractions (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::GETINTERACTIONS")
  (make-package "ROCON_INTERACTION_MSGS::GETINTERACTIONS"))
(unless (find-package "ROCON_INTERACTION_MSGS::GETINTERACTIONSREQUEST")
  (make-package "ROCON_INTERACTION_MSGS::GETINTERACTIONSREQUEST"))
(unless (find-package "ROCON_INTERACTION_MSGS::GETINTERACTIONSRESPONSE")
  (make-package "ROCON_INTERACTION_MSGS::GETINTERACTIONSRESPONSE"))

(in-package "ROS")





(defclass rocon_interaction_msgs::GetInteractionsRequest
  :super ros::object
  :slots (_groups _uri _runtime_pairing_requirements ))

(defmethod rocon_interaction_msgs::GetInteractionsRequest
  (:init
   (&key
    ((:groups __groups) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:uri __uri) "")
    ((:runtime_pairing_requirements __runtime_pairing_requirements) nil)
    )
   (send-super :init)
   (setq _groups __groups)
   (setq _uri (string __uri))
   (setq _runtime_pairing_requirements __runtime_pairing_requirements)
   self)
  (:groups
   (&optional __groups)
   (if __groups (setq _groups __groups)) _groups)
  (:uri
   (&optional __uri)
   (if __uri (setq _uri __uri)) _uri)
  (:runtime_pairing_requirements
   (&optional __runtime_pairing_requirements)
   (if __runtime_pairing_requirements (setq _runtime_pairing_requirements __runtime_pairing_requirements)) _runtime_pairing_requirements)
  (:serialization-length
   ()
   (+
    ;; string[] _groups
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _groups)) 4
    ;; string _uri
    4 (length _uri)
    ;; bool _runtime_pairing_requirements
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _groups
     (write-long (length _groups) s)
     (dolist (elem _groups)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _uri
       (write-long (length _uri) s) (princ _uri s)
     ;; bool _runtime_pairing_requirements
       (if _runtime_pairing_requirements (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _groups (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _groups i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _runtime_pairing_requirements
     (setq _runtime_pairing_requirements (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rocon_interaction_msgs::GetInteractionsResponse
  :super ros::object
  :slots (_interactions ))

(defmethod rocon_interaction_msgs::GetInteractionsResponse
  (:init
   (&key
    ((:interactions __interactions) (let (r) (dotimes (i 0) (push (instance rocon_interaction_msgs::Interaction :init) r)) r))
    )
   (send-super :init)
   (setq _interactions __interactions)
   self)
  (:interactions
   (&rest __interactions)
   (if (keywordp (car __interactions))
       (send* _interactions __interactions)
     (progn
       (if __interactions (setq _interactions (car __interactions)))
       _interactions)))
  (:serialization-length
   ()
   (+
    ;; rocon_interaction_msgs/Interaction[] _interactions
    (apply #'+ (send-all _interactions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rocon_interaction_msgs/Interaction[] _interactions
     (write-long (length _interactions) s)
     (dolist (elem _interactions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rocon_interaction_msgs/Interaction[] _interactions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _interactions (let (r) (dotimes (i n) (push (instance rocon_interaction_msgs::Interaction :init) r)) r))
     (dolist (elem- _interactions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass rocon_interaction_msgs::GetInteractions
  :super ros::object
  :slots ())

(setf (get rocon_interaction_msgs::GetInteractions :md5sum-) "29cae877616bc28e4027dbb93af2e9bd")
(setf (get rocon_interaction_msgs::GetInteractions :datatype-) "rocon_interaction_msgs/GetInteractions")
(setf (get rocon_interaction_msgs::GetInteractions :request) rocon_interaction_msgs::GetInteractionsRequest)
(setf (get rocon_interaction_msgs::GetInteractions :response) rocon_interaction_msgs::GetInteractionsResponse)

(defmethod rocon_interaction_msgs::GetInteractionsRequest
  (:response () (instance rocon_interaction_msgs::GetInteractionsResponse :init)))

(setf (get rocon_interaction_msgs::GetInteractionsRequest :md5sum-) "29cae877616bc28e4027dbb93af2e9bd")
(setf (get rocon_interaction_msgs::GetInteractionsRequest :datatype-) "rocon_interaction_msgs/GetInteractionsRequest")
(setf (get rocon_interaction_msgs::GetInteractionsRequest :definition-)
      "




string[] groups



string uri



bool runtime_pairing_requirements
---
Interaction[] interactions


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

(setf (get rocon_interaction_msgs::GetInteractionsResponse :md5sum-) "29cae877616bc28e4027dbb93af2e9bd")
(setf (get rocon_interaction_msgs::GetInteractionsResponse :datatype-) "rocon_interaction_msgs/GetInteractionsResponse")
(setf (get rocon_interaction_msgs::GetInteractionsResponse :definition-)
      "




string[] groups



string uri



bool runtime_pairing_requirements
---
Interaction[] interactions


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



(provide :rocon_interaction_msgs/GetInteractions "29cae877616bc28e4027dbb93af2e9bd")


