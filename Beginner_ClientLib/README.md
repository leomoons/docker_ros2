# Beginner: Client libraries
## creating a package
To create a single package in workspace
```
ros2 pkg create --build-type ament_cmake --license Apache-2.0 <package_name>
```
To create a package with a node
```
ros2 pkg create --build-type ament_cmake --license Apache-2.0 --node-name my_node my_package --license Apache-2.0
```
To build the package in the src folder, need to run following command the workspace folder
```
colcon build
```
To build only the selected package
```
colcon build --packages-select <package_name>
```
