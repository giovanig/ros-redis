;; Auto-generated. Do not edit!


(when (boundp 'rocon_interaction_msgs::RequestInteraction)
  (if (not (find-package "ROCON_INTERACTION_MSGS"))
    (make-package "ROCON_INTERACTION_MSGS"))
  (shadow 'RequestInteraction (find-package "ROCON_INTERACTION_MSGS")))
(unless (find-package "ROCON_INTERACTION_MSGS::REQUESTINTERACTION")
  (make-package "ROCON_INTERACTION_MSGS::REQUESTINTERACTION"))
(unless (find-package "ROCON_INTERACTION_MSGS::REQUESTINTERACTIONREQUEST")
  (make-package "ROCON_INTERACTION_MSGS::REQUESTINTERACTIONREQUEST"))
(unless (find-package "ROCON_INTERACTION_MSGS::REQUESTINTERACTIONRESPONSE")
  (make-package "ROCON_INTERACTION_MSGS::REQUESTINTERACTIONRESPONSE"))

(in-package "ROS")





(defclass rocon_interaction_msgs::RequestInteractionRequest
  :super ros::object
  :slots (_remocon _hash ))

(defmethod rocon_interaction_msgs::RequestInteractionRequest
  (:init
   (&key
    ((:remocon __remocon) "")
    ((:hash __hash) 0)
    )
   (send-super :init)
   (setq _remocon (string __remocon))
   (setq _hash (round __hash))
   self)
  (:remocon
   (&optional __remocon)
   (if __remocon (setq _remocon __remocon)) _remocon)
  (:hash
   (&optional __hash)
   (if __hash (setq _hash __hash)) _hash)
  (:serialization-length
   ()
   (+
    ;; string _remocon
    4 (length _remocon)
    ;; int32 _hash
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _remocon
       (write-long (length _remocon) s) (princ _remocon s)
     ;; int32 _hash
       (write-long _hash s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _remocon
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remocon (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _hash
     (setq _hash (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rocon_interaction_msgs::RequestInteractionResponse
  :super ros::object
  :slots (_result _message ))

(defmethod rocon_interaction_msgs::RequestInteractionResponse
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
    ;; int8 _result
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _result
       (write-byte _result s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _result 127) (setq _result (- _result 256)))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rocon_interaction_msgs::RequestInteraction
  :super ros::object
  :slots ())

(setf (get rocon_interaction_msgs::RequestInteraction :md5sum-) "e252c21f038eca737dee811ede8faaf0")
(setf (get rocon_interaction_msgs::RequestInteraction :datatype-) "rocon_interaction_msgs/RequestInteraction")
(setf (get rocon_interaction_msgs::RequestInteraction :request) rocon_interaction_msgs::RequestInteractionRequest)
(setf (get rocon_interaction_msgs::RequestInteraction :response) rocon_interaction_msgs::RequestInteractionResponse)

(defmethod rocon_interaction_msgs::RequestInteractionRequest
  (:response () (instance rocon_interaction_msgs::RequestInteractionResponse :init)))

(setf (get rocon_interaction_msgs::RequestInteractionRequest :md5sum-) "e252c21f038eca737dee811ede8faaf0")
(setf (get rocon_interaction_msgs::RequestInteractionRequest :datatype-) "rocon_interaction_msgs/RequestInteractionRequest")
(setf (get rocon_interaction_msgs::RequestInteractionRequest :definition-)
      "



string remocon


int32 hash

---


int8 result


string message

")

(setf (get rocon_interaction_msgs::RequestInteractionResponse :md5sum-) "e252c21f038eca737dee811ede8faaf0")
(setf (get rocon_interaction_msgs::RequestInteractionResponse :datatype-) "rocon_interaction_msgs/RequestInteractionResponse")
(setf (get rocon_interaction_msgs::RequestInteractionResponse :definition-)
      "



string remocon


int32 hash

---


int8 result


string message

")



(provide :rocon_interaction_msgs/RequestInteraction "e252c21f038eca737dee811ede8faaf0")


