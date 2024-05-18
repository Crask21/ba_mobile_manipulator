#include "ros/ros.h"
#include "std_srvs/SetBool.h"
#include <tf/transform_listener.h>
#include <iostream>
#include "nr3.h"
#include "utilities.h"
#include "amoeba.h"
#include <vector>
#include "navigation_via_cost_function/get_position.h"
#include "navigation_via_cost_function/get_goal_configuration.h"
#include <fstream>
#include <string>

// MoveIt
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>
// Kinematics
#include <moveit_msgs/GetPositionIK.h>

/* -------------------- Global variables for CostFunction ------------------- */
Doub start_[3] = {1.0, 1.0, 0.0}; // x, y, theta
VecDoub start(3, start_);

Doub desired_[3] = {0.0, 0.0, 0.0}; // x, y, theta
VecDoub desired(3, desired_);

Doub operator_[3] = {-0.4, 0.0, 3.14 / 4}; // x, y, theta
VecDoub OP_pos(3, operator_);

Doub goal_[6] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}; // x, y, z, qx, qy, qz
VecDoub goal(6, goal_);

Doub Manipulation_dist = 0.0;
Doub obst_dist = 0.5;
Doub obst_strength = 1.0;
Doub arm_offset[3] = {0.2, 0.15, 0.507};

vector<vector<Doub>> obstacles = {};
ros::NodeHandle *n_ptr;

/* ----------------------------- Cost functions ----------------------------- */
Doub CostOperator(const VecDoub &desired)
{
    Doub scale = 4 * 0.25;
    Doub C_OP = abs(cos(OP_pos[2]) * (OP_pos[1] - desired[1]) - sin(OP_pos[2]) * (OP_pos[0] - desired[0]));
    return scale * C_OP;
}

Doub CostMov(const VecDoub &desired)
{
    Doub scale = 0.1;
    Doub C_Move = sqrt(pow(desired[0] - start[0], 2) + pow(desired[1] - start[1], 2));
    return scale * C_Move;
}

Doub CostManipulation(const VecDoub &desired)
{
    Doub scale = 2 * 1.5;
    Doub arm_pos[2] = {desired[0] + arm_offset[0] * cos(desired[2]), desired[1] + arm_offset[1] * sin(desired[2])};

    Doub C_Manipulation = abs(sqrt(pow(arm_pos[0] - goal[0], 2) + pow(arm_pos[1] - goal[1], 2)) - Manipulation_dist);
    // std::cout << "Arm position: " << arm_pos[0] << " " << arm_pos[1];
    // std::cout << "\tGoal position: " << goal[0] << " " << goal[1];
    // std::cout << "\tManipulation: " << C_Manipulation << std::endl;

    return scale * C_Manipulation;
}

Doub CostObst(const VecDoub &desired)
{
    Doub scale = 1;
    Doub C_Obst = 0;
    for (int i = 0; i < obstacles.size(); i++)
    {
        if (sqrt(pow(desired[0] - obstacles[i][0], 2) + pow(desired[1] - obstacles[i][1], 2)) < obst_dist)
        {
            C_Obst += 0.5 * obst_strength * pow(1 / sqrt(pow(desired[0] - obstacles[i][0], 2) + pow(desired[1] - obstacles[i][1], 2)) - 1 / obst_dist, 2);
        }
    }
    Doub C_limit = 2;
    if (C_Obst > C_limit)
    {
        C_Obst = C_limit;
    }
    return scale * C_Obst;
}

Doub CostFunction(const VecDoub &desired)
{
    Doub C_OP = CostOperator(desired);
    Doub C_Move = CostMov(desired);
    Doub C_Manipulation = CostManipulation(desired);
    Doub C_Obst = CostObst(desired);
    // std::cout << "C_OP: " << C_OP;
    // std::cout << "\tC_Move: " << C_Move;
    // std::cout << "\tC_Manipulation: " << C_Manipulation;
    // std::cout << "\tC_Obst: " << C_Obst << std::endl;
    return C_OP + C_Move + C_Manipulation + C_Obst;
}

