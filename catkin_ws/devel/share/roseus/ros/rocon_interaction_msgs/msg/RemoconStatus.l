;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::RemoconStatus)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'RemoconStatus (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::REMOCONSTATUS")
  (make-package "ROCON_INTERACTION_MSGS::REMOCONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RemoconStatus.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(defclass rocon_interaction_msgs::RemoconStatus
  :super ros::object
  :slots (_platform_info _uuid _running_interactions _version ))

(defmethod rocon_interaction_msgs::RemoconStatus
  (:init
   (&key
    ((:platform_info __platform_info) (instance rocon_std_msgs::MasterInfo :init))
    ((:uuid __uuid) "")
    ((:running_interactions __running_interactions) (make-array 0 :initial-element 0 :element-type :integer))
    ((:version __version) "")
    )
   (send-super :init)
   (setq _platform_info __platform_info)
   (setq _uuid (string __uuid))
   (setq _running_interactions __running_interactions)
   (setq _version (string __version))
   self)
  (:platform_info
   (&rest __platform_info)
   (if (keywordp (car __platform_info))
       (send* _platform_info __platform_info)
     (progn
       (if __platform_info (setq _platform_info (car __platform_info)))
       _platform_info)))
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:running_interactions
   (&optional __running_interactions)
   (if __running_interactions (setq _running_interactions __running_interactions)) _running_interactions)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:serialization-length
   ()
   (+
    ;; rocon_std_msgs/MasterInfo _platform_info
    (send _platform_info :serialization-length)
    ;; string _uuid
    4 (length _uuid)
    ;; int32[] _running_interactions
    (* 4    (length _running_interactions)) 4
    ;; string _version
    4 (length _version)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rocon_std_msgs/MasterInfo _platform_info
       (send _platform_info :serialize s)
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; int32[] _running_interactions
     (write-long (length _running_interactions) s)
     (dotimes (i (length _running_interactions))
       (write-long (elt _running_interactions i) s)
       )
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rocon_std_msgs/MasterInfo _platform_info
     (send _platform_info :deserialize buf ptr-) (incf ptr- (send _platform_info :serialization-length))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _running_interactions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _running_interactions (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _running_interactions i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rocon_interaction_msgs::RemoconStatus :md5sum-) "a586408ad56a017fbadae95562c0c018")
(setf (get rocon_interaction_msgs::RemoconStatus :datatype-) "rocon_interaction_msgs/RemoconStatus")
(setf (get rocon_interaction_msgs::RemoconStatus :definition-)
      "# Used by the remocons to inform the concert of it's current status. They should
# publish this as a latched publisher.

rocon_std_msgs/MasterInfo platform_info
# The remocon id
# This should be a '32 character Type 4 uuid hex string'
string uuid


# We should be using this, but java can't handle the type, reintegrate when we bugfix.
# uuid_msgs/UniqueID[] running_interactions

# This is a crc32 hash code we use because of the above.
int32[] running_interactions

# rocon version compatibility identifier (used when connecting to concerts)
string version

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



(provide :rocon_interaction_msgs/RemoconStatus "a586408ad56a017fbadae95562c0c018")


