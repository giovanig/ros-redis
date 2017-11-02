
(cl:in-package :asdf)

(defsystem "zeroconf_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DiscoveredService" :depends-on ("_package_DiscoveredService"))
    (:file "_package_DiscoveredService" :depends-on ("_package"))
    (:file "Protocols" :depends-on ("_package_Protocols"))
    (:file "_package_Protocols" :depends-on ("_package"))
    (:file "PublishedService" :depends-on ("_package_PublishedService"))
    (:file "_package_PublishedService" :depends-on ("_package"))
  ))