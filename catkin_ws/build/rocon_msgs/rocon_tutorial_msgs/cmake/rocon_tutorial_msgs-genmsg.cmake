# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rocon_tutorial_msgs: 0 messages, 1 services")

set(MSG_I_FLAGS "-Irocon_service_pair_msgs:/home/giovani/catkin_ws/src/rocon_msgs/rocon_service_pair_msgs/msg;-Iuuid_msgs:/opt/ros/kinetic/share/uuid_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rocon_tutorial_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv" NAME_WE)
add_custom_target(_rocon_tutorial_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rocon_tutorial_msgs" "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(rocon_tutorial_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_tutorial_msgs
)

### Generating Module File
_generate_module_cpp(rocon_tutorial_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_tutorial_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rocon_tutorial_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rocon_tutorial_msgs_generate_messages rocon_tutorial_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv" NAME_WE)
add_dependencies(rocon_tutorial_msgs_generate_messages_cpp _rocon_tutorial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_tutorial_msgs_gencpp)
add_dependencies(rocon_tutorial_msgs_gencpp rocon_tutorial_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_tutorial_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(rocon_tutorial_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_tutorial_msgs
)

### Generating Module File
_generate_module_eus(rocon_tutorial_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_tutorial_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rocon_tutorial_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rocon_tutorial_msgs_generate_messages rocon_tutorial_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv" NAME_WE)
add_dependencies(rocon_tutorial_msgs_generate_messages_eus _rocon_tutorial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_tutorial_msgs_geneus)
add_dependencies(rocon_tutorial_msgs_geneus rocon_tutorial_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_tutorial_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(rocon_tutorial_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_tutorial_msgs
)

### Generating Module File
_generate_module_lisp(rocon_tutorial_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_tutorial_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rocon_tutorial_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rocon_tutorial_msgs_generate_messages rocon_tutorial_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv" NAME_WE)
add_dependencies(rocon_tutorial_msgs_generate_messages_lisp _rocon_tutorial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_tutorial_msgs_genlisp)
add_dependencies(rocon_tutorial_msgs_genlisp rocon_tutorial_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_tutorial_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(rocon_tutorial_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_tutorial_msgs
)

### Generating Module File
_generate_module_nodejs(rocon_tutorial_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_tutorial_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rocon_tutorial_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rocon_tutorial_msgs_generate_messages rocon_tutorial_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv" NAME_WE)
add_dependencies(rocon_tutorial_msgs_generate_messages_nodejs _rocon_tutorial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_tutorial_msgs_gennodejs)
add_dependencies(rocon_tutorial_msgs_gennodejs rocon_tutorial_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_tutorial_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(rocon_tutorial_msgs
  "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_tutorial_msgs
)

### Generating Module File
_generate_module_py(rocon_tutorial_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_tutorial_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rocon_tutorial_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rocon_tutorial_msgs_generate_messages rocon_tutorial_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giovani/catkin_ws/src/rocon_msgs/rocon_tutorial_msgs/srv/GetAvailableResources.srv" NAME_WE)
add_dependencies(rocon_tutorial_msgs_generate_messages_py _rocon_tutorial_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rocon_tutorial_msgs_genpy)
add_dependencies(rocon_tutorial_msgs_genpy rocon_tutorial_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rocon_tutorial_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_tutorial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rocon_tutorial_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET rocon_service_pair_msgs_generate_messages_cpp)
  add_dependencies(rocon_tutorial_msgs_generate_messages_cpp rocon_service_pair_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_tutorial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rocon_tutorial_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET rocon_service_pair_msgs_generate_messages_eus)
  add_dependencies(rocon_tutorial_msgs_generate_messages_eus rocon_service_pair_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_tutorial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rocon_tutorial_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET rocon_service_pair_msgs_generate_messages_lisp)
  add_dependencies(rocon_tutorial_msgs_generate_messages_lisp rocon_service_pair_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_tutorial_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rocon_tutorial_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET rocon_service_pair_msgs_generate_messages_nodejs)
  add_dependencies(rocon_tutorial_msgs_generate_messages_nodejs rocon_service_pair_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_tutorial_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_tutorial_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rocon_tutorial_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET rocon_service_pair_msgs_generate_messages_py)
  add_dependencies(rocon_tutorial_msgs_generate_messages_py rocon_service_pair_msgs_generate_messages_py)
endif()
