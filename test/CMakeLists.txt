cmake_minimum_required(VERSION 3.2)

add_executable(lib_test lib_test.cpp)
target_link_libraries(lib_test gtest_main ${LIB_NAME})

include(GoogleTest)
gtest_discover_tests(lib_test)
