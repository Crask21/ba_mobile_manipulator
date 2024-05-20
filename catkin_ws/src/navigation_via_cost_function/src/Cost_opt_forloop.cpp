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

Doub OneIteration()
{
    obstacles.clear();
    Doub ftoll = 1.0e-7;
    Doub del = 0.2;
    Doub max_manip_dist = 0.3330 + 0.3160 + 0.3840 + 0.0880;
    Doub height_difference = abs(goal[2] - arm_offset[2]);
    Manipulation_dist = sqrt(pow(max_manip_dist, 2) - pow(height_difference, 2)) * 0.5; // 0.5 describes midpoint between arm max and min distance
    VecDoub initial_guess(3);
    initial_guess[0] = 2 * goal[0] - OP_pos[0];
    initial_guess[1] = 2 * goal[1] - OP_pos[1];
    initial_guess[2] = 0.0;
    Amoeba amoeba(ftoll);

    obstacles.push_back({OP_pos[0], OP_pos[1]});

    /* ---------------------------- Optimize cost function --------------------------- */
    // std::cout << initial_guess[0] << " " << initial_guess[1] << std::endl;
    // std::cout << "Initial cost: " << CostFunction(initial_guess) << std::endl;
    // std::cout << "Manipulation distance: " << Manipulation_dist << std::endl;
    auto beg = std::chrono::high_resolution_clock::now();
    VecDoub C_opt = amoeba.minimize(initial_guess, del, CostFunction);
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - beg);
    std::cout << "Time taken to optimize: " << duration.count() << " microseconds" << std::endl;

    return duration.count();
}

int main()
{
    int iterations = 100;
    VecDoub durations(iterations);
    for (int i = 0; i < iterations; i++)
    {
        std::cout << "iteration: " << i << ": ";
        durations[i] = OneIteration();
    }

    // Calculate average duration
    Doub sum = 0.0;
    for (int i = 0; i < iterations; i++)
    {
        sum += durations[i];
    }
    Doub average = sum / iterations;

    // Calculate variance
    Doub variance = 0.0;
    for (int i = 0; i < iterations; i++)
    {
        variance += pow(durations[i] - average, 2);
    }
    variance /= iterations;

    // Print average and variance
    std::cout << "Average duration: " << average << " microseconds" << std::endl;
    std::cout << "Variance: " << variance << std::endl;
}
