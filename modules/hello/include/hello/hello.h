#pragma once

#include <cstdio>
#include <iostream>
#include <rclcpp/rclcpp.hpp>
#include <std_msgs/msg/string.hpp>
#include <chrono>

class pub : public rclcpp::Node{
public:
    pub() : Node("hello_node")
    {
        this->publisher = this->create_publisher<std_msgs::msg::String>("hello", 10);
    }

    void say_hello(){
        auto msg = std_msgs::msg::String();
        msg.data = "Hello, ROS2!";
        this->publisher->publish(msg);
    }

private:
    rclcpp::Publisher<std_msgs::msg::String>::SharedPtr publisher;

};

void hello();