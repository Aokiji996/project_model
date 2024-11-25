#include <mytest/main.h>
#include <pybind11/pybind11.h>

namespace py = pybind11;

#ifdef NDEBUG
    PYBIND11_MODULE(pymytest_Release, m) {
        m.doc() = R"pbdoc(
            Pybind11 example plugin
        )pbdoc";

        m.def("hello", &test, R"pbdoc(
            print hello
        )pbdoc");

    //    m.attr("__version__") = MACRO_STRINGIFY(VERSION_INFO);
    }
#else
    PYBIND11_MODULE(pymytest_Debug, m) {
        m.doc() = R"pbdoc(
                Pybind11 example plugin
            )pbdoc";

        m.def("hello", &test, R"pbdoc(
                print hello
            )pbdoc");

        //    m.attr("__version__") = MACRO_STRINGIFY(VERSION_INFO);
    }
#endif