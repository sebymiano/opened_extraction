cmake_minimum_required(VERSION 3.4.3)

if(${CMAKE_VERSION} VERSION_EQUAL 3.12.0 OR ${CMAKE_VERSION} VERSION_GREATER 3.12.0)
  cmake_policy(SET CMP0074 NEW)
endif()

project(equivalence-check)

find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
message(STATUS "Use LLVM_ROOT envronment variable for another version of LLVM")

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

if (${LLVM_VERSION_MAJOR} VERSION_GREATER_EQUAL 10)
    set(CMAKE_CXX_STANDARD 14)
endif ()
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(equivalence-check-pass)
add_subdirectory(equivalence-check-tool)