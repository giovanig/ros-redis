;; Auto-generated. Do not edit!


(when (boundp 'rocon_device_msgs::Hue)
  (if (not (find-package "ROCON_DEVICE_MSGS"))
    (make-package "ROCON_DEVICE_MSGS"))
  (shadow 'Hue (find-package "ROCON_DEVICE_MSGS")))
(unless (find-package "ROCON_DEVICE_MSGS::HUE")
  (make-package "ROCON_DEVICE_MSGS::HUE"))

(in-package "ROS")
;;//! \htmlinclude Hue.msg.html


(defclass rocon_device_msgs::Hue
  :super ros::object
  :slots (_light_id _type _name _modelid _swvesion _state ))

(defmethod rocon_device_msgs::Hue
  (:init
   (&key
    ((:light_id __light_id) 0)
    ((:type __type) "")
    ((:name __name) "")
    ((:modelid __modelid) "")
    ((:swvesion __swvesion) "")
    ((:state __state) (instance rocon_device_msgs::HueState :init))
    )
   (send-super :init)
   (setq _light_id (round __light_id))
   (setq _type (string __type))
   (setq _name (string __name))
   (setq _modelid (string __modelid))
   (setq _swvesion (string __swvesion))
   (setq _state __state)
   self)
  (:light_id
   (&optional __light_id)
   (if __light_id (setq _light_id __light_id)) _light_id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:modelid
   (&optional __modelid)
   (if __modelid (setq _modelid __modelid)) _modelid)
  (:swvesion
   (&optional __swvesion)
   (if __swvesion (setq _swvesion __swvesion)) _swvesion)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; int32 _light_id
    4
    ;; string _type
    4 (length _type)
    ;; string _name
    4 (length _name)
    ;; string _modelid
    4 (length _modelid)
    ;; string _swvesion
    4 (length _swvesion)
    ;; rocon_device_msgs/HueState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _light_id
       (write-long _light_id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _modelid
       (write-long (length _modelid) s) (princ _modelid s)
     ;; string _swvesion
       (write-long (length _swvesion) s) (princ _swvesion s)
     ;; rocon_device_msgs/HueState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _light_id
     (setq _light_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _modelid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _modelid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _swvesion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _swvesion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; rocon_device_msgs/HueState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get rocon_device_msgs::Hue :md5sum-) "468758d766494876ea4e198e409600ee")
(setf (get rocon_device_msgs::Hue :datatype-) "rocon_device_msgs/Hue")
(setf (get rocon_device_msgs::Hue :definition-)
      "int32 light_id
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



(provide :rocon_device_msgs/Hue "468758d766494876ea4e198e409600ee")


