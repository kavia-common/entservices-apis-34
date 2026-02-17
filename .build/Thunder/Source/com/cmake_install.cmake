# Install script for directory: /home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkCOM.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkCOM.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com/libWPEFrameworkCOM.so.1.0.0"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com/libWPEFrameworkCOM.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkCOM.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkCOM.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com/libWPEFrameworkCOM.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/WPEFramework/com" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/Administrator.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/com.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/Communicator.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/ConnectorType.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/Ids.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/IteratorType.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/IIteratorType.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/IStringIterator.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/IValueIterator.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/ICOM.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/IUnknown.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/Messages.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/ProxyStubs.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/com/Module.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCOM/WPEFrameworkCOMTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCOM/WPEFrameworkCOMTargets.cmake"
         "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com/CMakeFiles/Export/61e6bbf3304de3c2ea6aa5600ec988dc/WPEFrameworkCOMTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCOM/WPEFrameworkCOMTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCOM/WPEFrameworkCOMTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCOM" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com/CMakeFiles/Export/61e6bbf3304de3c2ea6aa5600ec988dc/WPEFrameworkCOMTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCOM" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com/CMakeFiles/Export/61e6bbf3304de3c2ea6aa5600ec988dc/WPEFrameworkCOMTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCOM" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com/WPEFrameworkCOMConfigVersion.cmake"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com/WPEFrameworkCOMConfig.cmake"
    )
endif()

