macro(make_bin name version description)
    file(GLOB_RECURSE srcs CONFIGURE_DEPENDS src/* include/*)
    set(this_lib_name ${name})
    set(thie_lib_version ${version})
    add_executable(${this_lib_name} ${srcs})
    set_target_properties(${this_lib_name} PROPERTIES
            VERSION ${thie_lib_version}
            DESCRIPTION ${description}
    )
    target_include_directories(${this_lib_name} PUBLIC include)
    if(CMAKE_BUILD_TYPE STREQUAL "Debug")
        target_sources(${this_lib_name} PUBLIC ${BACKWARD_ENABLE})
        target_link_libraries(${this_lib_name} PUBLIC Backward::Interface)
        message_info("${this_lib_name}: backward-cpp is activated.")
    endif()
    message(STATUS "${Cyan}add executable ${this_lib_name} version: ${thie_lib_version}${ColourReset}")
endmacro()