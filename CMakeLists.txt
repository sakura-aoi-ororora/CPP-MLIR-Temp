cmake_minimum_required(VERSION 3.0.0)
project(MeguLang-C++ VERSION 0.1.0 LANGUAGES CXX)

# CTest
include(CTest)
enable_testing()

# Main
add_subdirectory(src/nyny)
set(SRC_FILES src/main.cpp)
add_executable(MeguLang-C++ ${SRC_FILES})
target_link_libraries(MeguLang-C++ NY)

# CPack
set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)