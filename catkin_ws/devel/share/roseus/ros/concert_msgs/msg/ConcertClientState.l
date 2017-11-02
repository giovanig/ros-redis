;; Auto-generated. Do not edit!


(when (boundp 'concert_msgs::ConcertClientState)
  (if (not (find-package "CONCERT_MSGS"))
    (make-package "CONCERT_MSGS"))
  (shadow 'ConcertClientState (find-package "CONCERT_MSGS")))
(unless (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE")
  (make-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ConcertClientState.msg.html


(intern "*PENDING*" (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))
(shadow '*PENDING* (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))
(defconstant concert_msgs::ConcertClientState::*PENDING* "pending")
(intern "*BAD*" (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))
(shadow '*BAD* (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))
(defconstant concert_msgs::ConcertClientState::*BAD* "bad")
(intern "*AVAILABLE*" (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))
(shadow '*AVAILABLE* (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))
(defconstant concert_msgs::ConcertClientState::*AVAILABLE* "available")
(intern "*MISSING*" (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))
(shadow '*MISSING* (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))
(defconstant concert_msgs::ConcertClientState::*MISSING* "missing")
(intern "*GONE*" (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))
(shadow '*GONE* (find-package "CONCERT_MSGS::CONCERTCLIENTSTATE"))
(defconstant concert_msgs::ConcertClientState::*GONE* "gone")
(defclass concert_msgs::ConcertClientState
  :super ros::object
  :slots ())

(defmethod concert_msgs::ConcertClientState
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

(setf (get concert_msgs::ConcertClientState :md5sum-) "476d60b200b5f957baedb64ab2b71944")
(setf (get concert_msgs::ConcertClientState :datatype-) "concert_msgs/ConcertClientState")
(setf (get concert_msgs::ConcertClientState :definition-)
      "# States of concert clients, these should always be synced with what is provided in ConductorGraph.msg
# (for completeness, but also because I do some funny magic to extra the possible list of states from there). 

# pending introspection, the client has been detected, but hasn't signalled that it wants to work with us yet
string PENDING   = pending
# the ip is invalid, unreachable or some other problem meaning we have to absolutely ignore it
string BAD       = bad
# is available for use inside this concert
string AVAILABLE = available
# has lost connection (wireless)
string MISSING   = missing
# has left the concert
string GONE      = gone

")



(provide :concert_msgs/ConcertClientState "476d60b200b5f957baedb64ab2b71944")


