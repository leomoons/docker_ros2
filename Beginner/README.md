# use docker to run ros2
This directory is to use docker to accomplish the tutorials in [ros2 tutorial beginner](https://docs.ros.org/en/humble/Tutorials/Beginner-CLI-Tools.html). 
Firstly, need to pull the docker image ros2:humble
```
sudo docker pull osrf/ros:humble-desktop-full
```
then open the xhost privilege
```
xhost local:root
```
Finally, docker run the image to open a container
```
docker run --rm -it \
--env DISPLAY \
--volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
osrf/ros:humble-desktop-full \
/bin/bash
```
when enter the container, need to ```source \opt\ros\humble\setup.bash```.
And can use following command in a new terminal to enter the container that has been running
```
sudo docker exec -it 'container_name' /bin/bash
```