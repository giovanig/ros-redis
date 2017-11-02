;; Auto-generated. Do not edit!


(when (boundp 'rocon_std_msgs::Remapping)
  (if (not (find-package "ROCON_STD_MSGS"))
    (make-package "ROCON_STD_MSGS"))
  (shadow 'Remapping (find-package "ROCON_STD_MSGS")))
(unless (find-package "ROCON_STD_MSGS::REMAPPING")
  (make-package "ROCON_STD_MSGS::REMAPPING"))

(in-package "ROS")
;;//! \htmlinclude Remapping.msg.html


(defclass rocon_std_msgs::Remapping
  :super ros::object
  :slots (_remap_from _remap_to ))

(defmethod rocon_std_msgs::Remapping
  (:init
   (&key
    ((:remap_from __remap_from) "")
    ((:remap_to __remap_to) "")
    )
   (send-super :init)
   (setq _remap_from (string __remap_from))
   (setq _remap_to (string __remap_to))
   self)
  (:remap_from
   (&optional __remap_from)
   (if __remap_from (setq _remap_from __remap_from)) _remap_from)
  (:remap_to
   (&optional __remap_to)
   (if __remap_to (setq _remap_to __remap_to)) _remap_to)
  (:serialization-length
   ()
   (+
    ;; string _remap_from
    4 (length _remap_from)
    ;; string _remap_to
    4 (length _remap_to)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _remap_from
       (write-long (length _remap_from) s) (princ _remap_from s)
     ;; string _remap_to
       (write-long (length _remap_to) s) (princ _remap_to s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _remap_from
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remap_from (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _remap_to
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remap_to (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rocon_std_msgs::Remapping :md5sum-) "26f16c667d483280bc5d040bf2c0cd8d")
(setf (get rocon_std_msgs::Remapping :datatype-) "rocon_std_msgs/Remapping")
(setf (get rocon_std_msgs::Remapping :definition-)
      "# Describes your typical ros remapping

string remap_from
string remap_to

")



(provide :rocon_std_msgs/Remapping "26f16c667d483280bc5d040bf2c0cd8d")


