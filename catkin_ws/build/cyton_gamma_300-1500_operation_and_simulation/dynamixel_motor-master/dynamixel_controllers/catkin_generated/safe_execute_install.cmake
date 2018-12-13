execute_process(COMMAND "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
