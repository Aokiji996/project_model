macro(set_python)
    set(Python3_EXECUTABLE "${PROJECT_SOURCE_DIR}/venv/bin/python3")
    find_package(Python3 COMPONENTS Interpreter Development REQUIRED)
    if(Python3_FOUND)
        message_info("Python3: ${Python3_VERSION}")
        message_info("Python3: ${Python3_EXECUTABLE}")
    endif()
endmacro()

macro(add_pybind)
    add_subdirectory(${PROJECT_SOURCE_DIR}/ThirdParty/pybind11)
endmacro()

find_package(Python3 COMPONENTS Interpreter Development)
