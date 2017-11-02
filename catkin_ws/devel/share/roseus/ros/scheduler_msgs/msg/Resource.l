;; Auto-generated. Do not edit!


(when (boundp 'scheduler_msgs::Resource)
  (if (not (find-package "SCHEDULER_MSGS"))
    (make-package "SCHEDULER_MSGS"))
  (shadow 'Resource (find-package "SCHEDULER_MSGS")))
(unless (find-package "SCHEDULER_MSGS::RESOURCE")
  (make-package "SCHEDULER_MSGS::RESOURCE"))

(in-package "ROS")
;;//! \htmlinclude Resource.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass scheduler_msgs::Resource
  :super ros::object
  :slots (_rapp _id _uri _remappings _parameters ))

(defmethod scheduler_msgs::Resource
  (:init
   (&key
    ((:rapp __rapp) "")
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:uri __uri) "")
    ((:remappings __remappings) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::Remapping :init) r)) r))
    ((:parameters __parameters) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _rapp (string __rapp))
   (setq _id __id)
   (setq _uri (string __uri))
   (setq _remappings __remappings)
   (setq _parameters __parameters)
   self)
  (:rapp
   (&optional __rapp)
   (if __rapp (setq _rapp __rapp)) _rapp)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:uri
   (&optional __uri)
   (if __uri (setq _uri __uri)) _uri)
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
    ;; string _rapp
    4 (length _rapp)
    ;; uuid_msgs/UniqueID _id
    (send _id :serialization-length)
    ;; string _uri
    4 (length _uri)
    ;; rocon_std_msgs/Remapping[] _remappings
    (apply #'+ (send-all _remappings :serialization-length)) 4
    ;; rocon_std_msgs/KeyValue[] _parameters
    (apply #'+ (send-all _parameters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _rapp
       (write-long (length _rapp) s) (princ _rapp s)
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; string _uri
       (write-long (length _uri) s) (princ _uri s)
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
   ;; string _rapp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rapp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uuid_msgs/UniqueID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; string _uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get scheduler_msgs::Resource :md5sum-) "754fd8dd757d06fa1564264b85a21995")
(setf (get scheduler_msgs::Resource :datatype-) "scheduler_msgs/Resource")
(setf (get scheduler_msgs::Resource :definition-)
      "### ROCON resource request or response.
#
#   A scheduler_msgs/Request message includes one Resource message for
#   each desired resource.  The scheduler responds using this same
#   message to identify exactly what corresponding resource it has
#   granted.

# This is usually a uniquely identifying ros_package/rapp name
# identifier, which is unique because ros packages are unique.
string rapp

# Unique identifier assigned by the requester to track resources
# assigned in the scheduler feedback.
uuid_msgs/UniqueID id

# Uniform Resource Identifier for the platform.  ROCON defines two
# kinds of URI strings:
#
# 1) A \"resource description URI\" is a canonical string for a specific
#    device.  All components are fully resolved to their most specific
#    values, like:
#
#      \"rocon:/turtlebot/dude3/hydro/precise\"
#
#    The scheduler provides fully resolved resource description URIs
#    in its feedback for requests that have been granted.
#
# 2) A \"request URI\" may provide a similar descriptive representation,
#    or may include patterns for matching multiple alternative
#    platforms.  Omitted or '*' patterns match any valid value:
#
#      \"\"                               # (empty string): any platform
#      \"rocon:/turtlebot\"               # any turtlebot
#      \"rocon:/(turtlebot|segbot)\"      # any robot of either type
#      \"rocon:/*/dude3\"                 # any device named dude3
#      \"rocon:/*/*/ros/ubuntu\"          # any ROS Ubuntu platform
#
string uri

# Remappings which get passed on for starting the rapps. Also potentially for
# more esoteric use cases such as checking whether an app is sharable.
rocon_std_msgs/Remapping[] remappings
rocon_std_msgs/KeyValue[] parameters

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

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



(provide :scheduler_msgs/Resource "754fd8dd757d06fa1564264b85a21995")


