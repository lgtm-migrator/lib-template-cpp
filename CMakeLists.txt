cmake_minimum_required(VERSION 3.2)

project(lib-template)
set(LIB_NAME LibraryX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "-std=c++11 -g -O0 -Wall -fprofile-arcs -ftest-coverage")
set(CMAKE_CXX_OUTPUT_EXTENSION_REPLACE ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(OBJECT_DIR ${CMAKE_BINARY_DIR}/src/CMakeFiles/${LIB_NAME}.dir)
set(GCOV_LINK_FLAGS "-lgcov")

message("-- Object files will be output to: ${OBJECT_DIR}")

enable_testing()

set(GTEST_ARCHIVE "609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip")
include(FetchContent)
FetchContent_Declare(
  googletest URL https://github.com/google/googletest/archive/${GTEST_ARCHIVE})
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt
    ON
    CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Create the gcov target. Run coverage tests with 'make gcov'
add_custom_target(
  gcov
  COMMAND mkdir -p coverage
  COMMAND ${CMAKE_MAKE_PROGRAM} test
  WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
add_custom_command(
  TARGET gcov
  COMMAND echo "=================== GCOV ===================="
  COMMAND gcov -b ${CMAKE_SOURCE_DIR}/src/*.cpp -o ${OBJECT_DIR}
  COMMAND echo "-- Source directory: ${CMAKE_SOURCE_DIR}/src/"
  COMMAND echo
          "-- Coverage files have been output to ${CMAKE_BINARY_DIR}/coverage"
  COMMAND gcovr -r ${CMAKE_SOURCE_DIR} ${CMAKE_SOURCE_DIR}/build/src
  WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/coverage)

set_property(
  DIRECTORY
  APPEND
  PROPERTY ADDITIONAL_MAKE_CLEAN_FILES coverage)
add_subdirectory(src)
add_subdirectory(test)
