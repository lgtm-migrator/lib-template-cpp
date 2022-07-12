cmake_minimum_required(VERSION 3.2)
# include_directories(${PROJECT_SOURCE_DIR}/includes)
file(GLOB SOURCES ${PROJECT_SOURCE_DIR}/src/*.cpp
     ${PROJECT_SOURCE_DIR}/includes/*.h)

add_library(${LIB_NAME} ${SOURCES})

target_include_directories(
  ${LIB_NAME}
  PUBLIC ${PROJECT_SOURCE_DIR}/includes
  PRIVATE ${PROJECT_SOURCE_DIR}/src)
