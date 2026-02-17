# Install script for directory: /home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkMessaging.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkMessaging.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/libWPEFrameworkMessaging.so.1.0.0"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/libWPEFrameworkMessaging.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkMessaging.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkMessaging.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/libWPEFrameworkMessaging.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/WPEFramework/messaging" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/Module.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/MessageClient.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/messaging.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/MessageDispatcher.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/MessageUnit.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/TraceCategories.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/TraceControl.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/Control.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/Logging.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/LoggingCategories.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/DirectOutput.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/Module.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/TraceFactory.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/TextMessage.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/BaseCategory.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkMessaging/WPEFrameworkMessagingTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkMessaging/WPEFrameworkMessagingTargets.cmake"
         "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/CMakeFiles/Export/8834b52a16b8273526548d8f624063a5/WPEFrameworkMessagingTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkMessaging/WPEFrameworkMessagingTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkMessaging/WPEFrameworkMessagingTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkMessaging" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/CMakeFiles/Export/8834b52a16b8273526548d8f624063a5/WPEFrameworkMessagingTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkMessaging" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/CMakeFiles/Export/8834b52a16b8273526548d8f624063a5/WPEFrameworkMessagingTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkMessaging" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/WPEFrameworkMessagingConfigVersion.cmake"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/WPEFrameworkMessagingConfig.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/WPEFramework/tracing" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/Module.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/MessageClient.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/messaging.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/MessageDispatcher.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/MessageUnit.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/TraceCategories.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/TraceControl.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/Control.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/Logging.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/LoggingCategories.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/DirectOutput.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/Module.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/TraceFactory.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/TextMessage.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/messaging/BaseCategory.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkTracing/WPEFrameworkTracingTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkTracing/WPEFrameworkTracingTargets.cmake"
         "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/CMakeFiles/Export/c2b790bd938731a63e597a2e0a2ddc67/WPEFrameworkTracingTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkTracing/WPEFrameworkTracingTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkTracing/WPEFrameworkTracingTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkTracing" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/CMakeFiles/Export/c2b790bd938731a63e597a2e0a2ddc67/WPEFrameworkTracingTargets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkTracing" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/WPEFrameworkTracingConfigVersion.cmake"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/WPEFrameworkTracingConfig.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kavia/workspace/code-generation/install/usr/include/WPEFramework/tracing/tracing.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kavia/workspace/code-generation/install/usr/include/WPEFramework/tracing" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging/tracing.h")
endif()

