# Install script for directory: /home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_controllers/srv" TYPE FILE FILES
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/srv/RestartController.srv"
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/srv/SetComplianceMargin.srv"
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/srv/SetCompliancePunch.srv"
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/srv/SetComplianceSlope.srv"
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/srv/SetSpeed.srv"
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/srv/SetTorqueLimit.srv"
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/srv/StartController.srv"
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/srv/StopController.srv"
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/srv/TorqueEnable.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_controllers/cmake" TYPE FILE FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/catkin_generated/installspace/dynamixel_controllers-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/devel/include/dynamixel_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/devel/share/roseus/ros/dynamixel_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/devel/share/common-lisp/ros/dynamixel_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/devel/share/gennodejs/ros/dynamixel_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/devel/lib/python2.7/dist-packages/dynamixel_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/devel/lib/python2.7/dist-packages/dynamixel_controllers" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/devel/lib/python2.7/dist-packages/dynamixel_controllers" FILES_MATCHING REGEX "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/devel/lib/python2.7/dist-packages/dynamixel_controllers/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/catkin_generated/installspace/dynamixel_controllers.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_controllers/cmake" TYPE FILE FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/catkin_generated/installspace/dynamixel_controllers-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_controllers/cmake" TYPE FILE FILES
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/catkin_generated/installspace/dynamixel_controllersConfig.cmake"
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/build/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/catkin_generated/installspace/dynamixel_controllersConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_controllers" TYPE FILE FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dynamixel_controllers" TYPE DIRECTORY FILES "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/dynamixel_controllers" TYPE PROGRAM FILES
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/nodes/controller_manager.py"
    "/home/gabriel/Cyton_ROS/Cyton-Gamma-1500/catkin_ws/src/cyton_gamma_300-1500_operation_and_simulation/dynamixel_motor-master/dynamixel_controllers/nodes/controller_spawner.py"
    )
endif()

