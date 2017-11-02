# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rocon_app_manager_msgs: 8 messages, 5 services")

set(MSG_I_FLAGS "-Irocon_app_manager_msgs:/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg;-Irocon_std_msgs:/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg;-Irocon_std_msgs:/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Irocon_service_pair_msgs:/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg;-Iuuid_msgs:/opt/ros/kinetic/share/uuid_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rocon_app_manager_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg" "rocon_app_manager_msgs/PublicInterface"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg" "rocon_std_msgs/KeyValue:rocon_std_msgs/Icon"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv" "rocon_std_msgs/KeyValue:rocon_std_msgs/Remapping"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg" "rocon_app_manager_msgs/PublishedInterface:rocon_std_msgs/Icon:rocon_std_msgs/KeyValue:rocon_app_manager_msgs/Rapp:rocon_app_manager_msgs/PublicInterface"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv" "rocon_std_msgs/Icon:rocon_std_msgs/KeyValue:rocon_app_manager_msgs/Rapp"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg" "rocon_std_msgs/Icon:rocon_std_msgs/KeyValue:rocon_app_manager_msgs/Rapp"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv" NAME_WE)
add_custom_target(_rocon_app_manager_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_app_manager_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)

### Generating Services
_generate_srv_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_cpp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
)

### Generating Module File
_generate_module_cpp(rocon_app_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rocon_app_manager_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rocon_app_manager_msgs_generate_messages rocon_app_manager_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_cpp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_app_manager_msgs_gencpp)
add_dependencies(rocon_app_manager_msgs_gencpp rocon_app_manager_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_app_manager_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)

### Generating Services
_generate_srv_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_eus(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
)

### Generating Module File
_generate_module_eus(rocon_app_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rocon_app_manager_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rocon_app_manager_msgs_generate_messages rocon_app_manager_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_eus _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_app_manager_msgs_geneus)
add_dependencies(rocon_app_manager_msgs_geneus rocon_app_manager_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_app_manager_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)

### Generating Services
_generate_srv_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_lisp(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
)

### Generating Module File
_generate_module_lisp(rocon_app_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rocon_app_manager_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rocon_app_manager_msgs_generate_messages rocon_app_manager_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_lisp _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_app_manager_msgs_genlisp)
add_dependencies(rocon_app_manager_msgs_genlisp rocon_app_manager_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_app_manager_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)

### Generating Services
_generate_srv_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_nodejs(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
)

### Generating Module File
_generate_module_nodejs(rocon_app_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rocon_app_manager_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rocon_app_manager_msgs_generate_messages rocon_app_manager_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_app_manager_msgs_gennodejs)
add_dependencies(rocon_app_manager_msgs_gennodejs rocon_app_manager_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_app_manager_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_msg_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)

### Generating Services
_generate_srv_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)
_generate_srv_py(rocon_app_manager_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
)

### Generating Module File
_generate_module_py(rocon_app_manager_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rocon_app_manager_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rocon_app_manager_msgs_generate_messages rocon_app_manager_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv" NAME_WE)
add_dependencies(rocon_app_manager_msgs_generate_messages_py _rocon_app_manager_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_app_manager_msgs_genpy)
add_dependencies(rocon_app_manager_msgs_genpy rocon_app_manager_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_app_manager_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_app_manager_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET rocon_std_msgs_generate_messages_cpp)
  add_dependencies(rocon_app_manager_msgs_generate_messages_cpp rocon_std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_app_manager_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET rocon_std_msgs_generate_messages_eus)
  add_dependencies(rocon_app_manager_msgs_generate_messages_eus rocon_std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_app_manager_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET rocon_std_msgs_generate_messages_lisp)
  add_dependencies(rocon_app_manager_msgs_generate_messages_lisp rocon_std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_app_manager_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET rocon_std_msgs_generate_messages_nodejs)
  add_dependencies(rocon_app_manager_msgs_generate_messages_nodejs rocon_std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_app_manager_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET rocon_std_msgs_generate_messages_py)
  add_dependencies(rocon_app_manager_msgs_generate_messages_py rocon_std_msgs_generate_messages_py)
endif()
