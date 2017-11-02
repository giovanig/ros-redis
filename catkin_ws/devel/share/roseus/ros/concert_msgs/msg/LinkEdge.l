;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::LinkEdge)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'LinkEdge (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::LINKEDGE")
  (make-package "CONCERT_MSGS::LINKEDGE"))

(in-package "ROS")
;;//! \htmlinclude LinkEdge.msg.html


(defclass concert_msgs::LinkEdge
  :super ros::object
  :slots (_start _finish _remap_from _remap_to ))

(defmethod concert_msgs::LinkEdge
  (:init
   (&key
    ((:start __start) "")
    ((:finish __finish) "")
    ((:remap_from __remap_from) "")
    ((:remap_to __remap_to) "")
    )
   (send-super :init)
   (setq _start (string __start))
   (setq _finish (string __finish))
   (setq _remap_from (string __remap_from))
   (setq _remap_to (string __remap_to))
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:finish
   (&optional __finish)
   (if __finish (setq _finish __finish)) _finish)
  (:remap_from
   (&optional __remap_from)
   (if __remap_from (setq _remap_from __remap_from)) _remap_from)
  (:remap_to
   (&optional __remap_to)
   (if __remap_to (setq _remap_to __remap_to)) _remap_to)
  (:serialization-length
   ()
   (+
    ;; string _start
    4 (length _start)
    ;; string _finish
    4 (length _finish)
    ;; string _remap_from
    4 (length _remap_from)
    ;; string _remap_to
    4 (length _remap_to)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _start
       (write-long (length _start) s) (princ _start s)
     ;; string _finish
       (write-long (length _finish) s) (princ _finish s)
     ;; string _remap_from
       (write-long (length _remap_from) s) (princ _remap_from s)
     ;; string _remap_to
       (write-long (length _remap_to) s) (princ _remap_to s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _start
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _finish
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _finish (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _remap_from
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remap_from (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _remap_to
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remap_to (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get concert_msgs::LinkEdge :md5sum-) "01f86ee3e51dd78d2e2153a94d6f3865")
(setf (get concert_msgs::LinkEdge :datatype-) "concert_msgs/LinkEdge")
(setf (get concert_msgs::LinkEdge :definition-)
      "# Edge of the implementation graph. Client-Topic, or 
# Topic-Client or Client-Action or Action-Client

string start
string finish
string remap_from
string remap_to
")



(provide :concert_msgs/LinkEdge "01f86ee3e51dd78d2e2153a94d6f3865")


