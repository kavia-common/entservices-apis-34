#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "WPEFrameworkWebSocket::WPEFrameworkWebSocket" for configuration "Debug"
set_property(TARGET WPEFrameworkWebSocket::WPEFrameworkWebSocket APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(WPEFrameworkWebSocket::WPEFrameworkWebSocket PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "WPEFrameworkCore::WPEFrameworkCore;WPEFrameworkCryptalgo::WPEFrameworkCryptalgo"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libWPEFrameworkWebSocket.so.1.0.0"
  IMPORTED_SONAME_DEBUG "libWPEFrameworkWebSocket.so.1"
  )

list(APPEND _cmake_import_check_targets WPEFrameworkWebSocket::WPEFrameworkWebSocket )
list(APPEND _cmake_import_check_files_for_WPEFrameworkWebSocket::WPEFrameworkWebSocket "${_IMPORT_PREFIX}/lib/libWPEFrameworkWebSocket.so.1.0.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
