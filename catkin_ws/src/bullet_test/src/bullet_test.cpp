#include <ros/ros.h>
#include <moveit/planning_scene/planning_scene.h>
// #include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/collision_detection_bullet/collision_detector_allocator_bullet.h>
#include <moveit_msgs/Constraints.h>
#include <moveit_msgs/PositionConstraint.h>
#include <moveit_msgs/RobotState.h>
#include <moveit_msgs/MotionPlanRequest.h>
#include <moveit_msgs/MotionPlanResponse.h>
#include <moveit_msgs/RobotTrajectory.h>
#include <moveit/planning_interface/planning_interface.h>
#include <iostream>
#include <moveit/robot_state/conversions.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "bullet_test_node");
    ros::NodeHandle nh;

    // Load the robot model
    robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
    robot_model::RobotModelPtr robot_model = robot_model_loader.getModel();

    std::cout << "Model frame: " << robot_model->getModelFrame() << std::endl;
    // Get the names of all the move groups in the robot model
    std::vector<std::string> move_group_names = robot_model->getJointModelGroupNames();

    // Print the names of all the move groups
    for (const std::string &move_group_name : move_group_names)
    {
        std::cout << "Move Group Name: " << move_group_name << std::endl;
    }
    // Create a planning scene
    planning_scene::PlanningScene planning_scene(robot_model);

    // Set Bullet as the collision detector
    // collision_detection::CollisionDetectorAllocatorPtr collision_detector_allocator(
    //     new collision_detection_bullet::CollisionDetectorAllocatorBullet());
    // planning_scene.setActiveCollisionDetector(collision_detector_allocator, true);
    // planning_scene.setActiveCollisionDetector(collision_detection::CollisionDetectorAllocatorBullet::create(), true);
    // Do something with the planning scene...

    // Query available collision detectors
    std::vector<std::string> collision_detector_names;
    planning_scene.getCollisionDetectorNames(collision_detector_names);

    // Print the names of all the collision detectors
    for (const std::string &collision_detector_name : collision_detector_names)
    {
        std::cout << "Collision Detector Name: " << collision_detector_name << std::endl;
    }

    // Define the target pose
    geometry_msgs::Pose target_pose;
    target_pose.position.x = 4.0;
    target_pose.position.y = 4.0;
    target_pose.position.z = 1.2;
    target_pose.orientation.x = 0.0;
    target_pose.orientation.y = 0.0;
    target_pose.orientation.z = -3.14;
    target_pose.orientation.w = 0.0;

    // Create a motion plan request
    moveit_msgs::MotionPlanRequest motion_plan_request;
    motion_plan_request.group_name = "whole_body"; // Replace "your_move_group_name" with the actual move group name

    motion_plan_request.num_planning_attempts = 1;
    motion_plan_request.allowed_planning_time = 5.0;

    // Set the start state
    robot_state::RobotState start_state(robot_model);
    start_state = planning_scene.getCurrentState();
    motion_plan_request.start_state = moveit_msgs::RobotState();
    moveit::core::robotStateToRobotStateMsg(start_state, motion_plan_request.start_state);

    // Set the target pose
    motion_plan_request.goal_constraints.resize(1);
    moveit_msgs::Constraints &goal_constraint = motion_plan_request.goal_constraints[0];
    goal_constraint.position_constraints.resize(1);
    moveit_msgs::PositionConstraint &position_constraint = goal_constraint.position_constraints[0];
    position_constraint.header.frame_id = robot_model->getModelFrame();
    position_constraint.link_name = "panda_link0"; // Replace "your_link_name" with the actual link name
    position_constraint.constraint_region.primitive_poses.resize(1);
    position_constraint.constraint_region.primitive_poses[0] = target_pose;

    // Call the motion planner
    // moveit_msgs::MotionPlanResponse motion_plan_response;
    // planning_interface::PlanningContextPtr planning_context = planning_scene.getPlanningContext("OMPL");
    // planning_context->setMotionPlanRequest(motion_plan_request);
    // planning_context->solve(motion_plan_response);
    // planning_context->solve(motion_plan_request, motion_plan_response);

    // Check if the motion planning was successful
    // if (motion_plan_response.error_code.val == motion_plan_response.error_code.SUCCESS)
    // {
    //     // Get the trajectory from the motion plan response
    //     moveit_msgs::RobotTrajectory robot_trajectory = motion_plan_response.trajectory;

    //     // Do something with the trajectory...
    // }
    // else
    // {
    //     ROS_ERROR("Motion planning failed with error code: %d", motion_plan_response.error_code.val);
    // }

    return 0;
}