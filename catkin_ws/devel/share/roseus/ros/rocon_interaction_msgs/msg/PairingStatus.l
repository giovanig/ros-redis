;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::PairingStatus)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'PairingStatus (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::PAIRINGSTATUS")
  (make-package "ROCON_INTERACTION_MSGS::PAIRINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PairingStatus.msg.html


(defclass rocon_interaction_msgs::PairingStatus
  :super ros::object
  :slots (_active_pairing ))

(defmethod rocon_interaction_msgs::PairingStatus
  (:init
   (&key
    ((:active_pairing __active_pairing) "")
    )
   (send-super :init)
   (setq _active_pairing (string __active_pairing))
   self)
  (:active_pairing
   (&optional __active_pairing)
   (if __active_pairing (setq _active_pairing __active_pairing)) _active_pairing)
  (:serialization-length
   ()
   (+
    ;; string _active_pairing
    4 (length _active_pairing)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _active_pairing
       (write-long (length _active_pairing) s) (princ _active_pairing s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _active_pairing
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _active_pairing (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rocon_interaction_msgs::PairingStatus :md5sum-) "b404b2284f2d7e4f38394ad5a36be453")
(setf (get rocon_interaction_msgs::PairingStatus :datatype-) "rocon_interaction_msgs/PairingStatus")
(setf (get rocon_interaction_msgs::PairingStatus :definition-)
      "# Use this message to send/receive live information about the interaction
# manager's state relevant to pairing.

# This is useful for remocons to know when a rapp goes up/down or to
# provide updates about whether there are 

# The hash id of the active core interaction (one sided pair).
# Remocons should highlight this as a running interaction in their views.
string active_pairing

")



(provide :rocon_interaction_msgs/PairingStatus "b404b2284f2d7e4f38394ad5a36be453")


