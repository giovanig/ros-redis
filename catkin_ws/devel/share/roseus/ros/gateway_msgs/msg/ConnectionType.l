;; Auto-generated. Do not edit!


(when (boundp 'gateway_msgs::ConnectionType)
  (if (not (find-package "GATEWAY_MSGS"))
    (make-package "GATEWAY_MSGS"))
  (shadow 'ConnectionType (find-package "GATEWAY_MSGS")))
(unless (find-package "GATEWAY_MSGS::CONNECTIONTYPE")
  (make-package "GATEWAY_MSGS::CONNECTIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude ConnectionType.msg.html


(intern "*PUBLISHER*" (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(shadow '*PUBLISHER* (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(defconstant gateway_msgs::ConnectionType::*PUBLISHER* "publisher")
(intern "*SUBSCRIBER*" (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(shadow '*SUBSCRIBER* (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(defconstant gateway_msgs::ConnectionType::*SUBSCRIBER* "subscriber")
(intern "*SERVICE*" (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(shadow '*SERVICE* (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(defconstant gateway_msgs::ConnectionType::*SERVICE* "service")
(intern "*ACTION_CLIENT*" (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(shadow '*ACTION_CLIENT* (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(defconstant gateway_msgs::ConnectionType::*ACTION_CLIENT* "action_client")
(intern "*ACTION_SERVER*" (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(shadow '*ACTION_SERVER* (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(defconstant gateway_msgs::ConnectionType::*ACTION_SERVER* "action_server")
(intern "*INVALID*" (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(shadow '*INVALID* (find-package "GATEWAY_MSGS::CONNECTIONTYPE"))
(defconstant gateway_msgs::ConnectionType::*INVALID* "invalid")
(defclass gateway_msgs::ConnectionType
  :super ros::object
  :slots ())

(defmethod gateway_msgs::ConnectionType
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get gateway_msgs::ConnectionType :md5sum-) "65d75f1bb32566bfec48966db2073c81")
(setf (get gateway_msgs::ConnectionType :datatype-) "gateway_msgs/ConnectionType")
(setf (get gateway_msgs::ConnectionType :definition-)
      "# A connection can be 1 of 5 types
string PUBLISHER = publisher
string SUBSCRIBER = subscriber
string SERVICE = service
string ACTION_CLIENT = action_client
string ACTION_SERVER = action_server
string INVALID = invalid

")



(provide :gateway_msgs/ConnectionType "65d75f1bb32566bfec48966db2073c81")


