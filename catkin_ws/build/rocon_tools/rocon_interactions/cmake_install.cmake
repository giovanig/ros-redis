# Install script for directory: /home/giovani/catkin_ws/src/rocon_tools/rocon_interactions

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/giovani/catkin_ws/build/rocon_tools/rocon_interactions/catkin_generated/installspace/rocon_interactions.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_interactions/cmake" TYPE FILE FILES
    "/home/giovani/catkin_ws/build/rocon_tools/rocon_interactions/catkin_generated/installspace/rocon_interactionsConfig.cmake"
    "/home/giovani/catkin_ws/build/rocon_tools/rocon_interactions/catkin_generated/installspace/rocon_interactionsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_interactions" TYPE FILE FILES "/home/giovani/catkin_ws/src/rocon_tools/rocon_interactions/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_interactions/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rocon_interactions" TYPE PROGRAM FILES
    "/home/giovani/catkin_ws/src/rocon_tools/rocon_interactions/scripts/rocon_interactions"
    "/home/giovani/catkin_ws/src/rocon_tools/rocon_interactions/scripts/interactions_manager.py"
    "/home/giovani/catkin_ws/src/rocon_tools/rocon_interactions/scripts/load_interactions"
    "/home/giovani/catkin_ws/src/rocon_tools/rocon_interactions/scripts/fake_remocon"
    "/home/giovani/catkin_ws/src/rocon_tools/rocon_interactions/scripts/tutorial_markers.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_interactions" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/src/rocon_tools/rocon_interactions/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_interactions" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/src/rocon_tools/rocon_interactions/rviz")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_interactions" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/src/rocon_tools/rocon_interactions/interactions")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rocon_interactions" TYPE DIRECTORY FILES "/home/giovani/catkin_ws/src/rocon_tools/rocon_interactions/js")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/giovani/catkin_ws/build/rocon_tools/rocon_interactions/tests/cmake_install.cmake")

endif()

