# Install script for directory: /home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkPlugins.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkPlugins.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/libWPEFrameworkPlugins.so.1.0.0"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/libWPEFrameworkPlugins.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkPlugins.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkPlugins.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/websocket:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/cryptalgo:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/libWPEFrameworkPlugins.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/WPEFramework/plugins" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/Channel.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/Config.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/Configuration.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/IPlugin.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/IShell.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/IController.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/IControllerDeprecated.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/Shell.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/IStateControl.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/StateControl.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/ISubSystem.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/IDispatcher.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/SubSystem.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/JSONRPC.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/MetaData.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/plugins.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/Request.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/Service.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/System.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/Types.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/VirtualInput.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/IVirtualInput.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/plugins/Module.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpeframework/proxystubs/libWPEFrameworkProxyStubs.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpeframework/proxystubs/libWPEFrameworkProxyStubs.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/wpeframework/proxystubs" TYPE SHARED_LIBRARY FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/libWPEFrameworkProxyStubs.so.1.0.0"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/libWPEFrameworkProxyStubs.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpeframework/proxystubs/libWPEFrameworkProxyStubs.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpeframework/proxystubs/libWPEFrameworkProxyStubs.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/com:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/messaging:/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/wpeframework/proxystubs" TYPE SHARED_LIBRARY FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/libWPEFrameworkProxyStubs.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/WPEFrameworkPlugins.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkPlugins/WPEFrameworkPluginsTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkPlugins/WPEFrameworkPluginsTargets.cmake"
         "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/CMakeFiles/Export/b5e40bb7b0b3ae0ddc1eae9abe226f7d/WPEFrameworkPluginsTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkPlugins/WPEFrameworkPluginsTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkPlugins/WPEFrameworkPluginsTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkPlugins" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/CMakeFiles/Export/b5e40bb7b0b3ae0ddc1eae9abe226f7d/WPEFrameworkPluginsTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkPlugins" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/CMakeFiles/Export/b5e40bb7b0b3ae0ddc1eae9abe226f7d/WPEFrameworkPluginsTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkPlugins" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/WPEFrameworkPluginsConfigVersion.cmake"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/WPEFrameworkPluginsConfig.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkProxyStubs/WPEFrameworkProxyStubsTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkProxyStubs/WPEFrameworkProxyStubsTargets.cmake"
         "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/CMakeFiles/Export/6e35bb69b37143905f8dd16d0578a30d/WPEFrameworkProxyStubsTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkProxyStubs/WPEFrameworkProxyStubsTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkProxyStubs/WPEFrameworkProxyStubsTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkProxyStubs" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/CMakeFiles/Export/6e35bb69b37143905f8dd16d0578a30d/WPEFrameworkProxyStubsTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkProxyStubs" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/CMakeFiles/Export/6e35bb69b37143905f8dd16d0578a30d/WPEFrameworkProxyStubsTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkProxyStubs" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/WPEFrameworkProxyStubsConfigVersion.cmake"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/plugins/WPEFrameworkProxyStubsConfig.cmake"
    )
endif()

