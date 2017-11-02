;; Auto-generated. Do not edit!


(when (boundp 'rocon_std_msgs::Strings)
  (if (not (find-package "ROCON_STD_MSGS"))
    (make-package "ROCON_STD_MSGS"))
  (shadow 'Strings (find-package "ROCON_STD_MSGS")))
(unless (find-package "ROCON_STD_MSGS::STRINGS")
  (make-package "ROCON_STD_MSGS::STRINGS"))

(in-package "ROS")
;;//! \htmlinclude Strings.msg.html


(intern "*ROCON_VERSION*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*ROCON_VERSION* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*ROCON_VERSION* "acdc")
(intern "*URI_WILDCARD*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*URI_WILDCARD* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*URI_WILDCARD* "*")
(intern "*HW_PC*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_PC* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_PC* "pc")
(intern "*HW_TURTLEBOT2*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_TURTLEBOT2* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_TURTLEBOT2* "turtlebot2")
(intern "*HW_PR2*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_PR2* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_PR2* "pr2")
(intern "*HW_WAITERBOT*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_WAITERBOT* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_WAITERBOT* "waiterbot")
(intern "*HW_ROBOT_OTHER*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_ROBOT_OTHER* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_ROBOT_OTHER* "robot_other")
(intern "*HW_GALAXY*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_GALAXY* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_GALAXY* "galaxy")
(intern "*HW_MEGA*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_MEGA* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_MEGA* "mega")
(intern "*HW_NOTE3*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_NOTE3* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_NOTE3* "note3")
(intern "*HW_PHONE_OTHER*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_PHONE_OTHER* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_PHONE_OTHER* "phone_other")
(intern "*HW_XOOM*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_XOOM* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_XOOM* "xoom")
(intern "*HW_NOTE10*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_NOTE10* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_NOTE10* "note10")
(intern "*HW_TABLET_OTHER*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*HW_TABLET_OTHER* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*HW_TABLET_OTHER* "tablet_other")
(intern "*APPLICATION_FRAMEWORK_OTHER*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*APPLICATION_FRAMEWORK_OTHER* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*APPLICATION_FRAMEWORK_OTHER* "application_framework_other")
(intern "*APPLICATION_FRAMEWORK_OPROS*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*APPLICATION_FRAMEWORK_OPROS* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*APPLICATION_FRAMEWORK_OPROS* "opros")
(intern "*APPLICATION_FRAMEWORK_GROOVY*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*APPLICATION_FRAMEWORK_GROOVY* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*APPLICATION_FRAMEWORK_GROOVY* "groovy")
(intern "*APPLICATION_FRAMEWORK_HYDRO*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*APPLICATION_FRAMEWORK_HYDRO* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*APPLICATION_FRAMEWORK_HYDRO* "hydro")
(intern "*APPLICATION_FRAMEWORK_INDIGO*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*APPLICATION_FRAMEWORK_INDIGO* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*APPLICATION_FRAMEWORK_INDIGO* "indigo")
(intern "*APPLICATION_FRAMEWORK_ROS_OTHER*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*APPLICATION_FRAMEWORK_ROS_OTHER* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*APPLICATION_FRAMEWORK_ROS_OTHER* "ros_other")
(intern "*OS_OSX*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_OSX* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_OSX* "osx")
(intern "*OS_FREEBSD*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_FREEBSD* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_FREEBSD* "freebsd")
(intern "*OS_WINXP*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_WINXP* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_WINXP* "winxp")
(intern "*OS_WINDOWS7*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_WINDOWS7* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_WINDOWS7* "windows7")
(intern "*OS_ARCH*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_ARCH* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_ARCH* "arch")
(intern "*OS_DEBIAN*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_DEBIAN* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_DEBIAN* "debian")
(intern "*OS_FEDORA*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_FEDORA* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_FEDORA* "fedora")
(intern "*OS_GENTOO*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_GENTOO* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_GENTOO* "gentoo")
(intern "*OS_PRECISE*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_PRECISE* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_PRECISE* "precise")
(intern "*OS_QUANTAL*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_QUANTAL* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_QUANTAL* "quantal")
(intern "*OS_RARING*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_RARING* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_RARING* "raring")
(intern "*OS_SAUCY*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_SAUCY* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_SAUCY* "saucy")
(intern "*OS_HONEYCOMB*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_HONEYCOMB* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_HONEYCOMB* "honeycomb")
(intern "*OS_ICE_CREAM_SANDWICH*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_ICE_CREAM_SANDWICH* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_ICE_CREAM_SANDWICH* "ice_cream_sandwich")
(intern "*OS_JELLYBEAN*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_JELLYBEAN* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_JELLYBEAN* "jellybean")
(intern "*OS_KITKAT*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_KITKAT* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_KITKAT* "kitkat")
(intern "*OS_CHROME*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_CHROME* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_CHROME* "chrome")
(intern "*OS_FIREFOX*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_FIREFOX* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_FIREFOX* "firefox")
(intern "*OS_INTERNET_EXPLORER*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_INTERNET_EXPLORER* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_INTERNET_EXPLORER* "internet_explorer")
(intern "*OS_SAFARI*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_SAFARI* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_SAFARI* "safari")
(intern "*OS_OPERA*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*OS_OPERA* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*OS_OPERA* "opera")
(intern "*TAG_SERVICE*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*TAG_SERVICE* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*TAG_SERVICE* "concert_service")
(intern "*TAG_RAPP*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*TAG_RAPP* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*TAG_RAPP* "rocon_app")
(intern "*TAG_GAZEBO_ROBOT_TYPE*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*TAG_GAZEBO_ROBOT_TYPE* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*TAG_GAZEBO_ROBOT_TYPE* "concert_gazebo")
(intern "*TAG_SOFTWARE*" (find-package "ROCON_STD_MSGS::STRINGS"))
(shadow '*TAG_SOFTWARE* (find-package "ROCON_STD_MSGS::STRINGS"))
(defconstant rocon_std_msgs::Strings::*TAG_SOFTWARE* "software_farm")
(defclass rocon_std_msgs::Strings
  :super ros::object
  :slots ())

(defmethod rocon_std_msgs::Strings
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

(setf (get rocon_std_msgs::Strings :md5sum-) "58fa1e54e6c0338b3faebae82a13e892")
(setf (get rocon_std_msgs::Strings :datatype-) "rocon_std_msgs/Strings")
(setf (get rocon_std_msgs::Strings :definition-)
      "# Strings used in the rocon framework.

################################ Versions ####################################

# Rocon versions come from the names of classical composers.
#
# ACDC - http://en.wikipedia.org/?title=AC/DC
#     Australian, awesome and on a highway to hell.

string ROCON_VERSION=acdc

######################## Rocon URIS ###########################################

# These are a convenience to help avoid typos and make easy lookups whatever
# language you are in. The real deal is in rocon_uri/yaml/rules.yaml - make
# sure these stay up to date with respect to each other (TODO: perhaps an
# autogenerator of this msg file?).

###### GENERAL IDENTIFIERS ######

string URI_WILDCARD=*

###### HARDWARE_PLATFORMS ######
string HW_PC=pc
string HW_TURTLEBOT2=turtlebot2
string HW_PR2=pr2
string HW_WAITERBOT=waiterbot
string HW_ROBOT_OTHER=robot_other
# Phones
string HW_GALAXY=galaxy
string HW_MEGA=mega
string HW_NOTE3=note3
string HW_PHONE_OTHER=phone_other
# Tablets
string HW_XOOM=xoom
string HW_NOTE10=note10
string HW_TABLET_OTHER=tablet_other

###### APPLICATION_FRAMEWORKS ######
string APPLICATION_FRAMEWORK_OTHER=application_framework_other
string APPLICATION_FRAMEWORK_OPROS=opros
# Ros
string APPLICATION_FRAMEWORK_GROOVY=groovy
string APPLICATION_FRAMEWORK_HYDRO=hydro
string APPLICATION_FRAMEWORK_INDIGO=indigo
string APPLICATION_FRAMEWORK_ROS_OTHER=ros_other

###### OPERATING SYSTEMS ######
string OS_OSX=osx
string OS_FREEBSD=freebsd
# Windows
string OS_WINXP=winxp
string OS_WINDOWS7=windows7
# linux
string OS_ARCH=arch
string OS_DEBIAN=debian
string OS_FEDORA=fedora
string OS_GENTOO=gentoo
# linux/ubuntu 
string OS_PRECISE=precise
string OS_QUANTAL=quantal
string OS_RARING=raring
string OS_SAUCY=saucy
# Android
string OS_HONEYCOMB=honeycomb
string OS_ICE_CREAM_SANDWICH=ice_cream_sandwich
string OS_JELLYBEAN=jellybean
string OS_KITKAT=kitkat
# Web
string OS_CHROME=chrome
string OS_FIREFOX=firefox
string OS_INTERNET_EXPLORER=internet_explorer
string OS_SAFARI=safari
string OS_OPERA=opera

######################## Rocon Export Tags################################

# Package exports used in concert_service_manager and rocon_app_utilities
string TAG_SERVICE=concert_service
string TAG_RAPP=rocon_app
string TAG_GAZEBO_ROBOT_TYPE=concert_gazebo
string TAG_SOFTWARE=software_farm

")



(provide :rocon_std_msgs/Strings "58fa1e54e6c0338b3faebae82a13e892")


