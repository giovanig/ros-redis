
(cl:in-package :asdf)

(defsystem "rocon_interaction_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rocon_interaction_msgs-msg
)
  :components ((:file "_package")
    (:file "GetInteraction" :depends-on ("_package_GetInteraction"))
    (:file "_package_GetInteraction" :depends-on ("_package"))
    (:file "GetInteractions" :depends-on ("_package_GetInteractions"))
    (:file "_package_GetInteractions" :depends-on ("_package"))
    (:file "GetPairings" :depends-on ("_package_GetPairings"))
    (:file "_package_GetPairings" :depends-on ("_package"))
    (:file "RequestInteraction" :depends-on ("_package_RequestInteraction"))
    (:file "_package_RequestInteraction" :depends-on ("_package"))
    (:file "SetInteractions" :depends-on ("_package_SetInteractions"))
    (:file "_package_SetInteractions" :depends-on ("_package"))
    (:file "StartPairing" :depends-on ("_package_StartPairing"))
    (:file "_package_StartPairing" :depends-on ("_package"))
    (:file "StopPairing" :depends-on ("_package_StopPairing"))
    (:file "_package_StopPairing" :depends-on ("_package"))
  ))