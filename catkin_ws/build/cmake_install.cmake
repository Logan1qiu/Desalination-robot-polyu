# Install script for directory: /home/hp/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hp/catkin_ws/install")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hp/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hp/catkin_ws/install" TYPE PROGRAM FILES "/home/hp/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hp/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hp/catkin_ws/install" TYPE PROGRAM FILES "/home/hp/catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hp/catkin_ws/install/setup.bash;/home/hp/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hp/catkin_ws/install" TYPE FILE FILES
    "/home/hp/catkin_ws/build/catkin_generated/installspace/setup.bash"
    "/home/hp/catkin_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hp/catkin_ws/install/setup.sh;/home/hp/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hp/catkin_ws/install" TYPE FILE FILES
    "/home/hp/catkin_ws/build/catkin_generated/installspace/setup.sh"
    "/home/hp/catkin_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hp/catkin_ws/install/setup.zsh;/home/hp/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hp/catkin_ws/install" TYPE FILE FILES
    "/home/hp/catkin_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/hp/catkin_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/hp/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/hp/catkin_ws/install" TYPE FILE FILES "/home/hp/catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/hp/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/ipa_coverage_planning/ipa_coverage_planning/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/mrobot_description/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/rbx1/rbx1/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/wpb_home/wpb_home_bringup/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/wpb_home/wpb_home_remote/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/mbot_navigation/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/nav_pkg/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/ipa_coverage_planning/ipa_building_msgs/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/ipa_coverage_planning/ipa_building_navigation/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/ipa_coverage_planning/ipa_room_segmentation/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/oradar_lidar/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/rbx1/rbx1_bringup/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/rbx1/rbx1_dynamixels/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/rbx1/rbx1_vision/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/rbx1/rbx1_speech/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/mrobot_drive/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/rbx1/rbx1_apps/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/rbx1/rbx1_nav/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/ipa_coverage_planning/ipa_room_exploration/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/mbot_gazebo/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/rbx1/rbx1_description/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/Clean-robot-turtlebot3/clean_robot/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/Clean-robot-turtlebot3/explore/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/wheeltec_robot_rc/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/wpb_home/wpb_home_behaviors/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/wpb_home/wpb_home_python/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/wpb_home/wpb_home_python3/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/wpb_home/wpb_home_tutorials/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/wpb_home/wpbh_local_planner/cmake_install.cmake")
  include("/home/hp/catkin_ws/build/wpr_simulation/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/hp/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
