;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::SetWatcherPeriod)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'SetWatcherPeriod (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::SETWATCHERPERIOD")
  (make-package "GATEWAY_MSGS::SETWATCHERPERIOD"))
(unless (find-package "GATEWAY_MSGS::SETWATCHERPERIODREQUEST")
  (make-package "GATEWAY_MSGS::SETWATCHERPERIODREQUEST"))
(unless (find-package "GATEWAY_MSGS::SETWATCHERPERIODRESPONSE")
  (make-package "GATEWAY_MSGS::SETWATCHERPERIODRESPONSE"))

(in-package "ROS")





(defclass gateway_msgs::SetWatcherPeriodRequest
  :super ros::object
  :slots (_period ))

(defmethod gateway_msgs::SetWatcherPeriodRequest
  (:init
   (&key
    ((:period __period) 0.0)
    )
   (send-super :init)
   (setq _period (float __period))
   self)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:serialization-length
   ()
   (+
    ;; float32 _period
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _period
       (sys::poke _period (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _period
     (setq _period (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gateway_msgs::SetWatcherPeriodResponse
  :super ros::object
  :slots (_last_period ))

(defmethod gateway_msgs::SetWatcherPeriodResponse
  (:init
   (&key
    ((:last_period __last_period) 0.0)
    )
   (send-super :init)
   (setq _last_period (float __last_period))
   self)
  (:last_period
   (&optional __last_period)
   (if __last_period (setq _last_period __last_period)) _last_period)
  (:serialization-length
   ()
   (+
    ;; float32 _last_period
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _last_period
       (sys::poke _last_period (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _last_period
     (setq _last_period (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass gateway_msgs::SetWatcherPeriod
  :super ros::object
  :slots ())

(setf (get gateway_msgs::SetWatcherPeriod :md5sum-) "48c82bd734fbc66058cd96447a09fe59")
(setf (get gateway_msgs::SetWatcherPeriod :datatype-) "gateway_msgs/SetWatcherPeriod")
(setf (get gateway_msgs::SetWatcherPeriod :request) gateway_msgs::SetWatcherPeriodRequest)
(setf (get gateway_msgs::SetWatcherPeriod :response) gateway_msgs::SetWatcherPeriodResponse)

(defmethod gateway_msgs::SetWatcherPeriodRequest
  (:response () (instance gateway_msgs::SetWatcherPeriodResponse :init)))

(setf (get gateway_msgs::SetWatcherPeriodRequest :md5sum-) "48c82bd734fbc66058cd96447a09fe59")
(setf (get gateway_msgs::SetWatcherPeriodRequest :datatype-) "gateway_msgs/SetWatcherPeriodRequest")
(setf (get gateway_msgs::SetWatcherPeriodRequest :definition-)
      "

float32 period
---

float32 last_period
")

(setf (get gateway_msgs::SetWatcherPeriodResponse :md5sum-) "48c82bd734fbc66058cd96447a09fe59")
(setf (get gateway_msgs::SetWatcherPeriodResponse :datatype-) "gateway_msgs/SetWatcherPeriodResponse")
(setf (get gateway_msgs::SetWatcherPeriodResponse :definition-)
      "

float32 period
---

float32 last_period
")



(provide :gateway_msgs/SetWatcherPeriod "48c82bd734fbc66058cd96447a09fe59")


