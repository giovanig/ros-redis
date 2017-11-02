# Install script for directory: /home/giovani/catkin_ws/src/rocon_multimaster/rocon_gateway

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/giovani/catkin_ws/build/rocon_multimaster/rocon_gateway/catkin_generated/installspace/rocon_gateway.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_gateway/cmake" TYPE FILE FILES
    "/home/giovani/catkin_ws/build/rocon_multimaster/rocon_gateway/catkin_generated/installspace/rocon_gatewayConfig.cmake"
    "/home/giovani/catkin_ws/build/rocon_multimaster/rocon_gateway/catkin_generated/installspace/rocon_gatewayConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_gateway" TYPE FILE FILES "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_gateway/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/giovani/catkin_ws/build/rocon_multimaster/rocon_gateway/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rocon_gateway" TYPE PROGRAM FILES
    "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_gateway/scripts/gateway_info"
    "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_gateway/scripts/remote_gateway_info"
    "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_gateway/scripts/gateway.py"
    "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_gateway/scripts/advertise"
    "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_gateway/scripts/flip"
    "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_gateway/scripts/pull"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_gateway" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_gateway/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_gateway" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/src/rocon_multimaster/rocon_gateway/param")
endif()

