set(this_name mytest)
make_bin(${this_name} 0.0.1
        "just for test"
)

set_pybind_name(${this_name})
make_pybind(${pylib_name})

target_link_libraries(${this_name} PUBLIC hello)
target_link_libraries(${pylib_name} PUBLIC hello)