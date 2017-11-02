;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::ConnectionStatistics)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'ConnectionStatistics (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::CONNECTIONSTATISTICS")
  (make-package "GATEWAY_MSGS::CONNECTIONSTATISTICS"))

(in-package "ROS")
;;//! \htmlinclude ConnectionStatistics.msg.html


(intern "*WIRED*" (find-package "GATEWAY_MSGS::CONNECTIONSTATISTICS"))
(shadow '*WIRED* (find-package "GATEWAY_MSGS::CONNECTIONSTATISTICS"))
(defconstant gateway_msgs::ConnectionStatistics::*WIRED* 1)
(intern "*WIRELESS*" (find-package "GATEWAY_MSGS::CONNECTIONSTATISTICS"))
(shadow '*WIRELESS* (find-package "GATEWAY_MSGS::CONNECTIONSTATISTICS"))
(defconstant gateway_msgs::ConnectionStatistics::*WIRELESS* 2)
(intern "*MAX_TTL*" (find-package "GATEWAY_MSGS::CONNECTIONSTATISTICS"))
(shadow '*MAX_TTL* (find-package "GATEWAY_MSGS::CONNECTIONSTATISTICS"))
(defconstant gateway_msgs::ConnectionStatistics::*MAX_TTL* 86400)
(defclass gateway_msgs::ConnectionStatistics
  :super ros::object
  :slots (_gateway_available _time_since_last_seen _ping_latency_min _ping_latency_max _ping_latency_avg _ping_latency_mdev _network_info_available _network_type _wireless_bitrate _wireless_link_quality _wireless_signal_level _wireless_noise_level ))

(defmethod gateway_msgs::ConnectionStatistics
  (:init
   (&key
    ((:gateway_available __gateway_available) nil)
    ((:time_since_last_seen __time_since_last_seen) 0)
    ((:ping_latency_min __ping_latency_min) 0.0)
    ((:ping_latency_max __ping_latency_max) 0.0)
    ((:ping_latency_avg __ping_latency_avg) 0.0)
    ((:ping_latency_mdev __ping_latency_mdev) 0.0)
    ((:network_info_available __network_info_available) nil)
    ((:network_type __network_type) 0)
    ((:wireless_bitrate __wireless_bitrate) 0.0)
    ((:wireless_link_quality __wireless_link_quality) 0)
    ((:wireless_signal_level __wireless_signal_level) 0.0)
    ((:wireless_noise_level __wireless_noise_level) 0.0)
    )
   (send-super :init)
   (setq _gateway_available __gateway_available)
   (setq _time_since_last_seen (round __time_since_last_seen))
   (setq _ping_latency_min (float __ping_latency_min))
   (setq _ping_latency_max (float __ping_latency_max))
   (setq _ping_latency_avg (float __ping_latency_avg))
   (setq _ping_latency_mdev (float __ping_latency_mdev))
   (setq _network_info_available __network_info_available)
   (setq _network_type (round __network_type))
   (setq _wireless_bitrate (float __wireless_bitrate))
   (setq _wireless_link_quality (round __wireless_link_quality))
   (setq _wireless_signal_level (float __wireless_signal_level))
   (setq _wireless_noise_level (float __wireless_noise_level))
   self)
  (:gateway_available
   (&optional __gateway_available)
   (if __gateway_available (setq _gateway_available __gateway_available)) _gateway_available)
  (:time_since_last_seen
   (&optional __time_since_last_seen)
   (if __time_since_last_seen (setq _time_since_last_seen __time_since_last_seen)) _time_since_last_seen)
  (:ping_latency_min
   (&optional __ping_latency_min)
   (if __ping_latency_min (setq _ping_latency_min __ping_latency_min)) _ping_latency_min)
  (:ping_latency_max
   (&optional __ping_latency_max)
   (if __ping_latency_max (setq _ping_latency_max __ping_latency_max)) _ping_latency_max)
  (:ping_latency_avg
   (&optional __ping_latency_avg)
   (if __ping_latency_avg (setq _ping_latency_avg __ping_latency_avg)) _ping_latency_avg)
  (:ping_latency_mdev
   (&optional __ping_latency_mdev)
   (if __ping_latency_mdev (setq _ping_latency_mdev __ping_latency_mdev)) _ping_latency_mdev)
  (:network_info_available
   (&optional __network_info_available)
   (if __network_info_available (setq _network_info_available __network_info_available)) _network_info_available)
  (:network_type
   (&optional __network_type)
   (if __network_type (setq _network_type __network_type)) _network_type)
  (:wireless_bitrate
   (&optional __wireless_bitrate)
   (if __wireless_bitrate (setq _wireless_bitrate __wireless_bitrate)) _wireless_bitrate)
  (:wireless_link_quality
   (&optional __wireless_link_quality)
   (if __wireless_link_quality (setq _wireless_link_quality __wireless_link_quality)) _wireless_link_quality)
  (:wireless_signal_level
   (&optional __wireless_signal_level)
   (if __wireless_signal_level (setq _wireless_signal_level __wireless_signal_level)) _wireless_signal_level)
  (:wireless_noise_level
   (&optional __wireless_noise_level)
   (if __wireless_noise_level (setq _wireless_noise_level __wireless_noise_level)) _wireless_noise_level)
  (:serialization-length
   ()
   (+
    ;; bool _gateway_available
    1
    ;; int64 _time_since_last_seen
    8
    ;; float32 _ping_latency_min
    4
    ;; float32 _ping_latency_max
    4
    ;; float32 _ping_latency_avg
    4
    ;; float32 _ping_latency_mdev
    4
    ;; bool _network_info_available
    1
    ;; int8 _network_type
    1
    ;; float32 _wireless_bitrate
    4
    ;; int8 _wireless_link_quality
    1
    ;; float32 _wireless_signal_level
    4
    ;; float32 _wireless_noise_level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _gateway_available
       (if _gateway_available (write-byte -1 s) (write-byte 0 s))
     ;; int64 _time_since_last_seen
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_since_last_seen (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_since_last_seen) (= (length (_time_since_last_seen . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_since_last_seen . bv) 0) 0) s)
              (write-long (ash (elt (_time_since_last_seen . bv) 1) -1) s))
             ((and (class _time_since_last_seen) (= (length (_time_since_last_seen . bv)) 1)) ;; big1
              (write-long (elt (_time_since_last_seen . bv) 0) s)
              (write-long (if (>= _time_since_last_seen 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_since_last_seen s)(write-long (if (>= _time_since_last_seen 0) 0 #xffffffff) s)))
     ;; float32 _ping_latency_min
       (sys::poke _ping_latency_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ping_latency_max
       (sys::poke _ping_latency_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ping_latency_avg
       (sys::poke _ping_latency_avg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ping_latency_mdev
       (sys::poke _ping_latency_mdev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _network_info_available
       (if _network_info_available (write-byte -1 s) (write-byte 0 s))
     ;; int8 _network_type
       (write-byte _network_type s)
     ;; float32 _wireless_bitrate
       (sys::poke _wireless_bitrate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _wireless_link_quality
       (write-byte _wireless_link_quality s)
     ;; float32 _wireless_signal_level
       (sys::poke _wireless_signal_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wireless_noise_level
       (sys::poke _wireless_noise_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _gateway_available
     (setq _gateway_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _time_since_last_seen
#+(or :alpha :irix6 :x86_64)
      (setf _time_since_last_seen (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_since_last_seen (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _ping_latency_min
     (setq _ping_latency_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ping_latency_max
     (setq _ping_latency_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ping_latency_avg
     (setq _ping_latency_avg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ping_latency_mdev
     (setq _ping_latency_mdev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _network_info_available
     (setq _network_info_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _network_type
     (setq _network_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _network_type 127) (setq _network_type (- _network_type 256)))
   ;; float32 _wireless_bitrate
     (setq _wireless_bitrate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _wireless_link_quality
     (setq _wireless_link_quality (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _wireless_link_quality 127) (setq _wireless_link_quality (- _wireless_link_quality 256)))
   ;; float32 _wireless_signal_level
     (setq _wireless_signal_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wireless_noise_level
     (setq _wireless_noise_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gateway_msgs::ConnectionStatistics :md5sum-) "672067d5ab3e6157dcf8224022da3ee6")
(setf (get gateway_msgs::ConnectionStatistics :datatype-) "gateway_msgs/ConnectionStatistics")
(setf (get gateway_msgs::ConnectionStatistics :definition-)
      "# Constants
int8 WIRED = 1
int8 WIRELESS = 2
int32 MAX_TTL = 86400

# Gateway ping indicators
bool gateway_available
int64 time_since_last_seen #time in seconds since last ping successful
float32 ping_latency_min
float32 ping_latency_max
float32 ping_latency_avg
float32 ping_latency_mdev #mean absolute deviation

# Gateway network information indicators
bool network_info_available
int8 network_type
float32 wireless_bitrate
int8 wireless_link_quality
float32 wireless_signal_level
float32 wireless_noise_level



")



(provide :gateway_msgs/ConnectionStatistics "672067d5ab3e6157dcf8224022da3ee6")


