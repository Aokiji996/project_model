macro(set_pybind_name name)
    if(CMAKE_BUILD_TYPE STREQUAL "Debug")
        set(pylib_name "py${name}_Debug")
    else()
        set(pylib_name "py${name}_Release")
    endif()
endmacro()

macro(make_pybind pylib_name)
    pybind11_add_module(${pylib_name} ext.cpp)

    execute_process(COMMAND ${Python3_EXECUTABLE} -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())"
            OUTPUT_VARIABLE PYTHON_SITE_PACKAGES
            OUTPUT_STRIP_TRAILING_WHITESPACE)

    target_include_directories(${pylib_name} PUBLIC include)
    if(CMAKE_BUILD_TYPE STREQUAL "Debug")
        target_sources(${pylib_name} PUBLIC ${BACKWARD_ENABLE})
        target_link_libraries(${pylib_name} PUBLIC Backward::Interface)
        message_info("${pylib_name}: backward-cpp is activated.")
    endif()

    install(TARGETS ${pylib_name}
            DESTINATION ${PYTHON_SITE_PACKAGES})
endmacro()