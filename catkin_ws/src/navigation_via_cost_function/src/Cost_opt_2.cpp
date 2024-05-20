#include <iostream>
#include "nr3.h"
#include "utilities.h"
#include "amoeba.h"
#include <fstream>
#include <cmath>
#include <vector>
#include <chrono>

/* -------------------- Global variables for CostFunction ------------------- */
Doub start_[3] = {0.0, 0.0, 0.0}; // x, y, theta
VecDoub start(3, start_);

Doub desired_[3] = {0.0, 0.0, 0.0}; // x, y, theta
VecDoub desired(3, desired_);

Doub operator_[3] = {4, 0.1, -3.14}; // x, y, theta
VecDoub OP_pos(3, operator_);

Doub goal_[6] = {operator_[0] + 0.5 * cos(operator_[2]), operator_[1] - 0.3 * sin(operator_[2]), 0.3 + 5 * (1.2 / 14), 0.0, 0.0, 0.0}; // x, y, z, qx, qy, qz
VecDoub goal(6, goal_);

Doub Manipulation_dist = 0.0;
Doub obst_dist = 0.5;
Doub obst_strength = 1.0;
Doub arm_offset[3] = {0.2, 0.15, 0.507};

vector<vector<Doub>> obstacles = {};

/* ----------------------------- Cost functions ----------------------------- */
Doub CostOperator(const VecDoub &desired)
{
    Doub scale = 1;
    Doub C_OP = abs(cos(OP_pos[2]) * (OP_pos[1] - desired[1]) - sin(OP_pos[2]) * (OP_pos[0] - desired[0]));
    return scale * C_OP;
}

Doub CostMov(const VecDoub &desired)
{
    Doub scale = 0.05;
    Doub C_Move = sqrt(pow(desired[0] - start[0], 2) + pow(desired[1] - start[1], 2));
    return scale * C_Move;
}

Doub CostManipulation(const VecDoub &desired)
{
    Doub scale = 2 * 1.5;
    Doub arm_pos[2] = {desired[0] + arm_offset[0] * cos(desired[2]), desired[1] + arm_offset[1] * sin(desired[2])};

    Doub C_Manipulation = abs(sqrt(pow(arm_pos[0] - goal[0], 2) + pow(arm_pos[1] - goal[1], 2)) - Manipulation_dist);
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
    Doub C_limit = 10;
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
    return C_OP + C_Move + C_Manipulation + C_Obst;
}

