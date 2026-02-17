# Install script for directory: /home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkWebSocket.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkWebSocket.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket/libWPEFrameworkWebSocket.so.1.0.0"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket/libWPEFrameworkWebSocket.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkWebSocket.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkWebSocket.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/cryptalgo:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket/libWPEFrameworkWebSocket.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/WPEFramework/websocket" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/URL.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/JSONWebToken.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/JSONRPCLink.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/WebLink.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/WebRequest.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/WebResponse.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/WebSerializer.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/websocket.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/WebSocketLink.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/WebTransfer.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/WebTransform.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/websocket/Module.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /usr/bin/cmake -E create_symlink websocket /home/kavia/workspace/code-generation/install/usr/include/WPEFramework/jsonrpc)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /usr/bin/cmake -E create_symlink websocket.h /home/kavia/workspace/code-generation/install/usr/include/WPEFramework/websocket/jsonrpc.h)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket/WPEFrameworkWebSocket.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkWebSocket/WPEFrameworkWebSocketTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkWebSocket/WPEFrameworkWebSocketTargets.cmake"
         "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket/CMakeFiles/Export/9c75906d9066ffbf311db1fe642bd2a9/WPEFrameworkWebSocketTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkWebSocket/WPEFrameworkWebSocketTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkWebSocket/WPEFrameworkWebSocketTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkWebSocket" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket/CMakeFiles/Export/9c75906d9066ffbf311db1fe642bd2a9/WPEFrameworkWebSocketTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkWebSocket" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket/CMakeFiles/Export/9c75906d9066ffbf311db1fe642bd2a9/WPEFrameworkWebSocketTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkWebSocket" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket/WPEFrameworkWebSocketConfigVersion.cmake"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket/WPEFrameworkWebSocketConfig.cmake"
    )
endif()

