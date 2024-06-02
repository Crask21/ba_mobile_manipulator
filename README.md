# ba_mobile_manipulator
This here is the GitHub for the bachelor project: motion planning of a mobile robot manipulator

Here follows a short description of each package in the Catkin workspace

**franka_ros**: This is a package developed by Franka Emika, the package creates an interface for the panda robot to be used with ROS and Gazebo. It includes URDF descriptions, controllers and launch files for running the panda arm separately. It should be noted that a controller has been added to this package for running the controllers for the mobile manipulator
**summit_xl_common**: Similar to the franka_ros package, this package includes an interface for using the Summit XL Steel robot in the ROS environment. However, it does not include the code necessary to implement it in Gazebo.
**summit_xl_sim**: This package includes the necessary files for running the Summit XL in  Gazebo. This project has implemented a new launch file for this package to launch the mobile manipulator.
**moman_moveit_config**: This package contains the code for launching the mobile manipulator in MoveIt and the configurations for the MoveIt controller
**navigation_via_cost_function**: this package contains the code for running the cost map and also the nodes and services for making the robot follow or navigate to the hand position of a human operator.
