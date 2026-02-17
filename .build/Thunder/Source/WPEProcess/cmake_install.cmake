# Install script for directory: /home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/WPEProcess

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kavia/workspace/code-generation/install/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/WPEProcess-1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/WPEProcess"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/WPEProcess/WPEProcess-1.0.0"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/WPEProcess/WPEProcess"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/WPEProcess-1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/WPEProcess"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/cryptalgo:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

