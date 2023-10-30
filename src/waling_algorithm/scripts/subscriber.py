#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
from std_msgs.msg import Float32

class SpeedCalculator(Node):
    def __init__(self):
        super().__init__("hello_world_sub_node")
        self.sub = self.create_subscription(Float32, "hello_world", self.calculate_speed, 10)

    def calculate_speed(self,msg):
        print("received: " + msg.data)

def main(args=None):
    rclpy.init()
     speed_calc_node = SpeedCalculator()
    print("waiting....")

    try:  
        rclpy.spin( speed_calc_node)
    except KeyboardInterrupt:
        print("terminating....")
         speed_calc_node.destroy_node()

if __name__ == '__main__':
    main()