; Auto-generated. Do not edit!


(cl:in-package rocon_interaction_msgs-msg)


;//! \htmlinclude Interaction.msg.html

(cl:defclass <Interaction> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (compatibility
    :reader compatibility
    :initarg :compatibility
    :type cl:string
    :initform "")
   (group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (icon
    :reader icon
    :initarg :icon
    :type rocon_std_msgs-msg:Icon
    :initform (cl:make-instance 'rocon_std_msgs-msg:Icon))
   (namespace
    :reader namespace
    :initarg :namespace
    :type cl:string
    :initform "")
   (remappings
    :reader remappings
    :initarg :remappings
    :type (cl:vector rocon_std_msgs-msg:Remapping)
   :initform (cl:make-array 0 :element-type 'rocon_std_msgs-msg:Remapping :initial-element (cl:make-instance 'rocon_std_msgs-msg:Remapping)))
   (parameters
    :reader parameters
    :initarg :parameters
    :type cl:string
    :initform "")
   (max
    :reader max
    :initarg :max
    :type cl:integer
    :initform 0)
   (bringup_pairing
    :reader bringup_pairing
    :initarg :bringup_pairing
    :type cl:boolean
    :initform cl:nil)
   (teardown_pairing
    :reader teardown_pairing
    :initarg :teardown_pairing
    :type cl:boolean
    :initform cl:nil)
   (required_pairings
    :reader required_pairings
    :initarg :required_pairings
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (hidden
    :reader hidden
    :initarg :hidden
    :type cl:boolean
    :initform cl:nil)
   (hash
    :reader hash
    :initarg :hash
    :type cl:integer
    :initform 0))
)

(cl:defclass Interaction (<Interaction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Interaction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Interaction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rocon_interaction_msgs-msg:<Interaction> is deprecated: use rocon_interaction_msgs-msg:Interaction instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:name-val is deprecated.  Use rocon_interaction_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:command-val is deprecated.  Use rocon_interaction_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'compatibility-val :lambda-list '(m))
(cl:defmethod compatibility-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:compatibility-val is deprecated.  Use rocon_interaction_msgs-msg:compatibility instead.")
  (compatibility m))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:group-val is deprecated.  Use rocon_interaction_msgs-msg:group instead.")
  (group m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:description-val is deprecated.  Use rocon_interaction_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'icon-val :lambda-list '(m))
(cl:defmethod icon-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:icon-val is deprecated.  Use rocon_interaction_msgs-msg:icon instead.")
  (icon m))

(cl:ensure-generic-function 'namespace-val :lambda-list '(m))
(cl:defmethod namespace-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:namespace-val is deprecated.  Use rocon_interaction_msgs-msg:namespace instead.")
  (namespace m))

(cl:ensure-generic-function 'remappings-val :lambda-list '(m))
(cl:defmethod remappings-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:remappings-val is deprecated.  Use rocon_interaction_msgs-msg:remappings instead.")
  (remappings m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:parameters-val is deprecated.  Use rocon_interaction_msgs-msg:parameters instead.")
  (parameters m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:max-val is deprecated.  Use rocon_interaction_msgs-msg:max instead.")
  (max m))

(cl:ensure-generic-function 'bringup_pairing-val :lambda-list '(m))
(cl:defmethod bringup_pairing-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:bringup_pairing-val is deprecated.  Use rocon_interaction_msgs-msg:bringup_pairing instead.")
  (bringup_pairing m))

(cl:ensure-generic-function 'teardown_pairing-val :lambda-list '(m))
(cl:defmethod teardown_pairing-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:teardown_pairing-val is deprecated.  Use rocon_interaction_msgs-msg:teardown_pairing instead.")
  (teardown_pairing m))

(cl:ensure-generic-function 'required_pairings-val :lambda-list '(m))
(cl:defmethod required_pairings-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:required_pairings-val is deprecated.  Use rocon_interaction_msgs-msg:required_pairings instead.")
  (required_pairings m))

(cl:ensure-generic-function 'hidden-val :lambda-list '(m))
(cl:defmethod hidden-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:hidden-val is deprecated.  Use rocon_interaction_msgs-msg:hidden instead.")
  (hidden m))

(cl:ensure-generic-function 'hash-val :lambda-list '(m))
(cl:defmethod hash-val ((m <Interaction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rocon_interaction_msgs-msg:hash-val is deprecated.  Use rocon_interaction_msgs-msg:hash instead.")
  (hash m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Interaction>)))
    "Constants for message type '<Interaction>"
  '((:UNLIMITED_INTERACTIONS . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Interaction)))
    "Constants for message type 'Interaction"
  '((:UNLIMITED_INTERACTIONS . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Interaction>) ostream)
  "Serializes a message object of type '<Interaction>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'compatibility))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'compatibility))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'icon) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'namespace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'namespace))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remappings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'remappings))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameters))
  (cl:let* ((signed (cl:slot-value msg 'max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bringup_pairing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'teardown_pairing) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'required_pairings))))
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
   (cl:slot-value msg 'required_pairings))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hidden) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'hash)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Interaction>) istream)
  "Deserializes a message object of type '<Interaction>"
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
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'compatibility) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'compatibility) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'icon) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'namespace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'namespace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remappings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remappings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rocon_std_msgs-msg:Remapping))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameters) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameters) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'bringup_pairing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'teardown_pairing) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'required_pairings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'required_pairings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:slot-value msg 'hidden) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hash) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Interaction>)))
  "Returns string type for a message object of type '<Interaction>"
  "rocon_interaction_msgs/Interaction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interaction)))
  "Returns string type for a message object of type 'Interaction"
  "rocon_interaction_msgs/Interaction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Interaction>)))
  "Returns md5sum for a message object of type '<Interaction>"
  "654684c49f3d36d7af7c76c44f9b80e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Interaction)))
  "Returns md5sum for a message object of type 'Interaction"
  "654684c49f3d36d7af7c76c44f9b80e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Interaction>)))
  "Returns full string definition for message of type '<Interaction>"
  (cl:format cl:nil "###############################################################~%# Required Specifications~%###############################################################~%~%# User friendly version of the name. Useful to be customised~%# differently from the name for either 1) branding, or 2) because~%# some names are complicated visually (e.g. android names).~%string name~%~%# This should be the string required to install and execute~%# the interaction from a remocon. ~%# - android app : the intent action name (e.g. com.github.rosjava.android_apps.listener.Listener)~%# - web app : the url~%# - roslaunch : package resource name (e.g. gopher_meta/minimal.launch)~%# - rosrun : package resource name (e.g. gopher_meta/enable_motors)~%# - global : just the executable (e.g. rocon_master_info)~%string command~%~%# A rocon uri string denoting the platforms this interaction~%# is compatible with~%string compatibility~%~%###############################################################~%# Optional Specifications~%###############################################################~%~%# The group this solution has configured the interaction for.~%string group~%~%# Should be a default for the interaction, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# Again, should exist a default, but may want to override it.~%rocon_std_msgs/Icon icon~%~%# The namespace that this interaction will be associated~%# with. Interfaces from the interaction will be automatically pushed~%# into this namespace (for concerts it will be typically~%# used by the services to push interfaces into /services/_service_name_).~%# It is up to the user to make sure this is unique to avoid~%# potential conflicts.~%string namespace~%~%# Any remappings that need to be applied~%rocon_std_msgs/Remapping[] remappings~%~%# Yaml string representing parameters for the interaction~%string parameters~%~%# Maximum number of permitted connections (-1 = any)~%int32 UNLIMITED_INTERACTIONS = -1~%int32 max~%~%# If it should be paired with launch configurations via rapps~%bool bringup_pairing~%bool teardown_pairing~%string[] required_pairings~%~%# whether it should be a hidden icon in a remocon~%bool hidden~%~%###############################################################~%# Parameters finalised by the interactions manager~%###############################################################~%~%# This is a crc32 hash code for the name-group-command~%# triple that uniquely identifies this interaction.~%# crc32 gets a few collisions, so we should be careful of that.~%# It is used by the nfc android auto-launching program so we can~%# compactify the request in the url sent by the nfc to the autolauncher.~%int32 hash~%~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Interaction)))
  "Returns full string definition for message of type 'Interaction"
  (cl:format cl:nil "###############################################################~%# Required Specifications~%###############################################################~%~%# User friendly version of the name. Useful to be customised~%# differently from the name for either 1) branding, or 2) because~%# some names are complicated visually (e.g. android names).~%string name~%~%# This should be the string required to install and execute~%# the interaction from a remocon. ~%# - android app : the intent action name (e.g. com.github.rosjava.android_apps.listener.Listener)~%# - web app : the url~%# - roslaunch : package resource name (e.g. gopher_meta/minimal.launch)~%# - rosrun : package resource name (e.g. gopher_meta/enable_motors)~%# - global : just the executable (e.g. rocon_master_info)~%string command~%~%# A rocon uri string denoting the platforms this interaction~%# is compatible with~%string compatibility~%~%###############################################################~%# Optional Specifications~%###############################################################~%~%# The group this solution has configured the interaction for.~%string group~%~%# Should be a default for the interaction, but sometimes useful to~%# override it to provide more human friendly information.~%string description~%~%# Again, should exist a default, but may want to override it.~%rocon_std_msgs/Icon icon~%~%# The namespace that this interaction will be associated~%# with. Interfaces from the interaction will be automatically pushed~%# into this namespace (for concerts it will be typically~%# used by the services to push interfaces into /services/_service_name_).~%# It is up to the user to make sure this is unique to avoid~%# potential conflicts.~%string namespace~%~%# Any remappings that need to be applied~%rocon_std_msgs/Remapping[] remappings~%~%# Yaml string representing parameters for the interaction~%string parameters~%~%# Maximum number of permitted connections (-1 = any)~%int32 UNLIMITED_INTERACTIONS = -1~%int32 max~%~%# If it should be paired with launch configurations via rapps~%bool bringup_pairing~%bool teardown_pairing~%string[] required_pairings~%~%# whether it should be a hidden icon in a remocon~%bool hidden~%~%###############################################################~%# Parameters finalised by the interactions manager~%###############################################################~%~%# This is a crc32 hash code for the name-group-command~%# triple that uniquely identifies this interaction.~%# crc32 gets a few collisions, so we should be careful of that.~%# It is used by the nfc android auto-launching program so we can~%# compactify the request in the url sent by the nfc to the autolauncher.~%int32 hash~%~%~%================================================================================~%MSG: rocon_std_msgs/Icon~%# Used to idenfity the original package/filename resource this icon was/is to be loaded from~%# This typically doesn't have to be set, but can be very useful when loading icons from yaml definitions.~%string resource_name~%~%# Image data format.  \"jpeg\" or \"png\"~%string format~%~%# Image data.~%uint8[] data~%================================================================================~%MSG: rocon_std_msgs/Remapping~%# Describes your typical ros remapping~%~%string remap_from~%string remap_to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Interaction>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'compatibility))
     4 (cl:length (cl:slot-value msg 'group))
     4 (cl:length (cl:slot-value msg 'description))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'icon))
     4 (cl:length (cl:slot-value msg 'namespace))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remappings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'parameters))
     4
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'required_pairings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Interaction>))
  "Converts a ROS message object to a list"
  (cl:list 'Interaction
    (cl:cons ':name (name msg))
    (cl:cons ':command (command msg))
    (cl:cons ':compatibility (compatibility msg))
    (cl:cons ':group (group msg))
    (cl:cons ':description (description msg))
    (cl:cons ':icon (icon msg))
    (cl:cons ':namespace (namespace msg))
    (cl:cons ':remappings (remappings msg))
    (cl:cons ':parameters (parameters msg))
    (cl:cons ':max (max msg))
    (cl:cons ':bringup_pairing (bringup_pairing msg))
    (cl:cons ':teardown_pairing (teardown_pairing msg))
    (cl:cons ':required_pairings (required_pairings msg))
    (cl:cons ':hidden (hidden msg))
    (cl:cons ':hash (hash msg))
))
