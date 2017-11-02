;; Auto-generated. Do not edit!


(when (boundp 'zeroconf_msgs::ListDiscoveredServices)
  (if (not (find-package "ZEROCONF_MSGS"))
    (make-package "ZEROCONF_MSGS"))
  (shadow 'ListDiscoveredServices (find-package "ZEROCONF_MSGS")))
(unless (find-package "ZEROCONF_MSGS::LISTDISCOVEREDSERVICES")
  (make-package "ZEROCONF_MSGS::LISTDISCOVEREDSERVICES"))
(unless (find-package "ZEROCONF_MSGS::LISTDISCOVEREDSERVICESREQUEST")
  (make-package "ZEROCONF_MSGS::LISTDISCOVEREDSERVICESREQUEST"))
(unless (find-package "ZEROCONF_MSGS::LISTDISCOVEREDSERVICESRESPONSE")
  (make-package "ZEROCONF_MSGS::LISTDISCOVEREDSERVICESRESPONSE"))

(in-package "ROS")





(defclass zeroconf_msgs::ListDiscoveredServicesRequest
  :super ros::object
  :slots (_service_type ))

(defmethod zeroconf_msgs::ListDiscoveredServicesRequest
  (:init
   (&key
    ((:service_type __service_type) "")
    )
   (send-super :init)
   (setq _service_type (string __service_type))
   self)
  (:service_type
   (&optional __service_type)
   (if __service_type (setq _service_type __service_type)) _service_type)
  (:serialization-length
   ()
   (+
    ;; string _service_type
    4 (length _service_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _service_type
       (write-long (length _service_type) s) (princ _service_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _service_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _service_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass zeroconf_msgs::ListDiscoveredServicesResponse
  :super ros::object
  :slots (_services ))

(defmethod zeroconf_msgs::ListDiscoveredServicesResponse
  (:init
   (&key
    ((:services __services) (let (r) (dotimes (i 0) (push (instance zeroconf_msgs::DiscoveredService :init) r)) r))
    )
   (send-super :init)
   (setq _services __services)
   self)
  (:services
   (&rest __services)
   (if (keywordp (car __services))
       (send* _services __services)
     (progn
       (if __services (setq _services (car __services)))
       _services)))
  (:serialization-length
   ()
   (+
    ;; zeroconf_msgs/DiscoveredService[] _services
    (apply #'+ (send-all _services :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zeroconf_msgs/DiscoveredService[] _services
     (write-long (length _services) s)
     (dolist (elem _services)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zeroconf_msgs/DiscoveredService[] _services
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _services (let (r) (dotimes (i n) (push (instance zeroconf_msgs::DiscoveredService :init) r)) r))
     (dolist (elem- _services)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass zeroconf_msgs::ListDiscoveredServices
  :super ros::object
  :slots ())

(setf (get zeroconf_msgs::ListDiscoveredServices :md5sum-) "5e4f7a51e03f794adcd5dbfc4a5acfb6")
(setf (get zeroconf_msgs::ListDiscoveredServices :datatype-) "zeroconf_msgs/ListDiscoveredServices")
(setf (get zeroconf_msgs::ListDiscoveredServices :request) zeroconf_msgs::ListDiscoveredServicesRequest)
(setf (get zeroconf_msgs::ListDiscoveredServices :response) zeroconf_msgs::ListDiscoveredServicesResponse)

(defmethod zeroconf_msgs::ListDiscoveredServicesRequest
  (:response () (instance zeroconf_msgs::ListDiscoveredServicesResponse :init)))

(setf (get zeroconf_msgs::ListDiscoveredServicesRequest :md5sum-) "5e4f7a51e03f794adcd5dbfc4a5acfb6")
(setf (get zeroconf_msgs::ListDiscoveredServicesRequest :datatype-) "zeroconf_msgs/ListDiscoveredServicesRequest")
(setf (get zeroconf_msgs::ListDiscoveredServicesRequest :definition-)
      "string service_type
---
zeroconf_msgs/DiscoveredService[] services


================================================================================
MSG: zeroconf_msgs/DiscoveredService
#
# Provides all the properties required for definition of a discovered 
# zeroconf service. Note that it contains rather alot more information
# than that which is used to publish a zeroconf service.

# Service Part
string name
string type
string domain
string description

# Resolved part
string hostname
string[] ipv4_addresses
string[] ipv6_addresses
int32 port

# These are detailed variables that you should not normally need
# and can be safely ignored in most circumstances (currently used
# by the avahi implementation).

uint32 cookie
bool is_local
bool our_own
bool wide_area
bool multicast
bool cached

")

(setf (get zeroconf_msgs::ListDiscoveredServicesResponse :md5sum-) "5e4f7a51e03f794adcd5dbfc4a5acfb6")
(setf (get zeroconf_msgs::ListDiscoveredServicesResponse :datatype-) "zeroconf_msgs/ListDiscoveredServicesResponse")
(setf (get zeroconf_msgs::ListDiscoveredServicesResponse :definition-)
      "string service_type
---
zeroconf_msgs/DiscoveredService[] services


================================================================================
MSG: zeroconf_msgs/DiscoveredService
#
# Provides all the properties required for definition of a discovered 
# zeroconf service. Note that it contains rather alot more information
# than that which is used to publish a zeroconf service.

# Service Part
string name
string type
string domain
string description

# Resolved part
string hostname
string[] ipv4_addresses
string[] ipv6_addresses
int32 port

# These are detailed variables that you should not normally need
# and can be safely ignored in most circumstances (currently used
# by the avahi implementation).

uint32 cookie
bool is_local
bool our_own
bool wide_area
bool multicast
bool cached

")



(provide :zeroconf_msgs/ListDiscoveredServices "5e4f7a51e03f794adcd5dbfc4a5acfb6")


