# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rocon_std_msgs: 16 messages, 1 services")

set(MSG_I_FLAGS "-Irocon_std_msgs:/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg;-Irocon_std_msgs:/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Irocon_service_pair_msgs:/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg;-Iuuid_msgs:/opt/ros/kinetic/share/uuid_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rocon_std_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg" "rocon_std_msgs/Connection"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg" "rocon_std_msgs/Icon"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg" "rocon_std_msgs/StringsRequest:uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg" "rocon_std_msgs/Connection"
)

get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg" "rocon_std_msgs/StringsPairRequest:rocon_std_msgs/StringsResponse:rocon_std_msgs/StringsRequest:uuid_msgs/UniqueID:rocon_std_msgs/StringsPairResponse"
)

get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg" "rocon_std_msgs/StringsResponse:uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg" ""
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg" NAME_WE)
add_custom_target(_rocon_std_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_std_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)

### Generating Services
_generate_srv_cpp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
)

### Generating Module File
_generate_module_cpp(rocon_std_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rocon_std_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rocon_std_msgs_generate_messages rocon_std_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_cpp _rocon_std_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_std_msgs_gencpp)
add_dependencies(rocon_std_msgs_gencpp rocon_std_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_std_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)

### Generating Services
_generate_srv_eus(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
)

### Generating Module File
_generate_module_eus(rocon_std_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rocon_std_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rocon_std_msgs_generate_messages rocon_std_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_eus _rocon_std_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_std_msgs_geneus)
add_dependencies(rocon_std_msgs_geneus rocon_std_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_std_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)

### Generating Services
_generate_srv_lisp(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
)

### Generating Module File
_generate_module_lisp(rocon_std_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rocon_std_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rocon_std_msgs_generate_messages rocon_std_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_lisp _rocon_std_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_std_msgs_genlisp)
add_dependencies(rocon_std_msgs_genlisp rocon_std_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_std_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)

### Generating Services
_generate_srv_nodejs(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
)

### Generating Module File
_generate_module_nodejs(rocon_std_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rocon_std_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rocon_std_msgs_generate_messages rocon_std_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_nodejs _rocon_std_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_std_msgs_gennodejs)
add_dependencies(rocon_std_msgs_gennodejs rocon_std_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_std_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)
_generate_msg_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)

### Generating Services
_generate_srv_py(rocon_std_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
)

### Generating Module File
_generate_module_py(rocon_std_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rocon_std_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rocon_std_msgs_generate_messages rocon_std_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg" NAME_WE)
add_dependencies(rocon_std_msgs_generate_messages_py _rocon_std_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_std_msgs_genpy)
add_dependencies(rocon_std_msgs_genpy rocon_std_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_std_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_std_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rocon_std_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET rocon_service_pair_msgs_generate_messages_cpp)
  add_dependencies(rocon_std_msgs_generate_messages_cpp rocon_service_pair_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_std_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rocon_std_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET rocon_service_pair_msgs_generate_messages_eus)
  add_dependencies(rocon_std_msgs_generate_messages_eus rocon_service_pair_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_std_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rocon_std_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET rocon_service_pair_msgs_generate_messages_lisp)
  add_dependencies(rocon_std_msgs_generate_messages_lisp rocon_service_pair_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_std_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rocon_std_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET rocon_service_pair_msgs_generate_messages_nodejs)
  add_dependencies(rocon_std_msgs_generate_messages_nodejs rocon_service_pair_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_std_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rocon_std_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET rocon_service_pair_msgs_generate_messages_py)
  add_dependencies(rocon_std_msgs_generate_messages_py rocon_service_pair_msgs_generate_messages_py)
endif()
