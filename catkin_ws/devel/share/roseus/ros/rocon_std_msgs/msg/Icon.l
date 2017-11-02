;; Auto-generated. Do not edit!


(when (boundp 'rocon_std_msgs::Icon)
  (if (not (find-package "ROCON_STD_MSGS"))
    (make-package "ROCON_STD_MSGS"))
  (shadow 'Icon (find-package "ROCON_STD_MSGS")))
(unless (find-package "ROCON_STD_MSGS::ICON")
  (make-package "ROCON_STD_MSGS::ICON"))

(in-package "ROS")
;;//! \htmlinclude Icon.msg.html


(defclass rocon_std_msgs::Icon
  :super ros::object
  :slots (_resource_name _format _data ))

(defmethod rocon_std_msgs::Icon
  (:init
   (&key
    ((:resource_name __resource_name) "")
    ((:format __format) "")
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _resource_name (string __resource_name))
   (setq _format (string __format))
   (setq _data __data)
   self)
  (:resource_name
   (&optional __resource_name)
   (if __resource_name (setq _resource_name __resource_name)) _resource_name)
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _resource_name
    4 (length _resource_name)
    ;; string _format
    4 (length _format)
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _resource_name
       (write-long (length _resource_name) s) (princ _resource_name s)
     ;; string _format
       (write-long (length _format) s) (princ _format s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _resource_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _resource_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get rocon_std_msgs::Icon :md5sum-) "2ddacfedd31b6da3f723794afbd3b9de")
(setf (get rocon_std_msgs::Icon :datatype-) "rocon_std_msgs/Icon")
(setf (get rocon_std_msgs::Icon :definition-)
      "# Used to idenfity the original package/filename resource this icon was/is to be loaded from
# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.
string resource_name

# Image data format.  \"jpeg\" or \"png\"
string format

# Image data.
uint8[] data
")



(provide :rocon_std_msgs/Icon "2ddacfedd31b6da3f723794afbd3b9de")


