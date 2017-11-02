# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "scheduler_msgs: 5 messages, 0 services")

set(MSG_I_FLAGS "-Ischeduler_msgs:/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg;-Irocon_std_msgs:/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg;-Irocon_std_msgs:/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/kinetic/share/uuid_msgs/cmake/../msg;-Irocon_service_pair_msgs:/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(scheduler_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" NAME_WE)
add_custom_target(_scheduler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scheduler_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" "std_msgs/Header:scheduler_msgs/CurrentStatus:uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg" NAME_WE)
add_custom_target(_scheduler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scheduler_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg" "rocon_std_msgs/KeyValue:rocon_std_msgs/Remapping:uuid_msgs/UniqueID:scheduler_msgs/Resource"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" NAME_WE)
add_custom_target(_scheduler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scheduler_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" "rocon_std_msgs/KeyValue:uuid_msgs/UniqueID:rocon_std_msgs/Remapping"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" NAME_WE)
add_custom_target(_scheduler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scheduler_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" "uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" NAME_WE)
add_custom_target(_scheduler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scheduler_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" "std_msgs/Header:scheduler_msgs/Resource:rocon_std_msgs/KeyValue:scheduler_msgs/Request:uuid_msgs/UniqueID:rocon_std_msgs/Remapping"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_cpp(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_cpp(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_cpp(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_cpp(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(scheduler_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(scheduler_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(scheduler_msgs_generate_messages scheduler_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_cpp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_cpp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_cpp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_cpp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_cpp _scheduler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scheduler_msgs_gencpp)
add_dependencies(scheduler_msgs_gencpp scheduler_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scheduler_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_eus(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_eus(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_eus(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_eus(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scheduler_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(scheduler_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scheduler_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(scheduler_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(scheduler_msgs_generate_messages scheduler_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_eus _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_eus _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_eus _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_eus _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_eus _scheduler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scheduler_msgs_geneus)
add_dependencies(scheduler_msgs_geneus scheduler_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scheduler_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_lisp(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_lisp(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_lisp(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_lisp(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(scheduler_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(scheduler_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(scheduler_msgs_generate_messages scheduler_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_lisp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_lisp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_lisp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_lisp _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_lisp _scheduler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scheduler_msgs_genlisp)
add_dependencies(scheduler_msgs_genlisp scheduler_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scheduler_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_nodejs(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_nodejs(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_nodejs(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_nodejs(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scheduler_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(scheduler_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scheduler_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(scheduler_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(scheduler_msgs_generate_messages scheduler_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_nodejs _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_nodejs _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_nodejs _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_nodejs _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_nodejs _scheduler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scheduler_msgs_gennodejs)
add_dependencies(scheduler_msgs_gennodejs scheduler_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scheduler_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_py(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_py(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_py(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg"
  "${MSG_I_FLAGS}"
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg;/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
)
_generate_msg_py(scheduler_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(scheduler_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(scheduler_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(scheduler_msgs_generate_messages scheduler_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/KnownResources.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_py _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Request.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_py _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/Resource.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_py _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/CurrentStatus.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_py _scheduler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/scheduler_msgs/msg/SchedulerRequests.msg" NAME_WE)
add_dependencies(scheduler_msgs_generate_messages_py _scheduler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scheduler_msgs_genpy)
add_dependencies(scheduler_msgs_genpy scheduler_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scheduler_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scheduler_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET rocon_std_msgs_generate_messages_cpp)
  add_dependencies(scheduler_msgs_generate_messages_cpp rocon_std_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(scheduler_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET uuid_msgs_generate_messages_cpp)
  add_dependencies(scheduler_msgs_generate_messages_cpp uuid_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scheduler_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scheduler_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET rocon_std_msgs_generate_messages_eus)
  add_dependencies(scheduler_msgs_generate_messages_eus rocon_std_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(scheduler_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET uuid_msgs_generate_messages_eus)
  add_dependencies(scheduler_msgs_generate_messages_eus uuid_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scheduler_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET rocon_std_msgs_generate_messages_lisp)
  add_dependencies(scheduler_msgs_generate_messages_lisp rocon_std_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(scheduler_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET uuid_msgs_generate_messages_lisp)
  add_dependencies(scheduler_msgs_generate_messages_lisp uuid_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scheduler_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scheduler_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET rocon_std_msgs_generate_messages_nodejs)
  add_dependencies(scheduler_msgs_generate_messages_nodejs rocon_std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(scheduler_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET uuid_msgs_generate_messages_nodejs)
  add_dependencies(scheduler_msgs_generate_messages_nodejs uuid_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scheduler_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET rocon_std_msgs_generate_messages_py)
  add_dependencies(scheduler_msgs_generate_messages_py rocon_std_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(scheduler_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET uuid_msgs_generate_messages_py)
  add_dependencies(scheduler_msgs_generate_messages_py uuid_msgs_generate_messages_py)
endif()