/* ----------------------------- Service callback ----------------------------- */
bool optimize(navigation_via_cost_function::get_goal_configuration::Request &req,
              navigation_via_cost_function::get_goal_configuration::Response &res)
{
    std::string world_name = "world";
    // std::cout << "Service called..." << std::endl;
    /* ----------------------- Get the person's position ----------------------- */
    tf::TransformListener listener;
    tf::StampedTransform transform;
    try
    {
        listener.waitForTransform(world_name, "person", ros::Time(0), ros::Duration(3.0));
        listener.lookupTransform(world_name, "person", ros::Time(0), transform);
    }
    catch (tf::TransformException &ex)
    {
        ROS_ERROR("%s", ex.what());
        ros::Duration(1.0).sleep();
    }
    OP_pos[0] = transform.getOrigin().x();
    OP_pos[1] = transform.getOrigin().y();
    OP_pos[2] = tf::getYaw(transform.getRotation());
    /* ----------------------- Get person's hand position ----------------------- */
    try
    {
        listener.waitForTransform(world_name, "person_hand", ros::Time(0), ros::Duration(3.0));
        listener.lookupTransform(world_name, "person_hand", ros::Time(0), transform);
    }
    catch (tf::TransformException &ex)
    {
        ROS_ERROR("%s", ex.what());
        ros::Duration(1.0).sleep();
    }
    goal[0] = transform.getOrigin().x();
    goal[1] = transform.getOrigin().y();
    goal[2] = transform.getOrigin().z();
    tf::Quaternion quat = transform.getRotation();
    tf::Matrix3x3 mat(quat);
    double roll, pitch, yaw;
    mat.getRPY(roll, pitch, yaw);
    goal[3] = roll;
    goal[4] = pitch;
    goal[5] = yaw;

    /* ----------------------- Get the robot's position ----------------------- */
    std::string odom_ns = "odom";
    try
    {
        listener.waitForTransform(odom_ns, "summit_xl_base_link", ros::Time(0), ros::Duration(3.0));
        listener.lookupTransform(odom_ns, "summit_xl_base_link", ros::Time(0), transform);
    }
    catch (tf::TransformException &ex)
    {
        ROS_ERROR("%s", ex.what());
        ros::Duration(1.0).sleep();
    }
    start[0] = transform.getOrigin().x();
    start[1] = transform.getOrigin().y();

    // std::cout << "Person's position: " << OP_pos[0] << " " << OP_pos[1] << " " << OP_pos[2] << std::endl;
    // std::cout << "Person's hand position: " << goal[0] << " " << goal[1] << " " << goal[2] << std::endl;
    // std::cout << "Robot's position: " << start[0] << " " << start[1] << std::endl;

    obstacles.push_back({OP_pos[0], OP_pos[1]});
    /* ----------------------- Optimization function call ----------------------- */
    Doub ftoll = 1.0e-7;
    Doub del = 1.0;
    Doub max_manip_dist = 0.3330 + 0.3160 + 0.3840 + 0.0880;
    Doub height_difference = abs(goal[2] - arm_offset[2]);
    Manipulation_dist = sqrt(pow(max_manip_dist, 2) - pow(height_difference, 2)) * 0.5; // 0.5 describes midpoint between arm max and min distance
    // std::cout << "max_manip_dist: " << max_manip_dist;
    // std::cout << "\tgoal[2]: " << goal[2];
    // std::cout << "\tarm_offset[2]: " << arm_offset[2];
    // std::cout << "\theight_difference: " << height_difference;
    // std::cout << "\tManipulation_dist: " << Manipulation_dist << std::endl;
    VecDoub y(2);
    y[0] = 0.0;
    y[1] = 0.0;
    Amoeba amoeba(ftoll);

    // std::cout << "type of person's position: " << typeid(OP_pos[0]).name() << std::endl;
    // std::cout << "type of goal's position: " << typeid(goal[0]).name() << std::endl;
    // std::cout << "type of robot's position: " << typeid(start[0]).name() << std::endl;

    VecDoub C_opt = VecDoub(3, 0.0);

    // std::cout << "Optimizing..." << std::endl;
    try
    {
        C_opt = amoeba.minimize(start, del, CostFunction);
    }
    catch (std::exception &e)
    {
        for (int i = 0; i < 500; i++)
        {
            std::cout << "=" << std::endl;
        }
        std::cout << "Exception: " << e.what() << std::endl;
    }
    // std::cout << "Optimization done..." << std::endl;
    // std::cout << "Optimal position found in {x, y, theta}: " << C_opt[0] << " " << C_opt[1] << " " << C_opt[2] << std::endl;

    ros::ServiceClient service_client = n_ptr->serviceClient<moveit_msgs::GetPositionIK>("compute_ik");
    moveit_msgs::GetPositionIK::Request service_request;
    moveit_msgs::GetPositionIK::Response service_response;

    service_request.ik_request.group_name = "arm";
    service_request.ik_request.pose_stamped.header.frame_id = "panda_link0";
    // service_request.ik_request.pose_stamped.pose.position.x = goal[0] - C_opt[0] - arm_offset[0] * cos(C_opt[2]);
    // service_request.ik_request.pose_stamped.pose.position.y = goal[1] - C_opt[1] - arm_offset[1] * sin(C_opt[2]);
    // Doub x_ = goal[0] - C_opt[0] - arm_offset[0] * cos(C_opt[2]);
    // Doub y_ = goal[1] - C_opt[1] - arm_offset[1] * sin(C_opt[2]);
    Doub x_ = goal[0] - C_opt[0];
    Doub y_ = goal[1] - C_opt[1];
    service_request.ik_request.pose_stamped.pose.position.x = x_ * cos(-C_opt[2]) - y_ * sin(-C_opt[2]) - arm_offset[0];
    service_request.ik_request.pose_stamped.pose.position.y = x_ * sin(-C_opt[2]) + y_ * cos(-C_opt[2]) + arm_offset[1];
    service_request.ik_request.pose_stamped.pose.position.z = goal[2] - arm_offset[2];

    quat.setRPY(goal[3] + 3.14, goal[4], goal[5] - C_opt[2]);
    service_request.ik_request.pose_stamped.pose.orientation.x = quat.x();
    service_request.ik_request.pose_stamped.pose.orientation.y = quat.y();
    service_request.ik_request.pose_stamped.pose.orientation.z = quat.z();
    service_request.ik_request.pose_stamped.pose.orientation.w = quat.w();

    /* Call the service */
    // std::cout << "Calling service..." << std::endl;
    service_client.waitForExistence();
    service_client.call(service_request, service_response);
    // std::cout << "Service called..." << std::endl;
    // ROS_INFO_STREAM( \
        "Result: " << ((service_response.error_code.val == service_response.error_code.SUCCESS) ? "True " : "False ")\
                   << service_response.error_code.val);

    /* ----------------------- Print optimization results ----------------------- */
    // util::print(C_opt, "Optimal position found in {x, y, theta}: ");

    if (service_response.error_code.val != service_response.error_code.SUCCESS)
    {
        std::cout << "Error in IK service call" << std::endl;
        res.q_goal = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        res.success = false;
        return true;
    }
    else
    {
        // std::cout << "Goal config found at: " << std::endl;
        // std::cout << "x: " << C_opt[0] << std::endl;
        // std::cout << "y: " << C_opt[1] << std::endl;
        // std::cout << "theta: " << C_opt[2] << std::endl;
        // std::cout << "panda_joint0: " << service_response.solution.joint_state.position[3] << std::endl;
        // std::cout << "panda_joint1: " << service_response.solution.joint_state.position[4] << std::endl;
        // std::cout << "panda_joint2: " << service_response.solution.joint_state.position[5] << std::endl;
        // std::cout << "panda_joint3: " << service_response.solution.joint_state.position[6] << std::endl;
        // std::cout << "panda_joint4: " << service_response.solution.joint_state.position[7] << std::endl;
        // std::cout << "panda_joint5: " << service_response.solution.joint_state.position[8] << std::endl;
        // std::cout << "panda_joint6: " << service_response.solution.joint_state.position[9] << std::endl;

        res.q_goal = {C_opt[0], C_opt[1], C_opt[2], service_response.solution.joint_state.position[3], service_response.solution.joint_state.position[4], service_response.solution.joint_state.position[5], service_response.solution.joint_state.position[6], service_response.solution.joint_state.position[7], service_response.solution.joint_state.position[8], service_response.solution.joint_state.position[9]};
        res.success = true;
    }

    /* ----------------------- Return the service response ----------------------- */

    return true;
}

int main(int argc, char **argv)
{

    ros::init(argc, argv, "cost_opt_service");
    ros::NodeHandle n;
    n_ptr = &n;
    ros::ServiceServer service = n.advertiseService("cost_opt", optimize);

    ROS_INFO("Listning for service calls...");
    ros::spin();

    return 0;
}