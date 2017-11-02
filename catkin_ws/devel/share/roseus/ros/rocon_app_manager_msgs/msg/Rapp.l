;; Auto-generated. Do not edit!


(when (boundp 'rocon_app_manager_msgs::Rapp)
  (if (not (find-package "ROCON_APP_MANAGER_MSGS"))
    (make-package "ROCON_APP_MANAGER_MSGS"))
  (shadow 'Rapp (find-package "ROCON_APP_MANAGER_MSGS")))
(unless (find-package "ROCON_APP_MANAGER_MSGS::RAPP")
  (make-package "ROCON_APP_MANAGER_MSGS::RAPP"))

(in-package "ROS")
;;//! \htmlinclude Rapp.msg.html
(if (not (find-package "ROCON_STD_MSGS"))
  (ros::roseus-add-msgs "rocon_std_msgs"))


(defclass rocon_app_manager_msgs::Rapp
  :super ros::object
  :slots (_name _display_name _description _compatibility _status _implementations _preferred _icon _public_interface _public_parameters ))

(defmethod rocon_app_manager_msgs::Rapp
  (:init
   (&key
    ((:name __name) "")
    ((:display_name __display_name) "")
    ((:description __description) "")
    ((:compatibility __compatibility) "")
    ((:status __status) "")
    ((:implementations __implementations) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:preferred __preferred) "")
    ((:icon __icon) (instance rocon_std_msgs::Icon :init))
    ((:public_interface __public_interface) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    ((:public_parameters __public_parameters) (let (r) (dotimes (i 0) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _display_name (string __display_name))
   (setq _description (string __description))
   (setq _compatibility (string __compatibility))
   (setq _status (string __status))
   (setq _implementations __implementations)
   (setq _preferred (string __preferred))
   (setq _icon __icon)
   (setq _public_interface __public_interface)
   (setq _public_parameters __public_parameters)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:display_name
   (&optional __display_name)
   (if __display_name (setq _display_name __display_name)) _display_name)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:compatibility
   (&optional __compatibility)
   (if __compatibility (setq _compatibility __compatibility)) _compatibility)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:implementations
   (&optional __implementations)
   (if __implementations (setq _implementations __implementations)) _implementations)
  (:preferred
   (&optional __preferred)
   (if __preferred (setq _preferred __preferred)) _preferred)
  (:icon
   (&rest __icon)
   (if (keywordp (car __icon))
       (send* _icon __icon)
     (progn
       (if __icon (setq _icon (car __icon)))
       _icon)))
  (:public_interface
   (&rest __public_interface)
   (if (keywordp (car __public_interface))
       (send* _public_interface __public_interface)
     (progn
       (if __public_interface (setq _public_interface (car __public_interface)))
       _public_interface)))
  (:public_parameters
   (&rest __public_parameters)
   (if (keywordp (car __public_parameters))
       (send* _public_parameters __public_parameters)
     (progn
       (if __public_parameters (setq _public_parameters (car __public_parameters)))
       _public_parameters)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _display_name
    4 (length _display_name)
    ;; string _description
    4 (length _description)
    ;; string _compatibility
    4 (length _compatibility)
    ;; string _status
    4 (length _status)
    ;; string[] _implementations
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _implementations)) 4
    ;; string _preferred
    4 (length _preferred)
    ;; rocon_std_msgs/Icon _icon
    (send _icon :serialization-length)
    ;; rocon_std_msgs/KeyValue[] _public_interface
    (apply #'+ (send-all _public_interface :serialization-length)) 4
    ;; rocon_std_msgs/KeyValue[] _public_parameters
    (apply #'+ (send-all _public_parameters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _display_name
       (write-long (length _display_name) s) (princ _display_name s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _compatibility
       (write-long (length _compatibility) s) (princ _compatibility s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string[] _implementations
     (write-long (length _implementations) s)
     (dolist (elem _implementations)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _preferred
       (write-long (length _preferred) s) (princ _preferred s)
     ;; rocon_std_msgs/Icon _icon
       (send _icon :serialize s)
     ;; rocon_std_msgs/KeyValue[] _public_interface
     (write-long (length _public_interface) s)
     (dolist (elem _public_interface)
       (send elem :serialize s)
       )
     ;; rocon_std_msgs/KeyValue[] _public_parameters
     (write-long (length _public_parameters) s)
     (dolist (elem _public_parameters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _display_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _display_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _compatibility
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _compatibility (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _implementations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _implementations (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _implementations i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _preferred
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _preferred (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_std_msgs/Icon _icon
     (send _icon :deserialize buf ptr-) (incf ptr- (send _icon :serialization-length))
   ;; rocon_std_msgs/KeyValue[] _public_interface
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _public_interface (let (r) (dotimes (i n) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
     (dolist (elem- _public_interface)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rocon_std_msgs/KeyValue[] _public_parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _public_parameters (let (r) (dotimes (i n) (push (instance rocon_std_msgs::KeyValue :init) r)) r))
     (dolist (elem- _public_parameters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rocon_app_manager_msgs::Rapp :md5sum-) "0214a3ee298e9d3ae08c6ab15b8e910d")
(setf (get rocon_app_manager_msgs::Rapp :datatype-) "rocon_app_manager_msgs/Rapp")
(setf (get rocon_app_manager_msgs::Rapp :definition-)
      "# This is the message that gets published in list_rapps. Do not think of it as the
# 'rapp' definition (since that is quite varied -> ancestor, virtual, child, implementation)
# Rather it is the published list of rapps with the required information for the concert
# and some introspection.

# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)
string name
# user-friendly display name
string display_name
string description
# a rocon uri string indicating platform compatibility
string compatibility
string status

# a list of implementations
string[] implementations

# A preferred rapp for virtual rapp
string preferred

# icon for showing the app
rocon_std_msgs/Icon icon

# public interface and parameters
rocon_std_msgs/KeyValue[] public_interface
rocon_std_msgs/KeyValue[] public_parameters

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
MSG: rocon_std_msgs/KeyValue
string key
string value
")



(provide :rocon_app_manager_msgs/Rapp "0214a3ee298e9d3ae08c6ab15b8e910d")


