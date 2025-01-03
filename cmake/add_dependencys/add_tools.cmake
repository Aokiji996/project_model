macro(add_yaml target link)
    find_package(yaml-cpp REQUIRED)
    target_link_libraries(${target} ${link} yaml-cpp)
    message_link_information(${target} ${link} yaml)
endmacro()

