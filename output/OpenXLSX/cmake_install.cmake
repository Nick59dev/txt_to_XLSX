# Install script for directory: /home/nick/progs/C/ds/some/txt_parser/OpenXLSX

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX/headers" TYPE FILE FILES "/home/nick/progs/C/ds/some/txt_parser/output/OpenXLSX/OpenXLSX-Exports.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX/headers" TYPE FILE FILES
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLCell.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLCellIterator.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLCellRange.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLCellReference.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLCellValue.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLColor.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLColumn.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLCommandQuery.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLConstants.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLContentTypes.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLDateTime.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLDocument.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLException.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLFormula.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLIterator.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLProperties.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLRelationships.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLRow.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLRowData.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLSharedStrings.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLSheet.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLWorkbook.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLXmlData.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLXmlFile.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLXmlParser.hpp"
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/headers/XLZipArchive.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX" TYPE FILE FILES "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/OpenXLSX.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/nick/progs/C/ds/some/txt_parser/output/output/libOpenXLSX.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES
    "/home/nick/progs/C/ds/some/txt_parser/OpenXLSX/OpenXLSXConfig.cmake"
    "/home/nick/progs/C/ds/some/txt_parser/output/OpenXLSX/OpenXLSX/OpenXLSXConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake"
         "/home/nick/progs/C/ds/some/txt_parser/output/OpenXLSX/CMakeFiles/Export/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "/home/nick/progs/C/ds/some/txt_parser/output/OpenXLSX/CMakeFiles/Export/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "/home/nick/progs/C/ds/some/txt_parser/output/OpenXLSX/CMakeFiles/Export/lib/cmake/OpenXLSX/OpenXLSXTargets-noconfig.cmake")
  endif()
endif()

