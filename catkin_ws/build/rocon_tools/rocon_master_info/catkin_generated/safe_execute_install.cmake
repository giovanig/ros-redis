execute_process(COMMAND "/home/giovani/catkin_ws/build/rocon_tools/rocon_master_info/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/giovani/catkin_ws/build/rocon_tools/rocon_master_info/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
