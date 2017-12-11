;; Auto-generated. Do not edit!


(when (boundp 'anm_msgs::RODElement)
  (if (not (find-package "ANM_MSGS"))
    (make-package "ANM_MSGS"))
  (shadow 'RODElement (find-package "ANM_MSGS")))
(unless (find-package "ANM_MSGS::RODELEMENT")
  (make-package "ANM_MSGS::RODELEMENT"))

(in-package "ROS")
;;//! \htmlinclude RODElement.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass anm_msgs::RODElement
  :super ros::object
  :slots (_header _element_type _float_value _string_value _string_array ))

(defmethod anm_msgs::RODElement
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:element_type __element_type) "")
    ((:float_value __float_value) 0.0)
    ((:string_value __string_value) "")
    ((:string_array __string_array) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _element_type (string __element_type))
   (setq _float_value (float __float_value))
   (setq _string_value (string __string_value))
   (setq _string_array __string_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:element_type
   (&optional __element_type)
   (if __element_type (setq _element_type __element_type)) _element_type)
  (:float_value
   (&optional __float_value)
   (if __float_value (setq _float_value __float_value)) _float_value)
  (:string_value
   (&optional __string_value)
   (if __string_value (setq _string_value __string_value)) _string_value)
  (:string_array
   (&optional __string_array)
   (if __string_array (setq _string_array __string_array)) _string_array)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _element_type
    4 (length _element_type)
    ;; float32 _float_value
    4
    ;; string _string_value
    4 (length _string_value)
    ;; string[] _string_array
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _string_array)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _element_type
       (write-long (length _element_type) s) (princ _element_type s)
     ;; float32 _float_value
       (sys::poke _float_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _string_value
       (write-long (length _string_value) s) (princ _string_value s)
     ;; string[] _string_array
     (write-long (length _string_array) s)
     (dolist (elem _string_array)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _element_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _element_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _float_value
     (setq _float_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _string_value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _string_value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _string_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _string_array (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _string_array i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get anm_msgs::RODElement :md5sum-) "7b81e47d437c4534e895e59adcc7f186")
(setf (get anm_msgs::RODElement :datatype-) "anm_msgs/RODElement")
(setf (get anm_msgs::RODElement :definition-)
      "Header header

# Type/classification of element
string element_type

# Different values depending on the element type
float32 float_value
string string_value
string[] string_array

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :anm_msgs/RODElement "7b81e47d437c4534e895e59adcc7f186")


