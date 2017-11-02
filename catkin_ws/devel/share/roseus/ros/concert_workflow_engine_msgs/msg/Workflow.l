;; Auto-generated. Do not edit!


(when (boundp 'concert_workflow_engine_msgs::Workflow)
  (if (not (find-package "CONCERT_WORKFLOW_ENGINE_MSGS"))
    (make-package "CONCERT_WORKFLOW_ENGINE_MSGS"))
  (shadow 'Workflow (find-package "CONCERT_WORKFLOW_ENGINE_MSGS")))
(unless (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOW")
  (make-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOW"))

(in-package "ROS")
;;//! \htmlinclude Workflow.msg.html


(defclass concert_workflow_engine_msgs::Workflow
  :super ros::object
  :slots (_data ))

(defmethod concert_workflow_engine_msgs::Workflow
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get concert_workflow_engine_msgs::Workflow :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get concert_workflow_engine_msgs::Workflow :datatype-) "concert_workflow_engine_msgs/Workflow")
(setf (get concert_workflow_engine_msgs::Workflow :definition-)
      "string data
")



(provide :concert_workflow_engine_msgs/Workflow "992ce8a1687cec8c8bd883ec73ca41d1")


