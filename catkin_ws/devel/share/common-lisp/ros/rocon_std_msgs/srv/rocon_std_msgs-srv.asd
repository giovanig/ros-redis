
(cl:in-package :asdf)

(defsystem "rocon_std_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EmptyString" :depends-on ("_package_EmptyString"))
    (:file "_package_EmptyString" :depends-on ("_package"))
  ))