int main()
{
    Doub ftoll = 1.0e-7;
    Doub del = 0.2;
    Doub max_manip_dist = 0.3330 + 0.3160 + 0.3840 + 0.0880;
    Doub height_difference = abs(goal[2] - arm_offset[2]);
    Manipulation_dist = sqrt(pow(max_manip_dist, 2) - pow(height_difference, 2)) * 0.5; // 0.5 describes midpoint between arm max and min distance
    VecDoub initial_guess(2);
    initial_guess[0] = 2 * goal[0] - OP_pos[0];
    initial_guess[1] = 2 * goal[1] - OP_pos[1];
    Amoeba amoeba(ftoll);

    obstacles.push_back({OP_pos[0], OP_pos[1]});

    /* ---------------------------- Optimize cost function --------------------------- */

    auto beg = std::chrono::high_resolution_clock::now();
    VecDoub C_opt = amoeba.minimize(initial_guess, del, CostFunction);
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - beg);
    std::cout << "Time taken to optimize: " << duration.count() << " microseconds" << std::endl;

    Doub dot_product = amoeba.y[0] * goal[0] + amoeba.y[1] * goal[1];
    Doub magnitude_current = sqrt(pow(amoeba.y[0], 2) + pow(amoeba.y[1], 2));
    Doub magnitude_goal = sqrt(pow(goal[0], 2) + pow(goal[1], 2));

    Doub angle = acos(dot_product / (magnitude_current * magnitude_goal));

    angle = atan2(goal[1] - amoeba.y[1], goal[0] - amoeba.y[0]);

    Doub opt_pos[3] = {amoeba.y[0], amoeba.y[1], angle};
    std::cout << "Optimal position found in {x, y, theta}: {" << C_opt[0] << ", " << C_opt[1] << ", " << C_opt[2] << "}" << std::endl;

    std::cout << 0.3 + 5 * (1.2 / 14) << std::endl;
    std::cout << "position: " << C_opt[0] << " " << C_opt[1] << " " << C_opt[2] << " " << Manipulation_dist << " " << sqrt(pow(C_opt[0] - goal[0], 2) + pow(C_opt[1] - goal[1], 2) + pow(arm_offset[2] - goal[2], 2)) << " " << sqrt(pow(C_opt[0] - goal[0], 2) + pow(C_opt[1] - goal[1], 2)) << std::endl;

    /* ------------------------ Save mesh params to file ------------------------ */
    std::ofstream file;
    file.open("cost_function_params.csv");
    Doub x_step = 0.05;
    double x_range[2] = {1.0, 5.0};
    Doub y_step = 0.05;
    double y_range[2] = {-0.5, 1};
    file << "x_step, x_range1, x_range0, y_step, y_range1, y_range0, start_x, start_y, C_start, C_opt_x, C_opt_y, C_opt, robot_x, robot_y, robot_cost" << std::endl;
    file << x_step << ", " << x_range[1] << ", " << x_range[0] << ", " << y_step << ", " << y_range[1] << ", " << y_range[0] << ", " << initial_guess[0] << ", " << initial_guess[1] << ", " << CostFunction(start) << ", " << C_opt[0] << ", " << C_opt[1] << ", " << CostFunction(C_opt) << ", " << start[0] << ", " << start[1] << ", " << CostFunction(start) << std::endl;
    file.close();

    /* ------------------------ Save CostOperator to file ----------------------- */
    file.open("cost.csv");

    for (double i = y_range[0]; i <= y_range[1]; i += y_step)
    {
        for (double j = x_range[0]; j <= x_range[1]; j += x_step)
        {
            desired[0] = j;
            desired[1] = i;
            file << CostFunction(desired);
            if (j < x_range[1] - x_step)
            {
                file << ", ";
            }
        }

        file << std::endl;
    }
    file.close();

    /* ------------------------ Save CostOperator to file ----------------------- */
    file.open("cost_OP_plot.csv");

    for (double i = y_range[0]; i <= y_range[1]; i += y_step)
    {
        for (double j = x_range[0]; j <= x_range[1]; j += x_step)
        {
            desired[0] = j;
            desired[1] = i;
            file << CostOperator(desired);
            if (j < x_range[1] - x_step)
            {
                file << ", ";
            }
        }

        file << std::endl;
    }
    file.close();

    /* -------------------------- Save CostMov to file ------------------------- */
    file.open("cost_Move_plot.csv");

    for (double i = y_range[0]; i <= y_range[1]; i += y_step)
    {
        for (double j = x_range[0]; j <= x_range[1]; j += x_step)
        {
            desired[0] = j;
            desired[1] = i;
            file << CostMov(desired);
            if (j < x_range[1] - x_step)
            {
                file << ", ";
            }
        }

        file << std::endl;
    }
    file.close();

    /* -------------------------- Save CostManipulation to file ------------------------- */
    file.open("cost_Manipulation_plot.csv");

    for (double i = y_range[0]; i <= y_range[1]; i += y_step)
    {
        for (double j = x_range[0]; j <= x_range[1]; j += x_step)
        {
            desired[0] = j;
            desired[1] = i;
            file << CostManipulation(desired);
            if (j < x_range[1] - x_step)
            {
                file << ", ";
            }
        }

        file << std::endl;
    }
    file.close();

    /* -------------------------- Save CostObst to file ------------------------- */
    file.open("cost_Obst_plot.csv");

    for (double i = y_range[0]; i <= y_range[1]; i += y_step)
    {
        for (double j = x_range[0]; j <= x_range[1]; j += x_step)
        {
            desired[0] = j;
            desired[1] = i;
            file << CostObst(desired);
            if (j < x_range[1] - x_step)
            {
                file << ", ";
            }
        }

        file << std::endl;
    }
    file.close();
}
