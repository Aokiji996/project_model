add_executable(main main.cpp)
target_link_libraries(main PUBLIC hello)
add_ros2(main PUBLIC)