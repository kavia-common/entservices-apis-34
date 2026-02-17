# Install script for directory: /home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkCore.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkCore.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/libWPEFrameworkCore.so.1.0.0"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/libWPEFrameworkCore.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkCore.so.1.0.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libWPEFrameworkCore.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/libWPEFrameworkCore.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/WPEFramework/core" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/ASN1.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/DoorBell.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Config.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/core.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/CyclicBuffer.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/DataBuffer.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/DataElementFile.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/DataElement.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Enumerate.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Factory.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/FileSystem.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/FileObserver.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Frame.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/IAction.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/IIterator.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/IObserver.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/IPCMessage.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/IPFrame.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/IPCChannel.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/IPCConnector.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/ISO639.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/JSON.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/JSONRPC.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/KeyValue.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Library.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Link.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/LockableContainer.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Measurement.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Media.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/MessageException.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Module.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Netlink.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/NetworkInfo.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/NodeId.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Number.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Optional.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Parser.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Portability.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Process.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/ProcessInfo.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Proxy.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Queue.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Range.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/ReadWriteLock.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Rectangle.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/RequestResponse.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/ResourceMonitor.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Serialization.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/SerialPort.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Services.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/SharedBuffer.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Singleton.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/SocketPort.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/SocketServer.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/StateTrigger.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/StopWatch.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Stream.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/StreamJSON.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/StreamText.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/StreamTypeLengthValue.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Sync.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Synchronize.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/SynchronousChannel.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/SystemInfo.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/TextFragment.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/TextReader.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Thread.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/ThreadPool.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Time.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Timer.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Trace.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/TriState.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/TypeTraits.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/ValueRecorder.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/XGetopt.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/WorkerPool.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/IWarningReportingControl.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/WarningReportingControl.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/WarningReportingCategories.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/Module.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/CallsignTLS.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/TokenizedStringList.h"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/Thunder/Source/core/MessageStore.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/WPEFrameworkCore.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCore/WPEFrameworkCoreTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCore/WPEFrameworkCoreTargets.cmake"
         "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/CMakeFiles/Export/97e33de90fddeaed3f1b2bc453e80036/WPEFrameworkCoreTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCore/WPEFrameworkCoreTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCore/WPEFrameworkCoreTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCore" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/CMakeFiles/Export/97e33de90fddeaed3f1b2bc453e80036/WPEFrameworkCoreTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCore" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/CMakeFiles/Export/97e33de90fddeaed3f1b2bc453e80036/WPEFrameworkCoreTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/WPEFrameworkCore" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/WPEFrameworkCoreConfigVersion.cmake"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/WPEFrameworkCoreConfig.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug/CompileSettingsDebugTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug/CompileSettingsDebugTargets.cmake"
         "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/CMakeFiles/Export/15d0107721b14a54b0f0a99c2d8d5c88/CompileSettingsDebugTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug/CompileSettingsDebugTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug/CompileSettingsDebugTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug" TYPE FILE FILES "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/CMakeFiles/Export/15d0107721b14a54b0f0a99c2d8d5c88/CompileSettingsDebugTargets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/CompileSettingsDebug" TYPE FILE FILES
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/CompileSettingsDebugConfigVersion.cmake"
    "/home/kavia/workspace/code-generation/entservices-appgateway-34/.build/Thunder/Source/core/CompileSettingsDebugConfig.cmake"
    )
endif()

