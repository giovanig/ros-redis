;; Auto-generated. Do not edit!


(when (boundp 'etrans_msgs::etrans_lane)
  (if (not (find-package "ETRANS_MSGS"))
    (make-package "ETRANS_MSGS"))
  (shadow 'etrans_lane (find-package "ETRANS_MSGS")))
(unless (find-package "ETRANS_MSGS::ETRANS_LANE")
  (make-package "ETRANS_MSGS::ETRANS_LANE"))

(in-package "ROS")
;;//! \htmlinclude etrans_lane.msg.html


(defclass etrans_msgs::etrans_lane
  :super ros::object
  :slots (_ID _centerpoints ))

(defmethod etrans_msgs::etrans_lane
  (:init
   (&key
    ((:ID __ID) 0)
    ((:centerpoints __centerpoints) (let (r) (dotimes (i 0) (push (instance etrans_msgs::etrans_latlon :init) r)) r))
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _centerpoints __centerpoints)
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:centerpoints
   (&rest __centerpoints)
   (if (keywordp (car __centerpoints))
       (send* _centerpoints __centerpoints)
     (progn
       (if __centerpoints (setq _centerpoints (car __centerpoints)))
       _centerpoints)))
  (:serialization-length
   ()
   (+
    ;; uint32 _ID
    4
    ;; etrans_msgs/etrans_latlon[] _centerpoints
    (apply #'+ (send-all _centerpoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ID
       (write-long _ID s)
     ;; etrans_msgs/etrans_latlon[] _centerpoints
     (write-long (length _centerpoints) s)
     (dolist (elem _centerpoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; etrans_msgs/etrans_latlon[] _centerpoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _centerpoints (let (r) (dotimes (i n) (push (instance etrans_msgs::etrans_latlon :init) r)) r))
     (dolist (elem- _centerpoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get etrans_msgs::etrans_lane :md5sum-) "af8c9fbac78c2f807829637ebfead832")
(setf (get etrans_msgs::etrans_lane :datatype-) "etrans_msgs/etrans_lane")
(setf (get etrans_msgs::etrans_lane :definition-)
      "uint32 ID
etrans_msgs/etrans_latlon[] centerpoints
================================================================================
MSG: etrans_msgs/etrans_latlon
float64 latitude
float64 longitude
")



(provide :etrans_msgs/etrans_lane "af8c9fbac78c2f807829637ebfead832")


