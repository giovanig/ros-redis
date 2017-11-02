# Install script for directory: /home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_std_msgs/msg" TYPE FILE FILES
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Connection.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionCacheSpin.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsDiff.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/ConnectionsList.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Float32Stamped.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Icon.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/KeyValue.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/MasterInfo.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/StringArray.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Strings.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/msg/Remapping.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_std_msgs/srv" TYPE FILE FILES "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/srv/EmptyString.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_std_msgs/pairs" TYPE FILE FILES "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/pairs/Strings.pair")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_std_msgs/msg" TYPE FILE FILES
    "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPair.msg"
    "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsRequest.msg"
    "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairRequest.msg"
    "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsResponse.msg"
    "/home/giovani/catkin_ws/devel/share/rocon_std_msgs/msg/StringsPairResponse.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_std_msgs/cmake" TYPE FILE FILES "/home/giovani/catkin_ws/build/rocon_msgs/rocon_std_msgs/catkin_generated/installspace/rocon_std_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/devel/include/rocon_std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/devel/share/roseus/ros/rocon_std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/devel/share/common-lisp/ros/rocon_std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/devel/share/gennodejs/ros/rocon_std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/giovani/catkin_ws/devel/lib/python2.7/dist-packages/rocon_std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/devel/lib/python2.7/dist-packages/rocon_std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/giovani/catkin_ws/build/rocon_msgs/rocon_std_msgs/catkin_generated/installspace/rocon_std_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_std_msgs/cmake" TYPE FILE FILES "/home/giovani/catkin_ws/build/rocon_msgs/rocon_std_msgs/catkin_generated/installspace/rocon_std_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_std_msgs/cmake" TYPE FILE FILES
    "/home/giovani/catkin_ws/build/rocon_msgs/rocon_std_msgs/catkin_generated/installspace/rocon_std_msgsConfig.cmake"
    "/home/giovani/catkin_ws/build/rocon_msgs/rocon_std_msgs/catkin_generated/installspace/rocon_std_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_std_msgs" TYPE FILE FILES "/home/giovani/catkin_ws/src/rocon_msgs/rocon_std_msgs/package.xml")
endif()

