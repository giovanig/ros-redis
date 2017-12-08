cmake_minimum_required(VERSION 2.8.3)
project(p1hc_fault_detector)

## c++11 feature
set(CMAKE_CXX_FLAGS "-std=gnu++11 -Wall -Wextra ${CMAKE_CXX_FLAGS}")

## Need to dynamically link Boost's log library for loggers shared across multiple targets/libraries
add_definitions(-DBOOST_LOG_DYN_LINK)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
set(catkin_deps roscpp rospy roslib nodelet)
find_package(catkin REQUIRED ${catkin_deps})

## Find Boost log components used for autonomoose diagnostics
find_package(Boost COMPONENTS REQUIRED log_setup log)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
# find_package(catkin REQUIRED COMPONENTS roscpp rospy rospy std_msgs )

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS ${catkin_deps} roscpp rospy std_msgs
  DEPENDS Boost
  LIBRARIES ${PROJECT_NAME} ${PROJECT_NAME}_nodelet
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
    include
    ${catkin_INCLUDE_DIRS}
    ${Boost_INCLUDE_DIR} # NOTE: No 'S' for Boost's include directory
)

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
install(PROGRAMS
  scripts/udp_receiver.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

## Declare a C++ library
add_library(${PROJECT_NAME}
    src/udpDriver.cpp
)

target_link_libraries(${PROJECT_NAME}
    ${catkin_LIBRARIES}
    ${Boost_LIBRARIES}
)

add_library(${PROJECT_NAME}_nodelet
    src/nodelet.cpp
)

target_link_libraries(${PROJECT_NAME}_nodelet
    ${catkin_LIBRARIES}
	${PROJECT_NAME}
    ${Boost_LIBRARIES}
)

add_executable(p1hc_fault_detector_node
    src/node.cpp
)

target_link_libraries(p1hc_fault_detector_node
	${catkin_LIBRARIES}
)

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

## Mark executables and/or libraries for installation
#install(TARGETS ${PROJECT_NAME} ${PROJECT_NAME}_nodelet ${PROJECT_NAME}_node
install(TARGETS ${PROJECT_NAME} ${PROJECT_NAME}_nodelet p1hc_fault_detector_node
    ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
    LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
    RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

## Mark cpp header files for installation
install(DIRECTORY include/${PROJECT_NAME}/
    DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
    FILES_MATCHING PATTERN "*.hpp"
)

## Mark other files for installation (e.g. launch and bag files, etc.)
install(DIRECTORY launch config
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

## Need to explicitly list nodelet.xml for installation
install(FILES
    nodelets.xml
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)