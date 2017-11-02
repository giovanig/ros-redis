;; Auto-generated. Do not edit!


(when (boundp 'zeroconf_msgs::DiscoveredService)
  (if (not (find-package "ZEROCONF_MSGS"))
    (make-package "ZEROCONF_MSGS"))
  (shadow 'DiscoveredService (find-package "ZEROCONF_MSGS")))
(unless (find-package "ZEROCONF_MSGS::DISCOVEREDSERVICE")
  (make-package "ZEROCONF_MSGS::DISCOVEREDSERVICE"))

(in-package "ROS")
;;//! \htmlinclude DiscoveredService.msg.html


(defclass zeroconf_msgs::DiscoveredService
  :super ros::object
  :slots (_name _type _domain _description _hostname _ipv4_addresses _ipv6_addresses _port _cookie _is_local _our_own _wide_area _multicast _cached ))

(defmethod zeroconf_msgs::DiscoveredService
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:domain __domain) "")
    ((:description __description) "")
    ((:hostname __hostname) "")
    ((:ipv4_addresses __ipv4_addresses) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:ipv6_addresses __ipv6_addresses) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:port __port) 0)
    ((:cookie __cookie) 0)
    ((:is_local __is_local) nil)
    ((:our_own __our_own) nil)
    ((:wide_area __wide_area) nil)
    ((:multicast __multicast) nil)
    ((:cached __cached) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _domain (string __domain))
   (setq _description (string __description))
   (setq _hostname (string __hostname))
   (setq _ipv4_addresses __ipv4_addresses)
   (setq _ipv6_addresses __ipv6_addresses)
   (setq _port (round __port))
   (setq _cookie (round __cookie))
   (setq _is_local __is_local)
   (setq _our_own __our_own)
   (setq _wide_area __wide_area)
   (setq _multicast __multicast)
   (setq _cached __cached)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:domain
   (&optional __domain)
   (if __domain (setq _domain __domain)) _domain)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:hostname
   (&optional __hostname)
   (if __hostname (setq _hostname __hostname)) _hostname)
  (:ipv4_addresses
   (&optional __ipv4_addresses)
   (if __ipv4_addresses (setq _ipv4_addresses __ipv4_addresses)) _ipv4_addresses)
  (:ipv6_addresses
   (&optional __ipv6_addresses)
   (if __ipv6_addresses (setq _ipv6_addresses __ipv6_addresses)) _ipv6_addresses)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:cookie
   (&optional __cookie)
   (if __cookie (setq _cookie __cookie)) _cookie)
  (:is_local
   (&optional __is_local)
   (if __is_local (setq _is_local __is_local)) _is_local)
  (:our_own
   (&optional __our_own)
   (if __our_own (setq _our_own __our_own)) _our_own)
  (:wide_area
   (&optional __wide_area)
   (if __wide_area (setq _wide_area __wide_area)) _wide_area)
  (:multicast
   (&optional __multicast)
   (if __multicast (setq _multicast __multicast)) _multicast)
  (:cached
   (&optional __cached)
   (if __cached (setq _cached __cached)) _cached)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; string _domain
    4 (length _domain)
    ;; string _description
    4 (length _description)
    ;; string _hostname
    4 (length _hostname)
    ;; string[] _ipv4_addresses
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _ipv4_addresses)) 4
    ;; string[] _ipv6_addresses
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _ipv6_addresses)) 4
    ;; int32 _port
    4
    ;; uint32 _cookie
    4
    ;; bool _is_local
    1
    ;; bool _our_own
    1
    ;; bool _wide_area
    1
    ;; bool _multicast
    1
    ;; bool _cached
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _domain
       (write-long (length _domain) s) (princ _domain s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _hostname
       (write-long (length _hostname) s) (princ _hostname s)
     ;; string[] _ipv4_addresses
     (write-long (length _ipv4_addresses) s)
     (dolist (elem _ipv4_addresses)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _ipv6_addresses
     (write-long (length _ipv6_addresses) s)
     (dolist (elem _ipv6_addresses)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32 _port
       (write-long _port s)
     ;; uint32 _cookie
       (write-long _cookie s)
     ;; bool _is_local
       (if _is_local (write-byte -1 s) (write-byte 0 s))
     ;; bool _our_own
       (if _our_own (write-byte -1 s) (write-byte 0 s))
     ;; bool _wide_area
       (if _wide_area (write-byte -1 s) (write-byte 0 s))
     ;; bool _multicast
       (if _multicast (write-byte -1 s) (write-byte 0 s))
     ;; bool _cached
       (if _cached (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _domain
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _domain (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _hostname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hostname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _ipv4_addresses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ipv4_addresses (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _ipv4_addresses i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _ipv6_addresses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ipv6_addresses (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _ipv6_addresses i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32 _port
     (setq _port (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cookie
     (setq _cookie (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_local
     (setq _is_local (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _our_own
     (setq _our_own (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wide_area
     (setq _wide_area (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _multicast
     (setq _multicast (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cached
     (setq _cached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get zeroconf_msgs::DiscoveredService :md5sum-) "3aabc6dd9875ef180c75536ad9a51d86")
(setf (get zeroconf_msgs::DiscoveredService :datatype-) "zeroconf_msgs/DiscoveredService")
(setf (get zeroconf_msgs::DiscoveredService :definition-)
      "#
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



(provide :zeroconf_msgs/DiscoveredService "3aabc6dd9875ef180c75536ad9a51d86")


