# Install script for directory: /home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_app_manager_msgs/msg" TYPE FILE FILES
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Rapp.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/RappList.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Constants.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/ErrorCodes.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/IncompatibleRappList.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublicInterface.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/PublishedInterface.msg"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/msg/Status.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_app_manager_msgs/srv" TYPE FILE FILES
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/GetRappList.srv"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Init.srv"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/Invite.srv"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StartRapp.srv"
    "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/srv/StopRapp.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_app_manager_msgs/cmake" TYPE FILE FILES "/home/giovani/catkin_ws/build/rocon_msgs/rocon_app_manager_msgs/catkin_generated/installspace/rocon_app_manager_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/devel/include/rocon_app_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/devel/share/roseus/ros/rocon_app_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/devel/share/common-lisp/ros/rocon_app_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/devel/share/gennodejs/ros/rocon_app_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/giovani/catkin_ws/devel/lib/python2.7/dist-packages/rocon_app_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/devel/lib/python2.7/dist-packages/rocon_app_manager_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/giovani/catkin_ws/build/rocon_msgs/rocon_app_manager_msgs/catkin_generated/installspace/rocon_app_manager_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_app_manager_msgs/cmake" TYPE FILE FILES "/home/giovani/catkin_ws/build/rocon_msgs/rocon_app_manager_msgs/catkin_generated/installspace/rocon_app_manager_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_app_manager_msgs/cmake" TYPE FILE FILES
    "/home/giovani/catkin_ws/build/rocon_msgs/rocon_app_manager_msgs/catkin_generated/installspace/rocon_app_manager_msgsConfig.cmake"
    "/home/giovani/catkin_ws/build/rocon_msgs/rocon_app_manager_msgs/catkin_generated/installspace/rocon_app_manager_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_app_manager_msgs" TYPE FILE FILES "/home/giovani/catkin_ws/src/rocon_msgs/rocon_app_manager_msgs/package.xml")
endif()

