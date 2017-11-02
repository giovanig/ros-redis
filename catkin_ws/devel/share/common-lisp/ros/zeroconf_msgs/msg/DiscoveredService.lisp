; Auto-generated. Do not edit!


(cl:in-package zeroconf_msgs-msg)


;//! \htmlinclude DiscoveredService.msg.html

(cl:defclass <DiscoveredService> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (domain
    :reader domain
    :initarg :domain
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (hostname
    :reader hostname
    :initarg :hostname
    :type cl:string
    :initform "")
   (ipv4_addresses
    :reader ipv4_addresses
    :initarg :ipv4_addresses
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (ipv6_addresses
    :reader ipv6_addresses
    :initarg :ipv6_addresses
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (port
    :reader port
    :initarg :port
    :type cl:integer
    :initform 0)
   (cookie
    :reader cookie
    :initarg :cookie
    :type cl:integer
    :initform 0)
   (is_local
    :reader is_local
    :initarg :is_local
    :type cl:boolean
    :initform cl:nil)
   (our_own
    :reader our_own
    :initarg :our_own
    :type cl:boolean
    :initform cl:nil)
   (wide_area
    :reader wide_area
    :initarg :wide_area
    :type cl:boolean
    :initform cl:nil)
   (multicast
    :reader multicast
    :initarg :multicast
    :type cl:boolean
    :initform cl:nil)
   (cached
    :reader cached
    :initarg :cached
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DiscoveredService (<DiscoveredService>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiscoveredService>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiscoveredService)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zeroconf_msgs-msg:<DiscoveredService> is deprecated: use zeroconf_msgs-msg:DiscoveredService instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:name-val is deprecated.  Use zeroconf_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:type-val is deprecated.  Use zeroconf_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'domain-val :lambda-list '(m))
(cl:defmethod domain-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:domain-val is deprecated.  Use zeroconf_msgs-msg:domain instead.")
  (domain m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:description-val is deprecated.  Use zeroconf_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'hostname-val :lambda-list '(m))
(cl:defmethod hostname-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:hostname-val is deprecated.  Use zeroconf_msgs-msg:hostname instead.")
  (hostname m))

(cl:ensure-generic-function 'ipv4_addresses-val :lambda-list '(m))
(cl:defmethod ipv4_addresses-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:ipv4_addresses-val is deprecated.  Use zeroconf_msgs-msg:ipv4_addresses instead.")
  (ipv4_addresses m))

(cl:ensure-generic-function 'ipv6_addresses-val :lambda-list '(m))
(cl:defmethod ipv6_addresses-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:ipv6_addresses-val is deprecated.  Use zeroconf_msgs-msg:ipv6_addresses instead.")
  (ipv6_addresses m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:port-val is deprecated.  Use zeroconf_msgs-msg:port instead.")
  (port m))

(cl:ensure-generic-function 'cookie-val :lambda-list '(m))
(cl:defmethod cookie-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:cookie-val is deprecated.  Use zeroconf_msgs-msg:cookie instead.")
  (cookie m))

(cl:ensure-generic-function 'is_local-val :lambda-list '(m))
(cl:defmethod is_local-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:is_local-val is deprecated.  Use zeroconf_msgs-msg:is_local instead.")
  (is_local m))

(cl:ensure-generic-function 'our_own-val :lambda-list '(m))
(cl:defmethod our_own-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:our_own-val is deprecated.  Use zeroconf_msgs-msg:our_own instead.")
  (our_own m))

(cl:ensure-generic-function 'wide_area-val :lambda-list '(m))
(cl:defmethod wide_area-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:wide_area-val is deprecated.  Use zeroconf_msgs-msg:wide_area instead.")
  (wide_area m))

(cl:ensure-generic-function 'multicast-val :lambda-list '(m))
(cl:defmethod multicast-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:multicast-val is deprecated.  Use zeroconf_msgs-msg:multicast instead.")
  (multicast m))

(cl:ensure-generic-function 'cached-val :lambda-list '(m))
(cl:defmethod cached-val ((m <DiscoveredService>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zeroconf_msgs-msg:cached-val is deprecated.  Use zeroconf_msgs-msg:cached instead.")
  (cached m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiscoveredService>) ostream)
  "Serializes a message object of type '<DiscoveredService>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'domain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'domain))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hostname))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hostname))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ipv4_addresses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'ipv4_addresses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ipv6_addresses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'ipv6_addresses))
  (cl:let* ((signed (cl:slot-value msg 'port)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cookie)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cookie)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cookie)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cookie)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_local) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'our_own) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wide_area) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'multicast) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cached) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiscoveredService>) istream)
  "Deserializes a message object of type '<DiscoveredService>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'domain) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'domain) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hostname) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hostname) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ipv4_addresses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ipv4_addresses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ipv6_addresses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ipv6_addresses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'port) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cookie)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cookie)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cookie)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cookie)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_local) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'our_own) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wide_area) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'multicast) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cached) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiscoveredService>)))
  "Returns string type for a message object of type '<DiscoveredService>"
  "zeroconf_msgs/DiscoveredService")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiscoveredService)))
  "Returns string type for a message object of type 'DiscoveredService"
  "zeroconf_msgs/DiscoveredService")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiscoveredService>)))
  "Returns md5sum for a message object of type '<DiscoveredService>"
  "3aabc6dd9875ef180c75536ad9a51d86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiscoveredService)))
  "Returns md5sum for a message object of type 'DiscoveredService"
  "3aabc6dd9875ef180c75536ad9a51d86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiscoveredService>)))
  "Returns full string definition for message of type '<DiscoveredService>"
  (cl:format cl:nil "#~%# Provides all the properties required for definition of a discovered ~%# zeroconf service. Note that it contains rather alot more information~%# than that which is used to publish a zeroconf service.~%~%# Service Part~%string name~%string type~%string domain~%string description~%~%# Resolved part~%string hostname~%string[] ipv4_addresses~%string[] ipv6_addresses~%int32 port~%~%# These are detailed variables that you should not normally need~%# and can be safely ignored in most circumstances (currently used~%# by the avahi implementation).~%~%uint32 cookie~%bool is_local~%bool our_own~%bool wide_area~%bool multicast~%bool cached~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiscoveredService)))
  "Returns full string definition for message of type 'DiscoveredService"
  (cl:format cl:nil "#~%# Provides all the properties required for definition of a discovered ~%# zeroconf service. Note that it contains rather alot more information~%# than that which is used to publish a zeroconf service.~%~%# Service Part~%string name~%string type~%string domain~%string description~%~%# Resolved part~%string hostname~%string[] ipv4_addresses~%string[] ipv6_addresses~%int32 port~%~%# These are detailed variables that you should not normally need~%# and can be safely ignored in most circumstances (currently used~%# by the avahi implementation).~%~%uint32 cookie~%bool is_local~%bool our_own~%bool wide_area~%bool multicast~%bool cached~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiscoveredService>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'domain))
     4 (cl:length (cl:slot-value msg 'description))
     4 (cl:length (cl:slot-value msg 'hostname))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ipv4_addresses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ipv6_addresses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiscoveredService>))
  "Converts a ROS message object to a list"
  (cl:list 'DiscoveredService
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':domain (domain msg))
    (cl:cons ':description (description msg))
    (cl:cons ':hostname (hostname msg))
    (cl:cons ':ipv4_addresses (ipv4_addresses msg))
    (cl:cons ':ipv6_addresses (ipv6_addresses msg))
    (cl:cons ':port (port msg))
    (cl:cons ':cookie (cookie msg))
    (cl:cons ':is_local (is_local msg))
    (cl:cons ':our_own (our_own msg))
    (cl:cons ':wide_area (wide_area msg))
    (cl:cons ':multicast (multicast msg))
    (cl:cons ':cached (cached msg))
))
