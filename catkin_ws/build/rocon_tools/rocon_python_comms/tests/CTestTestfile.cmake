# CMake generated Testfile for 
# Source directory: /home/giovani/catkin_ws/src/rocon_tools/rocon_python_comms/tests
# Build directory: /home/giovani/catkin_ws/build/rocon_tools/rocon_python_comms/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rocon_python_comms_nosetests_nosetests "/home/giovani/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/giovani/catkin_ws/build/test_results/rocon_python_comms/nosetests-nosetests.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/giovani/catkin_ws/build/test_results/rocon_python_comms" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/giovani/catkin_ws/src/rocon_tools/rocon_python_comms/tests/nosetests --with-xunit --xunit-file=/home/giovani/catkin_ws/build/test_results/rocon_python_comms/nosetests-nosetests.xml")
subdirs(rostests)
