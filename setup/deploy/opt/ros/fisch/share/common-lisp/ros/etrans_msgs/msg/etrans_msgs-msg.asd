
(cl:in-package :asdf)

(defsystem "etrans_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "etrans_intersection" :depends-on ("_package_etrans_intersection"))
    (:file "_package_etrans_intersection" :depends-on ("_package"))
    (:file "etrans_lane" :depends-on ("_package_etrans_lane"))
    (:file "_package_etrans_lane" :depends-on ("_package"))
    (:file "etrans_latlon" :depends-on ("_package_etrans_latlon"))
    (:file "_package_etrans_latlon" :depends-on ("_package"))
    (:file "etrans_light" :depends-on ("_package_etrans_light"))
    (:file "_package_etrans_light" :depends-on ("_package"))
    (:file "etrans_vehicle" :depends-on ("_package_etrans_vehicle"))
    (:file "_package_etrans_vehicle" :depends-on ("_package"))
  ))