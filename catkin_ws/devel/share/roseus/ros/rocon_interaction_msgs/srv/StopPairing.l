;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::StopPairing)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'StopPairing (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::STOPPAIRING")
  (make-package "ROCON_INTERACTION_MSGS::STOPPAIRING"))
(unless (find-package "ROCON_INTERACTION_MSGS::STOPPAIRINGREQUEST")
  (make-package "ROCON_INTERACTION_MSGS::STOPPAIRINGREQUEST"))
(unless (find-package "ROCON_INTERACTION_MSGS::STOPPAIRINGRESPONSE")
  (make-package "ROCON_INTERACTION_MSGS::STOPPAIRINGRESPONSE"))

(in-package "ROS")





(defclass rocon_interaction_msgs::StopPairingRequest
  :super ros::object
  :slots (_name ))

(defmethod rocon_interaction_msgs::StopPairingRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rocon_interaction_msgs::StopPairingResponse
  :super ros::object
  :slots (_result _message ))

(defmethod rocon_interaction_msgs::StopPairingResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _message (string __message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rocon_interaction_msgs::StopPairing
  :super ros::object
  :slots ())

(setf (get rocon_interaction_msgs::StopPairing :md5sum-) "f4f70c3c5d522bf6827d164317046e04")
(setf (get rocon_interaction_msgs::StopPairing :datatype-) "rocon_interaction_msgs/StopPairing")
(setf (get rocon_interaction_msgs::StopPairing :request) rocon_interaction_msgs::StopPairingRequest)
(setf (get rocon_interaction_msgs::StopPairing :response) rocon_interaction_msgs::StopPairingResponse)

(defmethod rocon_interaction_msgs::StopPairingRequest
  (:response () (instance rocon_interaction_msgs::StopPairingResponse :init)))

(setf (get rocon_interaction_msgs::StopPairingRequest :md5sum-) "f4f70c3c5d522bf6827d164317046e04")
(setf (get rocon_interaction_msgs::StopPairingRequest :datatype-) "rocon_interaction_msgs/StopPairingRequest")
(setf (get rocon_interaction_msgs::StopPairingRequest :definition-)
      "string name
---
int32 result
string message

")

(setf (get rocon_interaction_msgs::StopPairingResponse :md5sum-) "f4f70c3c5d522bf6827d164317046e04")
(setf (get rocon_interaction_msgs::StopPairingResponse :datatype-) "rocon_interaction_msgs/StopPairingResponse")
(setf (get rocon_interaction_msgs::StopPairingResponse :definition-)
      "string name
---
int32 result
string message

")



(provide :rocon_interaction_msgs/StopPairing "f4f70c3c5d522bf6827d164317046e04")


