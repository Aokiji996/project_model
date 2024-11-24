macro(make_bin name version description)
    file(GLOB_RECURSE srcs CONFIGURE_DEPENDS src/* include/*)
    set(this_lib_name ${name})
    set(thie_lib_version ${version})
    message("${srcs}")
    add_executable(${this_lib_name} ${srcs})
    set_target_properties(${this_lib_name} PROPERTIES
            VERSION ${thie_lib_version}
            DESCRIPTION ${description}
    )
    target_include_directories(${this_lib_name} PUBLIC include)
    message("${Cyan}add executable ${this_lib_name} version: ${thie_lib_version}${ColourReset}")
endmacro()