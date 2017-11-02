;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::GatewayInfo)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'GatewayInfo (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::GATEWAYINFO")
  (make-package "GATEWAY_MSGS::GATEWAYINFO"))

(in-package "ROS")
;;//! \htmlinclude GatewayInfo.msg.html


(defclass gateway_msgs::GatewayInfo
  :super ros::object
  :slots (_name _discover_hubs_by_zeroconf _discover_hubs_by_uri _connected _ip _hub_names _hub_uris _firewall _public_watchlist _public_interface _flipped_connections _flip_watchlist _flipped_in_connections _pull_watchlist _pulled_connections ))

(defmethod gateway_msgs::GatewayInfo
  (:init
   (&key
    ((:name __name) "")
    ((:discover_hubs_by_zeroconf __discover_hubs_by_zeroconf) nil)
    ((:discover_hubs_by_uri __discover_hubs_by_uri) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:connected __connected) nil)
    ((:ip __ip) "")
    ((:hub_names __hub_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:hub_uris __hub_uris) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:firewall __firewall) nil)
    ((:public_watchlist __public_watchlist) (let (r) (dotimes (i 0) (push (instance gateway_msgs::Rule :init) r)) r))
    ((:public_interface __public_interface) (let (r) (dotimes (i 0) (push (instance gateway_msgs::Rule :init) r)) r))
    ((:flipped_connections __flipped_connections) (let (r) (dotimes (i 0) (push (instance gateway_msgs::RemoteRuleWithStatus :init) r)) r))
    ((:flip_watchlist __flip_watchlist) (let (r) (dotimes (i 0) (push (instance gateway_msgs::RemoteRule :init) r)) r))
    ((:flipped_in_connections __flipped_in_connections) (let (r) (dotimes (i 0) (push (instance gateway_msgs::RemoteRule :init) r)) r))
    ((:pull_watchlist __pull_watchlist) (let (r) (dotimes (i 0) (push (instance gateway_msgs::RemoteRule :init) r)) r))
    ((:pulled_connections __pulled_connections) (let (r) (dotimes (i 0) (push (instance gateway_msgs::RemoteRule :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _discover_hubs_by_zeroconf __discover_hubs_by_zeroconf)
   (setq _discover_hubs_by_uri __discover_hubs_by_uri)
   (setq _connected __connected)
   (setq _ip (string __ip))
   (setq _hub_names __hub_names)
   (setq _hub_uris __hub_uris)
   (setq _firewall __firewall)
   (setq _public_watchlist __public_watchlist)
   (setq _public_interface __public_interface)
   (setq _flipped_connections __flipped_connections)
   (setq _flip_watchlist __flip_watchlist)
   (setq _flipped_in_connections __flipped_in_connections)
   (setq _pull_watchlist __pull_watchlist)
   (setq _pulled_connections __pulled_connections)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:discover_hubs_by_zeroconf
   (&optional __discover_hubs_by_zeroconf)
   (if __discover_hubs_by_zeroconf (setq _discover_hubs_by_zeroconf __discover_hubs_by_zeroconf)) _discover_hubs_by_zeroconf)
  (:discover_hubs_by_uri
   (&optional __discover_hubs_by_uri)
   (if __discover_hubs_by_uri (setq _discover_hubs_by_uri __discover_hubs_by_uri)) _discover_hubs_by_uri)
  (:connected
   (&optional __connected)
   (if __connected (setq _connected __connected)) _connected)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:hub_names
   (&optional __hub_names)
   (if __hub_names (setq _hub_names __hub_names)) _hub_names)
  (:hub_uris
   (&optional __hub_uris)
   (if __hub_uris (setq _hub_uris __hub_uris)) _hub_uris)
  (:firewall
   (&optional __firewall)
   (if __firewall (setq _firewall __firewall)) _firewall)
  (:public_watchlist
   (&rest __public_watchlist)
   (if (keywordp (car __public_watchlist))
       (send* _public_watchlist __public_watchlist)
     (progn
       (if __public_watchlist (setq _public_watchlist (car __public_watchlist)))
       _public_watchlist)))
  (:public_interface
   (&rest __public_interface)
   (if (keywordp (car __public_interface))
       (send* _public_interface __public_interface)
     (progn
       (if __public_interface (setq _public_interface (car __public_interface)))
       _public_interface)))
  (:flipped_connections
   (&rest __flipped_connections)
   (if (keywordp (car __flipped_connections))
       (send* _flipped_connections __flipped_connections)
     (progn
       (if __flipped_connections (setq _flipped_connections (car __flipped_connections)))
       _flipped_connections)))
  (:flip_watchlist
   (&rest __flip_watchlist)
   (if (keywordp (car __flip_watchlist))
       (send* _flip_watchlist __flip_watchlist)
     (progn
       (if __flip_watchlist (setq _flip_watchlist (car __flip_watchlist)))
       _flip_watchlist)))
  (:flipped_in_connections
   (&rest __flipped_in_connections)
   (if (keywordp (car __flipped_in_connections))
       (send* _flipped_in_connections __flipped_in_connections)
     (progn
       (if __flipped_in_connections (setq _flipped_in_connections (car __flipped_in_connections)))
       _flipped_in_connections)))
  (:pull_watchlist
   (&rest __pull_watchlist)
   (if (keywordp (car __pull_watchlist))
       (send* _pull_watchlist __pull_watchlist)
     (progn
       (if __pull_watchlist (setq _pull_watchlist (car __pull_watchlist)))
       _pull_watchlist)))
  (:pulled_connections
   (&rest __pulled_connections)
   (if (keywordp (car __pulled_connections))
       (send* _pulled_connections __pulled_connections)
     (progn
       (if __pulled_connections (setq _pulled_connections (car __pulled_connections)))
       _pulled_connections)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _discover_hubs_by_zeroconf
    1
    ;; string[] _discover_hubs_by_uri
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _discover_hubs_by_uri)) 4
    ;; bool _connected
    1
    ;; string _ip
    4 (length _ip)
    ;; string[] _hub_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _hub_names)) 4
    ;; string[] _hub_uris
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _hub_uris)) 4
    ;; bool _firewall
    1
    ;; gateway_msgs/Rule[] _public_watchlist
    (apply #'+ (send-all _public_watchlist :serialization-length)) 4
    ;; gateway_msgs/Rule[] _public_interface
    (apply #'+ (send-all _public_interface :serialization-length)) 4
    ;; gateway_msgs/RemoteRuleWithStatus[] _flipped_connections
    (apply #'+ (send-all _flipped_connections :serialization-length)) 4
    ;; gateway_msgs/RemoteRule[] _flip_watchlist
    (apply #'+ (send-all _flip_watchlist :serialization-length)) 4
    ;; gateway_msgs/RemoteRule[] _flipped_in_connections
    (apply #'+ (send-all _flipped_in_connections :serialization-length)) 4
    ;; gateway_msgs/RemoteRule[] _pull_watchlist
    (apply #'+ (send-all _pull_watchlist :serialization-length)) 4
    ;; gateway_msgs/RemoteRule[] _pulled_connections
    (apply #'+ (send-all _pulled_connections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _discover_hubs_by_zeroconf
       (if _discover_hubs_by_zeroconf (write-byte -1 s) (write-byte 0 s))
     ;; string[] _discover_hubs_by_uri
     (write-long (length _discover_hubs_by_uri) s)
     (dolist (elem _discover_hubs_by_uri)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _connected
       (if _connected (write-byte -1 s) (write-byte 0 s))
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; string[] _hub_names
     (write-long (length _hub_names) s)
     (dolist (elem _hub_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _hub_uris
     (write-long (length _hub_uris) s)
     (dolist (elem _hub_uris)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _firewall
       (if _firewall (write-byte -1 s) (write-byte 0 s))
     ;; gateway_msgs/Rule[] _public_watchlist
     (write-long (length _public_watchlist) s)
     (dolist (elem _public_watchlist)
       (send elem :serialize s)
       )
     ;; gateway_msgs/Rule[] _public_interface
     (write-long (length _public_interface) s)
     (dolist (elem _public_interface)
       (send elem :serialize s)
       )
     ;; gateway_msgs/RemoteRuleWithStatus[] _flipped_connections
     (write-long (length _flipped_connections) s)
     (dolist (elem _flipped_connections)
       (send elem :serialize s)
       )
     ;; gateway_msgs/RemoteRule[] _flip_watchlist
     (write-long (length _flip_watchlist) s)
     (dolist (elem _flip_watchlist)
       (send elem :serialize s)
       )
     ;; gateway_msgs/RemoteRule[] _flipped_in_connections
     (write-long (length _flipped_in_connections) s)
     (dolist (elem _flipped_in_connections)
       (send elem :serialize s)
       )
     ;; gateway_msgs/RemoteRule[] _pull_watchlist
     (write-long (length _pull_watchlist) s)
     (dolist (elem _pull_watchlist)
       (send elem :serialize s)
       )
     ;; gateway_msgs/RemoteRule[] _pulled_connections
     (write-long (length _pulled_connections) s)
     (dolist (elem _pulled_connections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _discover_hubs_by_zeroconf
     (setq _discover_hubs_by_zeroconf (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _discover_hubs_by_uri
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _discover_hubs_by_uri (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _discover_hubs_by_uri i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _connected
     (setq _connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _hub_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hub_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _hub_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _hub_uris
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hub_uris (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _hub_uris i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _firewall
     (setq _firewall (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; gateway_msgs/Rule[] _public_watchlist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _public_watchlist (let (r) (dotimes (i n) (push (instance gateway_msgs::Rule :init) r)) r))
     (dolist (elem- _public_watchlist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; gateway_msgs/Rule[] _public_interface
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _public_interface (let (r) (dotimes (i n) (push (instance gateway_msgs::Rule :init) r)) r))
     (dolist (elem- _public_interface)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; gateway_msgs/RemoteRuleWithStatus[] _flipped_connections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flipped_connections (let (r) (dotimes (i n) (push (instance gateway_msgs::RemoteRuleWithStatus :init) r)) r))
     (dolist (elem- _flipped_connections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; gateway_msgs/RemoteRule[] _flip_watchlist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flip_watchlist (let (r) (dotimes (i n) (push (instance gateway_msgs::RemoteRule :init) r)) r))
     (dolist (elem- _flip_watchlist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; gateway_msgs/RemoteRule[] _flipped_in_connections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flipped_in_connections (let (r) (dotimes (i n) (push (instance gateway_msgs::RemoteRule :init) r)) r))
     (dolist (elem- _flipped_in_connections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; gateway_msgs/RemoteRule[] _pull_watchlist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pull_watchlist (let (r) (dotimes (i n) (push (instance gateway_msgs::RemoteRule :init) r)) r))
     (dolist (elem- _pull_watchlist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; gateway_msgs/RemoteRule[] _pulled_connections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pulled_connections (let (r) (dotimes (i n) (push (instance gateway_msgs::RemoteRule :init) r)) r))
     (dolist (elem- _pulled_connections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gateway_msgs::GatewayInfo :md5sum-) "6813c0195882d105e9e462fe1035ed2e")
(setf (get gateway_msgs::GatewayInfo :datatype-) "gateway_msgs/GatewayInfo")
(setf (get gateway_msgs::GatewayInfo :definition-)
      "###### Gateway information ######

# Gateway parameters
string name
bool discover_hubs_by_zeroconf 
string[] discover_hubs_by_uri
bool connected
string ip

# Hub parameters
string[] hub_names
string[] hub_uris

bool firewall

###### Public Interface ######

Rule[] public_watchlist
Rule[] public_interface

###### Flipped Interface ######

RemoteRuleWithStatus[] flipped_connections
RemoteRule[] flip_watchlist
RemoteRule[] flipped_in_connections

###### Pulled Interface ######

RemoteRule[] pull_watchlist
RemoteRule[] pulled_connections


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

================================================================================
MSG: gateway_msgs/RemoteRuleWithStatus
# The remote rule whose status is being defined here
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

")



(provide :gateway_msgs/GatewayInfo "6813c0195882d105e9e462fe1035ed2e")


