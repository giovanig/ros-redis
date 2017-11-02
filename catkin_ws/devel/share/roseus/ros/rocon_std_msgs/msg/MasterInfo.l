;; Auto-generated. Do not edit!


(when (boundp 'rocon_std_msgs::MasterInfo)
  (if (not (find-package "ROCON_STD_MSGS"))
    (make-package "ROCON_STD_MSGS"))
  (shadow 'MasterInfo (find-package "ROCON_STD_MSGS")))
(unless (find-package "ROCON_STD_MSGS::MASTERINFO")
  (make-package "ROCON_STD_MSGS::MASTERINFO"))

(in-package "ROS")
;;//! \htmlinclude MasterInfo.msg.html


(defclass rocon_std_msgs::MasterInfo
  :super ros::object
  :slots (_name _rocon_uri _description _icon _version ))

(defmethod rocon_std_msgs::MasterInfo
  (:init
   (&key
    ((:name __name) "")
    ((:rocon_uri __rocon_uri) "")
    ((:description __description) "")
    ((:icon __icon) (instance rocon_std_msgs::Icon :init))
    ((:version __version) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _rocon_uri (string __rocon_uri))
   (setq _description (string __description))
   (setq _icon __icon)
   (setq _version (string __version))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:rocon_uri
   (&optional __rocon_uri)
   (if __rocon_uri (setq _rocon_uri __rocon_uri)) _rocon_uri)
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
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _rocon_uri
    4 (length _rocon_uri)
    ;; string _description
    4 (length _description)
    ;; rocon_std_msgs/Icon _icon
    (send _icon :serialization-length)
    ;; string _version
    4 (length _version)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _rocon_uri
       (write-long (length _rocon_uri) s) (princ _rocon_uri s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; rocon_std_msgs/Icon _icon
       (send _icon :serialize s)
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rocon_uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rocon_uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_std_msgs/Icon _icon
     (send _icon :deserialize buf ptr-) (incf ptr- (send _icon :serialization-length))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rocon_std_msgs::MasterInfo :md5sum-) "e85613ae2e3faade6b77d94b4e0bf4bf")
(setf (get rocon_std_msgs::MasterInfo :datatype-) "rocon_std_msgs/MasterInfo")
(setf (get rocon_std_msgs::MasterInfo :definition-)
      "# Publish basic information about this master.

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



(provide :rocon_std_msgs/MasterInfo "e85613ae2e3faade6b77d94b4e0bf4bf")


