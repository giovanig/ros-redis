;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::LinkGraph)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'LinkGraph (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::LINKGRAPH")
  (make-package "CONCERT_MSGS::LINKGRAPH"))

(in-package "ROS")
;;//! \htmlinclude LinkGraph.msg.html


(defclass concert_msgs::LinkGraph
  :super ros::object
  :slots (_nodes _topics _actions _services _edges ))

(defmethod concert_msgs::LinkGraph
  (:init
   (&key
    ((:nodes __nodes) (let (r) (dotimes (i 0) (push (instance concert_msgs::LinkNode :init) r)) r))
    ((:topics __topics) (let (r) (dotimes (i 0) (push (instance concert_msgs::LinkConnection :init) r)) r))
    ((:actions __actions) (let (r) (dotimes (i 0) (push (instance concert_msgs::LinkConnection :init) r)) r))
    ((:services __services) (let (r) (dotimes (i 0) (push (instance concert_msgs::LinkConnection :init) r)) r))
    ((:edges __edges) (let (r) (dotimes (i 0) (push (instance concert_msgs::LinkEdge :init) r)) r))
    )
   (send-super :init)
   (setq _nodes __nodes)
   (setq _topics __topics)
   (setq _actions __actions)
   (setq _services __services)
   (setq _edges __edges)
   self)
  (:nodes
   (&rest __nodes)
   (if (keywordp (car __nodes))
       (send* _nodes __nodes)
     (progn
       (if __nodes (setq _nodes (car __nodes)))
       _nodes)))
  (:topics
   (&rest __topics)
   (if (keywordp (car __topics))
       (send* _topics __topics)
     (progn
       (if __topics (setq _topics (car __topics)))
       _topics)))
  (:actions
   (&rest __actions)
   (if (keywordp (car __actions))
       (send* _actions __actions)
     (progn
       (if __actions (setq _actions (car __actions)))
       _actions)))
  (:services
   (&rest __services)
   (if (keywordp (car __services))
       (send* _services __services)
     (progn
       (if __services (setq _services (car __services)))
       _services)))
  (:edges
   (&rest __edges)
   (if (keywordp (car __edges))
       (send* _edges __edges)
     (progn
       (if __edges (setq _edges (car __edges)))
       _edges)))
  (:serialization-length
   ()
   (+
    ;; concert_msgs/LinkNode[] _nodes
    (apply #'+ (send-all _nodes :serialization-length)) 4
    ;; concert_msgs/LinkConnection[] _topics
    (apply #'+ (send-all _topics :serialization-length)) 4
    ;; concert_msgs/LinkConnection[] _actions
    (apply #'+ (send-all _actions :serialization-length)) 4
    ;; concert_msgs/LinkConnection[] _services
    (apply #'+ (send-all _services :serialization-length)) 4
    ;; concert_msgs/LinkEdge[] _edges
    (apply #'+ (send-all _edges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; concert_msgs/LinkNode[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (send elem :serialize s)
       )
     ;; concert_msgs/LinkConnection[] _topics
     (write-long (length _topics) s)
     (dolist (elem _topics)
       (send elem :serialize s)
       )
     ;; concert_msgs/LinkConnection[] _actions
     (write-long (length _actions) s)
     (dolist (elem _actions)
       (send elem :serialize s)
       )
     ;; concert_msgs/LinkConnection[] _services
     (write-long (length _services) s)
     (dolist (elem _services)
       (send elem :serialize s)
       )
     ;; concert_msgs/LinkEdge[] _edges
     (write-long (length _edges) s)
     (dolist (elem _edges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; concert_msgs/LinkNode[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (let (r) (dotimes (i n) (push (instance concert_msgs::LinkNode :init) r)) r))
     (dolist (elem- _nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; concert_msgs/LinkConnection[] _topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics (let (r) (dotimes (i n) (push (instance concert_msgs::LinkConnection :init) r)) r))
     (dolist (elem- _topics)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; concert_msgs/LinkConnection[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (let (r) (dotimes (i n) (push (instance concert_msgs::LinkConnection :init) r)) r))
     (dolist (elem- _actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; concert_msgs/LinkConnection[] _services
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _services (let (r) (dotimes (i n) (push (instance concert_msgs::LinkConnection :init) r)) r))
     (dolist (elem- _services)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; concert_msgs/LinkEdge[] _edges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _edges (let (r) (dotimes (i n) (push (instance concert_msgs::LinkEdge :init) r)) r))
     (dolist (elem- _edges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get concert_msgs::LinkGraph :md5sum-) "227c6e11d605d4647851f3e358cf10ba")
(setf (get concert_msgs::LinkGraph :datatype-) "concert_msgs/LinkGraph")
(setf (get concert_msgs::LinkGraph :definition-)
      "# A list of 'named' nodes, e.g. linux.*.ros.robosem.rocon_teleop

LinkNode[]        nodes
LinkConnection[]  topics
LinkConnection[]  actions
LinkConnection[]  services
LinkEdge[]        edges

================================================================================
MSG: concert_msgs/LinkNode
# Representation of a concert client node in the implementation graph

# unique identifier
string id

# rocon uri representing the required resource, e.g. rocon:/turtlebot/*#turtle_concert/turtle_stroll
string resource

# Constraints on how many of these nodes may exist
#   min, max not set -> min = 1, max = 1
#   min not set -> min = 1
#   max not set -> max = UNLIMITED_RESOURCE
# Zero is a valid minimum value
int8 UNLIMITED_RESOURCE=-1
int8 min
int8 max

# Force matching of robot name (only really useful for demos)
bool force_name_matching

# public parameters for node
rocon_std_msgs/KeyValue parameters

================================================================================
MSG: rocon_std_msgs/KeyValue
string key
string value
================================================================================
MSG: concert_msgs/LinkConnection
# Representation of a topic/action node in the 
# implementation graph

# unique identifier
string id
# type of the topic, e.g. std_msgs/String
string type

================================================================================
MSG: concert_msgs/LinkEdge
# Edge of the implementation graph. Client-Topic, or 
# Topic-Client or Client-Action or Action-Client

string start
string finish
string remap_from
string remap_to
")



(provide :concert_msgs/LinkGraph "227c6e11d605d4647851f3e358cf10ba")


