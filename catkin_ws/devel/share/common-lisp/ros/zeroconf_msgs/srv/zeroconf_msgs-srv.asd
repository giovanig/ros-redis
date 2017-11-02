
(cl:in-package :asdf)

(defsystem "zeroconf_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :zeroconf_msgs-msg
)
  :components ((:file "_package")
    (:file "AddListener" :depends-on ("_package_AddListener"))
    (:file "_package_AddListener" :depends-on ("_package"))
    (:file "AddService" :depends-on ("_package_AddService"))
    (:file "_package_AddService" :depends-on ("_package"))
    (:file "ListDiscoveredServices" :depends-on ("_package_ListDiscoveredServices"))
    (:file "_package_ListDiscoveredServices" :depends-on ("_package"))
    (:file "ListPublishedServices" :depends-on ("_package_ListPublishedServices"))
    (:file "_package_ListPublishedServices" :depends-on ("_package"))
    (:file "RemoveListener" :depends-on ("_package_RemoveListener"))
    (:file "_package_RemoveListener" :depends-on ("_package"))
    (:file "RemoveService" :depends-on ("_package_RemoveService"))
    (:file "_package_RemoveService" :depends-on ("_package"))
  ))