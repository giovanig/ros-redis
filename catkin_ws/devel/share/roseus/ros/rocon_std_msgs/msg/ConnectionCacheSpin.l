;; Auto-generated. Do not edit!


(when (boundp 'rocon_std_msgs::ConnectionCacheSpin)
  (if (not (find-package "ROCON_STD_MSGS"))
    (make-package "ROCON_STD_MSGS"))
  (shadow 'ConnectionCacheSpin (find-package "ROCON_STD_MSGS")))
(unless (find-package "ROCON_STD_MSGS::CONNECTIONCACHESPIN")
  (make-package "ROCON_STD_MSGS::CONNECTIONCACHESPIN"))

(in-package "ROS")
;;//! \htmlinclude ConnectionCacheSpin.msg.html


(defclass rocon_std_msgs::ConnectionCacheSpin
  :super ros::object
  :slots (_spin_freq _spin_timer ))

(defmethod rocon_std_msgs::ConnectionCacheSpin
  (:init
   (&key
    ((:spin_freq __spin_freq) 0.0)
    ((:spin_timer __spin_timer) 0.0)
    )
   (send-super :init)
   (setq _spin_freq (float __spin_freq))
   (setq _spin_timer (float __spin_timer))
   self)
  (:spin_freq
   (&optional __spin_freq)
   (if __spin_freq (setq _spin_freq __spin_freq)) _spin_freq)
  (:spin_timer
   (&optional __spin_timer)
   (if __spin_timer (setq _spin_timer __spin_timer)) _spin_timer)
  (:serialization-length
   ()
   (+
    ;; float32 _spin_freq
    4
    ;; float32 _spin_timer
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _spin_freq
       (sys::poke _spin_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _spin_timer
       (sys::poke _spin_timer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _spin_freq
     (setq _spin_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _spin_timer
     (setq _spin_timer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rocon_std_msgs::ConnectionCacheSpin :md5sum-) "b6c0b0ddb1d2a2de9918dc5f6d87680a")
(setf (get rocon_std_msgs::ConnectionCacheSpin :datatype-) "rocon_std_msgs/ConnectionCacheSpin")
(setf (get rocon_std_msgs::ConnectionCacheSpin :definition-)
      "float32 spin_freq  # Hz
float32 spin_timer  # > 0 means spin_freq is a temporary spin up. ==0 means spin_freq is the base spin frequency
")



(provide :rocon_std_msgs/ConnectionCacheSpin "b6c0b0ddb1d2a2de9918dc5f6d87680a")


