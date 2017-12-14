;; Auto-generated. Do not edit!


(when (boundp 'etrans_msgs::etrans_light)
  (if (not (find-package "ETRANS_MSGS"))
    (make-package "ETRANS_MSGS"))
  (shadow 'etrans_light (find-package "ETRANS_MSGS")))
(unless (find-package "ETRANS_MSGS::ETRANS_LIGHT")
  (make-package "ETRANS_MSGS::ETRANS_LIGHT"))

(in-package "ROS")
;;//! \htmlinclude etrans_light.msg.html


(defclass etrans_msgs::etrans_light
  :super ros::object
  :slots (_state _signal_group _time_to_change _latitude _longitude ))

(defmethod etrans_msgs::etrans_light
  (:init
   (&key
    ((:state __state) 0)
    ((:signal_group __signal_group) 0)
    ((:time_to_change __time_to_change) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _signal_group (round __signal_group))
   (setq _time_to_change (float __time_to_change))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:signal_group
   (&optional __signal_group)
   (if __signal_group (setq _signal_group __signal_group)) _signal_group)
  (:time_to_change
   (&optional __time_to_change)
   (if __time_to_change (setq _time_to_change __time_to_change)) _time_to_change)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:serialization-length
   ()
   (+
    ;; int8 _state
    1
    ;; uint32 _signal_group
    4
    ;; float64 _time_to_change
    8
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _state
       (write-byte _state s)
     ;; uint32 _signal_group
       (write-long _signal_group s)
     ;; float64 _time_to_change
       (sys::poke _time_to_change (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _state 127) (setq _state (- _state 256)))
   ;; uint32 _signal_group
     (setq _signal_group (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _time_to_change
     (setq _time_to_change (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get etrans_msgs::etrans_light :md5sum-) "c32da18cf5c5b5fc7fb74eb7e7860ee2")
(setf (get etrans_msgs::etrans_light :datatype-) "etrans_msgs/etrans_light")
(setf (get etrans_msgs::etrans_light :definition-)
      "int8 state
uint32 signal_group
float64 time_to_change
float64 latitude
float64 longitude

")



(provide :etrans_msgs/etrans_light "c32da18cf5c5b5fc7fb74eb7e7860ee2")


