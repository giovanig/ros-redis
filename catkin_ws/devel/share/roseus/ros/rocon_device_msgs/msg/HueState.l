;; Auto-generated. Do not edit!


(when (boundp 'rocon_device_msgs::HueState)
  (if (not (find-package "ROCON_DEVICE_MSGS"))
    (make-package "ROCON_DEVICE_MSGS"))
  (shadow 'HueState (find-package "ROCON_DEVICE_MSGS")))
(unless (find-package "ROCON_DEVICE_MSGS::HUESTATE")
  (make-package "ROCON_DEVICE_MSGS::HUESTATE"))

(in-package "ROS")
;;//! \htmlinclude HueState.msg.html


(intern "*OFF*" (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(shadow '*OFF* (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(defconstant rocon_device_msgs::HueState::*OFF* "\"OFF\"")
(intern "*WHITE*" (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(shadow '*WHITE* (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(defconstant rocon_device_msgs::HueState::*WHITE* "\"WHITE\"")
(intern "*RED*" (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(shadow '*RED* (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(defconstant rocon_device_msgs::HueState::*RED* "\"RED\"")
(intern "*GREEN*" (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(shadow '*GREEN* (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(defconstant rocon_device_msgs::HueState::*GREEN* "\"GREEN\"")
(intern "*BLUE*" (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(shadow '*BLUE* (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(defconstant rocon_device_msgs::HueState::*BLUE* "\"BLUE\"")
(intern "*YELLOW*" (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(shadow '*YELLOW* (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(defconstant rocon_device_msgs::HueState::*YELLOW* "\"YELLOW\"")
(intern "*ORANGE*" (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(shadow '*ORANGE* (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(defconstant rocon_device_msgs::HueState::*ORANGE* "\"ORANGE\"")
(intern "*MAGENTA*" (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(shadow '*MAGENTA* (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(defconstant rocon_device_msgs::HueState::*MAGENTA* "\"MAGENTA\"")
(intern "*VIOLET*" (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(shadow '*VIOLET* (find-package "ROCON_DEVICE_MSGS::HUESTATE"))
(defconstant rocon_device_msgs::HueState::*VIOLET* "\"VIOLET\"")
(defclass rocon_device_msgs::HueState
  :super ros::object
  :slots (_on _hue _sat _bri _reachable _color ))

(defmethod rocon_device_msgs::HueState
  (:init
   (&key
    ((:on __on) nil)
    ((:hue __hue) 0)
    ((:sat __sat) 0)
    ((:bri __bri) 0)
    ((:reachable __reachable) nil)
    ((:color __color) "")
    )
   (send-super :init)
   (setq _on __on)
   (setq _hue (round __hue))
   (setq _sat (round __sat))
   (setq _bri (round __bri))
   (setq _reachable __reachable)
   (setq _color (string __color))
   self)
  (:on
   (&optional __on)
   (if __on (setq _on __on)) _on)
  (:hue
   (&optional __hue)
   (if __hue (setq _hue __hue)) _hue)
  (:sat
   (&optional __sat)
   (if __sat (setq _sat __sat)) _sat)
  (:bri
   (&optional __bri)
   (if __bri (setq _bri __bri)) _bri)
  (:reachable
   (&optional __reachable)
   (if __reachable (setq _reachable __reachable)) _reachable)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; bool _on
    1
    ;; uint16 _hue
    2
    ;; uint8 _sat
    1
    ;; uint8 _bri
    1
    ;; bool _reachable
    1
    ;; string _color
    4 (length _color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _on
       (if _on (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _hue
       (write-word _hue s)
     ;; uint8 _sat
       (write-byte _sat s)
     ;; uint8 _bri
       (write-byte _bri s)
     ;; bool _reachable
       (if _reachable (write-byte -1 s) (write-byte 0 s))
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _on
     (setq _on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _hue
     (setq _hue (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _sat
     (setq _sat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _bri
     (setq _bri (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _reachable
     (setq _reachable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rocon_device_msgs::HueState :md5sum-) "3fa6578e37628a062177e792a87fa213")
(setf (get rocon_device_msgs::HueState :datatype-) "rocon_device_msgs/HueState")
(setf (get rocon_device_msgs::HueState :definition-)
      "#pre-define color
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



(provide :rocon_device_msgs/HueState "3fa6578e37628a062177e792a87fa213")


