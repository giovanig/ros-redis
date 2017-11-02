;; Auto-generated. Do not edit!


(when (boundp 'zeroconf_msgs::PublishedService)
  (if (not (find-package "ZEROCONF_MSGS"))
    (make-package "ZEROCONF_MSGS"))
  (shadow 'PublishedService (find-package "ZEROCONF_MSGS")))
(unless (find-package "ZEROCONF_MSGS::PUBLISHEDSERVICE")
  (make-package "ZEROCONF_MSGS::PUBLISHEDSERVICE"))

(in-package "ROS")
;;//! \htmlinclude PublishedService.msg.html


(defclass zeroconf_msgs::PublishedService
  :super ros::object
  :slots (_name _type _domain _port _description ))

(defmethod zeroconf_msgs::PublishedService
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:domain __domain) "")
    ((:port __port) 0)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _domain (string __domain))
   (setq _port (round __port))
   (setq _description (string __description))
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
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; string _domain
    4 (length _domain)
    ;; int32 _port
    4
    ;; string _description
    4 (length _description)
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
     ;; int32 _port
       (write-long _port s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
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
   ;; int32 _port
     (setq _port (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get zeroconf_msgs::PublishedService :md5sum-) "a1b00555a59ffeb95091f591a6ba849a")
(setf (get zeroconf_msgs::PublishedService :datatype-) "zeroconf_msgs/PublishedService")
(setf (get zeroconf_msgs::PublishedService :definition-)
      "#
# Provides all the properties required for publishing of a zeroconf service.

string name
string type
string domain
int32 port
string description

")



(provide :zeroconf_msgs/PublishedService "a1b00555a59ffeb95091f591a6ba849a")


