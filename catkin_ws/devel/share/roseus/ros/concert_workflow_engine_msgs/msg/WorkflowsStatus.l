;; Auto-generated. Do not edit!


(when (boundp 'concert_workflow_engine_msgs::WorkflowsStatus)
  (if (not (find-package "CONCERT_WORKFLOW_ENGINE_MSGS"))
    (make-package "CONCERT_WORKFLOW_ENGINE_MSGS"))
  (shadow 'WorkflowsStatus (find-package "CONCERT_WORKFLOW_ENGINE_MSGS")))
(unless (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS")
  (make-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude WorkflowsStatus.msg.html


(intern "*READY*" (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))
(shadow '*READY* (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))
(defconstant concert_workflow_engine_msgs::WorkflowsStatus::*READY* 1)
(intern "*START*" (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))
(shadow '*START* (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))
(defconstant concert_workflow_engine_msgs::WorkflowsStatus::*START* 2)
(intern "*RUNNING*" (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))
(shadow '*RUNNING* (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))
(defconstant concert_workflow_engine_msgs::WorkflowsStatus::*RUNNING* 3)
(intern "*STOP*" (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))
(shadow '*STOP* (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))
(defconstant concert_workflow_engine_msgs::WorkflowsStatus::*STOP* 4)
(intern "*ERROR*" (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))
(shadow '*ERROR* (find-package "CONCERT_WORKFLOW_ENGINE_MSGS::WORKFLOWSSTATUS"))
(defconstant concert_workflow_engine_msgs::WorkflowsStatus::*ERROR* -1)
(defclass concert_workflow_engine_msgs::WorkflowsStatus
  :super ros::object
  :slots (_service_name _status _message ))

(defmethod concert_workflow_engine_msgs::WorkflowsStatus
  (:init
   (&key
    ((:service_name __service_name) "")
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _service_name (string __service_name))
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:service_name
   (&optional __service_name)
   (if __service_name (setq _service_name __service_name)) _service_name)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _service_name
    4 (length _service_name)
    ;; int8 _status
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _service_name
       (write-long (length _service_name) s) (princ _service_name s)
     ;; int8 _status
       (write-byte _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _service_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _service_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get concert_workflow_engine_msgs::WorkflowsStatus :md5sum-) "24fa7d7ee2f6b7cfe974804fbd2e1ae0")
(setf (get concert_workflow_engine_msgs::WorkflowsStatus :datatype-) "concert_workflow_engine_msgs/WorkflowsStatus")
(setf (get concert_workflow_engine_msgs::WorkflowsStatus :definition-)
      "#pre-define workflow status
int8 READY = 1
int8 START = 2
int8 RUNNING = 3
int8 STOP = 4
int8 ERROR = -1

string service_name # service name to launch workflow
int8 status # status of workflow
string message # user friendly message
")



(provide :concert_workflow_engine_msgs/WorkflowsStatus "24fa7d7ee2f6b7cfe974804fbd2e1ae0")


