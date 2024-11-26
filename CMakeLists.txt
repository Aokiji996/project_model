# set the minimum version request for cmake
cmake_minimum_required(VERSION 3.22)

# set the LANGUAGE
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)
set(BUILD_SHARED_LIBS OFF)
set(POSITION_INDEPENDENT_CODE ON)


########################################################################################
############################## the start of the project ################################
########################################################################################

project(project_model
LANGUAGES C CXX CUDA
VERSION 0.0.1         # set the version
DESCRIPTION "A project model written by Aokiji996 for fast c, cpp, cuda and python development with ROS2."
HOMEPAGE_URL https://github.com/Aokiji996/project_model
)

## set the output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR}/install)

# add the cmake submodule for convenience
file(GLOB_RECURSE cmake_files CONFIGURE_DEPENDS cmake/*.cmake)
foreach(cmake_file ${cmake_files})
    include(${cmake_file})
endforeach()
message_info("PROJECT: ${PROJECT_NAME}")
message_info("VERSION: ${PROJECT_VERSION}")
message_info("BUILD  : ${CMAKE_BUILD_TYPE}")

# add backward
add_backward_cpp()

# add python
set_python()
add_pybind()

# add ros2
find_package(ament_cmake REQUIRED)

# subproject
add_subdirectory(main)
add_subdirectory(modules)

# ros2
ament_package()
