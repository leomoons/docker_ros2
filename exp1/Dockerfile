FROM osrf/ros:humble-desktop-full

SHELL [ "/bin/bash", "-c" ]

WORKDIR /app

COPY ../ros2_ws ros2_ws/
RUN cd ros2_ws && \
    source /opt/ros/humble/setup.bash && \
    colon build

COPY exp1/ros_entrypoint.sh /app/

ENTRYPOINT [ "/ros_entrypoint.sh" ]
CMD ["bash"]