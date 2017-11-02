;; Auto-generated. Do not edit!


(when (boundp 'rocon_device_msgs::HueArray)
  (if (not (find-package "ROCON_DEVICE_MSGS"))
    (make-package "ROCON_DEVICE_MSGS"))
  (shadow 'HueArray (find-package "ROCON_DEVICE_MSGS")))
(unless (find-package "ROCON_DEVICE_MSGS::HUEARRAY")
  (make-package "ROCON_DEVICE_MSGS::HUEARRAY"))

(in-package "ROS")
;;//! \htmlinclude HueArray.msg.html


(defclass rocon_device_msgs::HueArray
  :super ros::object
  :slots (_hue_list ))

(defmethod rocon_device_msgs::HueArray
  (:init
   (&key
    ((:hue_list __hue_list) (let (r) (dotimes (i 0) (push (instance rocon_device_msgs::Hue :init) r)) r))
    )
   (send-super :init)
   (setq _hue_list __hue_list)
   self)
  (:hue_list
   (&rest __hue_list)
   (if (keywordp (car __hue_list))
       (send* _hue_list __hue_list)
     (progn
       (if __hue_list (setq _hue_list (car __hue_list)))
       _hue_list)))
  (:serialization-length
   ()
   (+
    ;; rocon_device_msgs/Hue[] _hue_list
    (apply #'+ (send-all _hue_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rocon_device_msgs/Hue[] _hue_list
     (write-long (length _hue_list) s)
     (dolist (elem _hue_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rocon_device_msgs/Hue[] _hue_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hue_list (let (r) (dotimes (i n) (push (instance rocon_device_msgs::Hue :init) r)) r))
     (dolist (elem- _hue_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rocon_device_msgs::HueArray :md5sum-) "ac7d5d01d5d83c6c14384ec4d7c8d7da")
(setf (get rocon_device_msgs::HueArray :datatype-) "rocon_device_msgs/HueArray")
(setf (get rocon_device_msgs::HueArray :definition-)
      "Hue[] hue_list

================================================================================
MSG: rocon_device_msgs/Hue
int32 light_id
string type
string name
string modelid
string swvesion
HueState state
================================================================================
MSG: rocon_device_msgs/HueState
#pre-define color
string OFF = \"OFF\"
string WHITE = \"WHITE\"
string RED = \"RED\"
string GREEN = \"GREEN\"
string BLUE = \"BLUE\"
string YELLOW = \"YELLOW\"
string ORANGE = \"ORANGE\"
string MAGENTA = \"MAGENTA\"
string VIOLET = \"VIOLET\"

#light on/off status true:on /false:off
bool on 

#color coordination in HSV color space 
#http://en.wikipedia.org/wiki/HSL_and_HSV
uint16 hue #h
uint8 sat #s
uint8 bri #v

#light valid status - valid:on /invalid:off
bool reachable  

#for set color with pre-define color
string color
")



(provide :rocon_device_msgs/HueArray "ac7d5d01d5d83c6c14384ec4d7c8d7da")


