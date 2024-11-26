#include <hello/hello.h>

void hello()
{
    int argc = 0;
    char *argv[] = {};
    rclcpp::init(argc, argv);
    printf("Hello World!\n");
    rclcpp::shutdown();
}