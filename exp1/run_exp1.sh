#!/bin/bash

xhost local:root

# need sudo priviliage, so need to sudo this script
docker run --rm -it \
--env DISPLAY \
--volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
turtle_demo \
ros2 launch my_turtle_bringup turtlesim_demo.launch.py