;; Auto-generated. Do not edit!


(when (boundp 'zeroconf_msgs::Protocols)
  (if (not (find-package "ZEROCONF_MSGS"))
    (make-package "ZEROCONF_MSGS"))
  (shadow 'Protocols (find-package "ZEROCONF_MSGS")))
(unless (find-package "ZEROCONF_MSGS::PROTOCOLS")
  (make-package "ZEROCONF_MSGS::PROTOCOLS"))

(in-package "ROS")
;;//! \htmlinclude Protocols.msg.html


(intern "*UNSPECIFIED*" (find-package "ZEROCONF_MSGS::PROTOCOLS"))
(shadow '*UNSPECIFIED* (find-package "ZEROCONF_MSGS::PROTOCOLS"))
(defconstant zeroconf_msgs::Protocols::*UNSPECIFIED* 0)
(intern "*IPV4*" (find-package "ZEROCONF_MSGS::PROTOCOLS"))
(shadow '*IPV4* (find-package "ZEROCONF_MSGS::PROTOCOLS"))
(defconstant zeroconf_msgs::Protocols::*IPV4* 1)
(intern "*IPV6*" (find-package "ZEROCONF_MSGS::PROTOCOLS"))
(shadow '*IPV6* (find-package "ZEROCONF_MSGS::PROTOCOLS"))
(defconstant zeroconf_msgs::Protocols::*IPV6* 2)
(defclass zeroconf_msgs::Protocols
  :super ros::object
  :slots ())

(defmethod zeroconf_msgs::Protocols
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

(setf (get zeroconf_msgs::Protocols :md5sum-) "6e173730dc50e42e6497a38ee52e9e4d")
(setf (get zeroconf_msgs::Protocols :datatype-) "zeroconf_msgs/Protocols")
(setf (get zeroconf_msgs::Protocols :definition-)
      "
# Protocol definitions used by all zeroconf messages and services.

int8 UNSPECIFIED = 0
int8 IPV4 = 1
int8 IPV6 = 2

")



(provide :zeroconf_msgs/Protocols "6e173730dc50e42e6497a38ee52e9e4d")


