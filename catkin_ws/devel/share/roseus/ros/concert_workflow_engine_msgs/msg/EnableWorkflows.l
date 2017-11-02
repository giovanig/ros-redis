;; Auto-generated. Do not edit!


(when (boundp 'concert_workflow_engine_msgs::EnableWorkflows)
  (if (not (find-package "CONCERT_WORKFLOW_ENGINE_MSGS"))
    (make-package "CONCERT_WORKFLOW_ENGINE_MSGS"))
  (shadow 'EnableWorkflows (find-package "CONCERT_WORKFLOW_ENGINE_MSGS")))
(unless (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::ENABLEWORKFLOWS")
  (make-package "CONCERT_WORKFLOW_ENGINE_MSGS::ENABLEWORKFLOWS"))

(in-package "ROS")
;;//! \htmlinclude EnableWorkflows.msg.html


(defclass concert_workflow_engine_msgs::EnableWorkflows
  :super ros::object
  :slots (_service_name _enable _workflows ))

(defmethod concert_workflow_engine_msgs::EnableWorkflows
  (:init
   (&key
    ((:service_name __service_name) "")
    ((:enable __enable) nil)
    ((:workflows __workflows) (let (r) (dotimes (i 0) (push (instance concert_workflow_engine_msgs::Workflow :init) r)) r))
    )
   (send-super :init)
   (setq _service_name (string __service_name))
   (setq _enable __enable)
   (setq _workflows __workflows)
   self)
  (:service_name
   (&optional __service_name)
   (if __service_name (setq _service_name __service_name)) _service_name)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:workflows
   (&rest __workflows)
   (if (keywordp (car __workflows))
       (send* _workflows __workflows)
     (progn
       (if __workflows (setq _workflows (car __workflows)))
       _workflows)))
  (:serialization-length
   ()
   (+
    ;; string _service_name
    4 (length _service_name)
    ;; bool _enable
    1
    ;; concert_workflow_engine_msgs/Workflow[] _workflows
    (apply #'+ (send-all _workflows :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _service_name
       (write-long (length _service_name) s) (princ _service_name s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; concert_workflow_engine_msgs/Workflow[] _workflows
     (write-long (length _workflows) s)
     (dolist (elem _workflows)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _service_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _service_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; concert_workflow_engine_msgs/Workflow[] _workflows
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _workflows (let (r) (dotimes (i n) (push (instance concert_workflow_engine_msgs::Workflow :init) r)) r))
     (dolist (elem- _workflows)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get concert_workflow_engine_msgs::EnableWorkflows :md5sum-) "cacdbbe404b169f5b2bf8c4c9a373315")
(setf (get concert_workflow_engine_msgs::EnableWorkflows :datatype-) "concert_workflow_engine_msgs/EnableWorkflows")
(setf (get concert_workflow_engine_msgs::EnableWorkflows :definition-)
      "string service_name
bool enable
Workflow[] workflows
================================================================================
MSG: concert_workflow_engine_msgs/Workflow
string data
")



(provide :concert_workflow_engine_msgs/EnableWorkflows "cacdbbe404b169f5b2bf8c4c9a373315")


