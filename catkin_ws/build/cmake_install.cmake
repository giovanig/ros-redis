# Install script for directory: /home/giovani/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/giovani/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giovani/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giovani/catkin_ws/install" TYPE PROGRAM FILES "/home/giovani/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giovani/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giovani/catkin_ws/install" TYPE PROGRAM FILES "/home/giovani/catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giovani/catkin_ws/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giovani/catkin_ws/install" TYPE FILE FILES "/home/giovani/catkin_ws/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giovani/catkin_ws/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giovani/catkin_ws/install" TYPE FILE FILES "/home/giovani/catkin_ws/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giovani/catkin_ws/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giovani/catkin_ws/install" TYPE FILE FILES "/home/giovani/catkin_ws/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/giovani/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/giovani/catkin_ws/install" TYPE FILE FILES "/home/giovani/catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/giovani/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_bubble_icons/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_console/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_multimaster/rocon_hub/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_multimaster/rocon_hub_client/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_icons/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_launch/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_master_info/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/rocon_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_multimaster/rocon_multimaster/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_python_redis/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_python_wifi/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_semantic_version/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_tools/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_multimaster/rocon_gateway/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_ebnf/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_uri/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/concert_workflow_engine_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/gateway_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/rocon_service_pair_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/beginner_tutorials/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/rocon_std_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/concert_service_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/rocon_app_manager_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/concert_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/rocon_device_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/rocon_interaction_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/rocon_tutorial_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_multimaster/experiments/rocon_unreliable_experiments/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_multimaster/rocon_gateway_utils/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_interactions/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_python_comms/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_python_utils/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_multimaster/rocon_test/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_msgs/scheduler_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/zeroconf_msgs/cmake_install.cmake")
  include("/home/giovani/catkin_ws/build/rocon_multimaster/rocon_gateway_tests/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/giovani/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
