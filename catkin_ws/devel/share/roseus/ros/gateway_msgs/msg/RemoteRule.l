;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::RemoteRule)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'RemoteRule (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::REMOTERULE")
  (make-package "GATEWAY_MSGS::REMOTERULE"))

(in-package "ROS")
;;//! \htmlinclude RemoteRule.msg.html


(defclass gateway_msgs::RemoteRule
  :super ros::object
  :slots (_gateway _rule ))

(defmethod gateway_msgs::RemoteRule
  (:init
   (&key
    ((:gateway __gateway) "")
    ((:rule __rule) (instance gateway_msgs::Rule :init))
    )
   (send-super :init)
   (setq _gateway (string __gateway))
   (setq _rule __rule)
   self)
  (:gateway
   (&optional __gateway)
   (if __gateway (setq _gateway __gateway)) _gateway)
  (:rule
   (&rest __rule)
   (if (keywordp (car __rule))
       (send* _rule __rule)
     (progn
       (if __rule (setq _rule (car __rule)))
       _rule)))
  (:serialization-length
   ()
   (+
    ;; string _gateway
    4 (length _gateway)
    ;; gateway_msgs/Rule _rule
    (send _rule :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gateway
       (write-long (length _gateway) s) (princ _gateway s)
     ;; gateway_msgs/Rule _rule
       (send _rule :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gateway
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gateway (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; gateway_msgs/Rule _rule
     (send _rule :deserialize buf ptr-) (incf ptr- (send _rule :serialization-length))
   ;;
   self)
  )

(setf (get gateway_msgs::RemoteRule :md5sum-) "14f4c5aaf33b32b22c50fd514747f99f")
(setf (get gateway_msgs::RemoteRule :datatype-) "gateway_msgs/RemoteRule")
(setf (get gateway_msgs::RemoteRule :definition-)
      "# Definition for a flip. It represents either:
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



(provide :gateway_msgs/RemoteRule "14f4c5aaf33b32b22c50fd514747f99f")


