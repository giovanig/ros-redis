# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "zeroconf_msgs: 3 messages, 6 services")

set(MSG_I_FLAGS "-Izeroconf_msgs:/home/giovani/catkin_ws/src/zeroconf_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(zeroconf_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg" NAME_WE)
add_custom_target(_zeroconf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zeroconf_msgs" "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv" NAME_WE)
add_custom_target(_zeroconf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zeroconf_msgs" "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv" NAME_WE)
add_custom_target(_zeroconf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zeroconf_msgs" "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv" "zeroconf_msgs/PublishedService"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv" NAME_WE)
add_custom_target(_zeroconf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zeroconf_msgs" "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv" NAME_WE)
add_custom_target(_zeroconf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zeroconf_msgs" "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv" "zeroconf_msgs/DiscoveredService"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv" NAME_WE)
add_custom_target(_zeroconf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zeroconf_msgs" "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv" "zeroconf_msgs/PublishedService"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv" NAME_WE)
add_custom_target(_zeroconf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zeroconf_msgs" "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv" "zeroconf_msgs/PublishedService"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg" NAME_WE)
add_custom_target(_zeroconf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zeroconf_msgs" "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg" NAME_WE)
add_custom_target(_zeroconf_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zeroconf_msgs" "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
)
_generate_msg_cpp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
)
_generate_msg_cpp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
)

### Generating Services
_generate_srv_cpp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_cpp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_cpp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_cpp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_cpp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_cpp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
)

### Generating Module File
_generate_module_cpp(zeroconf_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(zeroconf_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(zeroconf_msgs_generate_messages zeroconf_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_cpp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_cpp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_cpp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_cpp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_cpp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_cpp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_cpp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_cpp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_cpp _zeroconf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zeroconf_msgs_gencpp)
add_dependencies(zeroconf_msgs_gencpp zeroconf_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zeroconf_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
)
_generate_msg_eus(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
)
_generate_msg_eus(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
)

### Generating Services
_generate_srv_eus(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_eus(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_eus(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_eus(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_eus(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_eus(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
)

### Generating Module File
_generate_module_eus(zeroconf_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(zeroconf_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(zeroconf_msgs_generate_messages zeroconf_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_eus _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_eus _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_eus _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_eus _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_eus _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_eus _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_eus _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_eus _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_eus _zeroconf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zeroconf_msgs_geneus)
add_dependencies(zeroconf_msgs_geneus zeroconf_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zeroconf_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
)
_generate_msg_lisp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
)
_generate_msg_lisp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
)

### Generating Services
_generate_srv_lisp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_lisp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_lisp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_lisp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_lisp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_lisp(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
)

### Generating Module File
_generate_module_lisp(zeroconf_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(zeroconf_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(zeroconf_msgs_generate_messages zeroconf_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_lisp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_lisp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_lisp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_lisp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_lisp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_lisp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_lisp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_lisp _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_lisp _zeroconf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zeroconf_msgs_genlisp)
add_dependencies(zeroconf_msgs_genlisp zeroconf_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zeroconf_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
)
_generate_msg_nodejs(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
)
_generate_msg_nodejs(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
)

### Generating Services
_generate_srv_nodejs(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_nodejs(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_nodejs(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_nodejs(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_nodejs(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_nodejs(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
)

### Generating Module File
_generate_module_nodejs(zeroconf_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(zeroconf_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(zeroconf_msgs_generate_messages zeroconf_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_nodejs _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_nodejs _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_nodejs _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_nodejs _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_nodejs _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_nodejs _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_nodejs _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_nodejs _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_nodejs _zeroconf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zeroconf_msgs_gennodejs)
add_dependencies(zeroconf_msgs_gennodejs zeroconf_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zeroconf_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
)
_generate_msg_py(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
)
_generate_msg_py(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
)

### Generating Services
_generate_srv_py(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_py(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_py(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_py(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_py(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
)
_generate_srv_py(zeroconf_msgs
  "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
)

### Generating Module File
_generate_module_py(zeroconf_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(zeroconf_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(zeroconf_msgs_generate_messages zeroconf_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/PublishedService.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_py _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddListener.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_py _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/AddService.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_py _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveListener.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_py _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListDiscoveredServices.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_py _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/RemoveService.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_py _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/srv/ListPublishedServices.srv" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_py _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/Protocols.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_py _zeroconf_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/zeroconf_msgs/msg/DiscoveredService.msg" NAME_WE)
add_dependencies(zeroconf_msgs_generate_messages_py _zeroconf_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zeroconf_msgs_genpy)
add_dependencies(zeroconf_msgs_genpy zeroconf_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zeroconf_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zeroconf_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(zeroconf_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zeroconf_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(zeroconf_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zeroconf_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(zeroconf_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zeroconf_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(zeroconf_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zeroconf_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(zeroconf_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
