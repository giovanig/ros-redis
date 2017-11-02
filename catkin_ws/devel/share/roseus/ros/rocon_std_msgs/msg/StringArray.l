;; Auto-generated. Do not edit!


(when (boundp 'rocon_std_msgs::StringArray)
  (if (not (find-package "ROCON_STD_MSGS"))
    (make-package "ROCON_STD_MSGS"))
  (shadow 'StringArray (find-package "ROCON_STD_MSGS")))
(unless (find-package "ROCON_STD_MSGS::STRINGARRAY")
  (make-package "ROCON_STD_MSGS::STRINGARRAY"))

(in-package "ROS")
;;//! \htmlinclude StringArray.msg.html


(defclass rocon_std_msgs::StringArray
  :super ros::object
  :slots (_strings ))

(defmethod rocon_std_msgs::StringArray
  (:init
   (&key
    ((:strings __strings) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _strings __strings)
   self)
  (:strings
   (&optional __strings)
   (if __strings (setq _strings __strings)) _strings)
  (:serialization-length
   ()
   (+
    ;; string[] _strings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _strings)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _strings
     (write-long (length _strings) s)
     (dolist (elem _strings)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _strings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _strings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _strings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get rocon_std_msgs::StringArray :md5sum-) "51789d20146e565223d0963361aecda1")
(setf (get rocon_std_msgs::StringArray :datatype-) "rocon_std_msgs/StringArray")
(setf (get rocon_std_msgs::StringArray :definition-)
      "string[] strings


")



(provide :rocon_std_msgs/StringArray "51789d20146e565223d0963361aecda1")


