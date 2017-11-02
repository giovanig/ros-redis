;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::Strings)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'Strings (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::STRINGS")
  (make-package "ROCON_INTERACTION_MSGS::STRINGS"))

(in-package "ROS")
;;//! \htmlinclude Strings.msg.html


(intern "*REMOCONS_NAMESPACE*" (find-package "ROCON_INTERACTION_MSGS::STRINGS"))
(shadow '*REMOCONS_NAMESPACE* (find-package "ROCON_INTERACTION_MSGS::STRINGS"))
(defconstant rocon_interaction_msgs::Strings::*REMOCONS_NAMESPACE* "/remocons")
(defclass rocon_interaction_msgs::Strings
  :super ros::object
  :slots ())

(defmethod rocon_interaction_msgs::Strings
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

(setf (get rocon_interaction_msgs::Strings :md5sum-) "7279ef1b62bbde7b3bec17766ef2c127")
(setf (get rocon_interaction_msgs::Strings :datatype-) "rocon_interaction_msgs/Strings")
(setf (get rocon_interaction_msgs::Strings :definition-)
      "# Strings that are constant with respect to the entire concert. Listing them here
# allows every user to automatically update if there are any refactorings. Avoid
# hardcoding these here if possible (see concert_msgs.Strings for a good rant).

# Namespaces

string REMOCONS_NAMESPACE = /remocons

")



(provide :rocon_interaction_msgs/Strings "7279ef1b62bbde7b3bec17766ef2c127")


