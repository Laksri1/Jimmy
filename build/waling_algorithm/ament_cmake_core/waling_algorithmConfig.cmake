# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_waling_algorithm_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED waling_algorithm_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(waling_algorithm_FOUND FALSE)
  elseif(NOT waling_algorithm_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(waling_algorithm_FOUND FALSE)
  endif()
  return()
endif()
set(_waling_algorithm_CONFIG_INCLUDED TRUE)

# output package information
if(NOT waling_algorithm_FIND_QUIETLY)
  message(STATUS "Found waling_algorithm: 0.0.0 (${waling_algorithm_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'waling_algorithm' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${waling_algorithm_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(waling_algorithm_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${waling_algorithm_DIR}/${_extra}")
endforeach()
