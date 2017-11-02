;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::RemoteRuleWithStatus)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'RemoteRuleWithStatus (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS")
  (make-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RemoteRuleWithStatus.msg.html


(intern "*UNKNOWN*" (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))
(shadow '*UNKNOWN* (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))
(defconstant gateway_msgs::RemoteRuleWithStatus::*UNKNOWN* "unknown")
(intern "*PENDING*" (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))
(shadow '*PENDING* (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))
(defconstant gateway_msgs::RemoteRuleWithStatus::*PENDING* "pending")
(intern "*ACCEPTED*" (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))
(shadow '*ACCEPTED* (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))
(defconstant gateway_msgs::RemoteRuleWithStatus::*ACCEPTED* "accepted")
(intern "*BLOCKED*" (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))
(shadow '*BLOCKED* (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))
(defconstant gateway_msgs::RemoteRuleWithStatus::*BLOCKED* "blocked")
(intern "*RESEND*" (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))
(shadow '*RESEND* (find-package "GATEWAY_MSGS::REMOTERULEWITHSTATUS"))
(defconstant gateway_msgs::RemoteRuleWithStatus::*RESEND* "resend")
(defclass gateway_msgs::RemoteRuleWithStatus
  :super ros::object
  :slots (_remote_rule _status ))

(defmethod gateway_msgs::RemoteRuleWithStatus
  (:init
   (&key
    ((:remote_rule __remote_rule) (instance gateway_msgs::RemoteRule :init))
    ((:status __status) "")
    )
   (send-super :init)
   (setq _remote_rule __remote_rule)
   (setq _status (string __status))
   self)
  (:remote_rule
   (&rest __remote_rule)
   (if (keywordp (car __remote_rule))
       (send* _remote_rule __remote_rule)
     (progn
       (if __remote_rule (setq _remote_rule (car __remote_rule)))
       _remote_rule)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; gateway_msgs/RemoteRule _remote_rule
    (send _remote_rule :serialization-length)
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gateway_msgs/RemoteRule _remote_rule
       (send _remote_rule :serialize s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gateway_msgs/RemoteRule _remote_rule
     (send _remote_rule :deserialize buf ptr-) (incf ptr- (send _remote_rule :serialization-length))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gateway_msgs::RemoteRuleWithStatus :md5sum-) "7892d8834068a87e345fff91adc26a5e")
(setf (get gateway_msgs::RemoteRuleWithStatus :datatype-) "gateway_msgs/RemoteRuleWithStatus")
(setf (get gateway_msgs::RemoteRuleWithStatus :definition-)
      "# The remote rule whose status is being defined here
RemoteRule remote_rule

# Whether the flip is still pending, was accepted 
string UNKNOWN=unknown
string PENDING=pending
string ACCEPTED=accepted
string BLOCKED=blocked
string RESEND=resend
string status

================================================================================
MSG: gateway_msgs/RemoteRule
# Definition for a flip. It represents either:
#
# 1) an existing flipped connection (from the local gateway)
# 2) a rule that is put on a watchlist

# The target recipient of the flip
string gateway

# Connection has the following parameters that need setting
# - name : fully qualified name of the connection (str)
# - type : connection type (str)
#  
# Use one of the types defined in Connection string constants:
#     (publisher, subscriber, service, action_client, action_server)
#
# - node : name of the node it originates from (str)(optional)
#
# Node name is necessary, for instance, if you have multiple subscribers
# publishing to a single topic. Most of the time it is not necessary,
# but in some cases it helps refine the rule. It helps refine the rule.
#
Rule rule

================================================================================
MSG: gateway_msgs/Rule
# Standard gateway connection rule

# type of connection (from gateway_msgs.msg.Connection)
string type

# this is the topic/service name or the action base name (a regex is supported)
string name 

# (optional) an optional node name can be provided. if node name is not provided
# then all nodes are matched (also supports regex)
string node

")



(provide :gateway_msgs/RemoteRuleWithStatus "7892d8834068a87e345fff91adc26a5e")


