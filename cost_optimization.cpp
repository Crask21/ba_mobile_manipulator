#include <iostream>
#include "nr3.h"
#include "utilities.h"
#include "amoeba.h"
#include <fstream>
#include <cmath>
#include <vector>

//Global variables for CostFunction
Doub start_[3] = {1.0, 1.0, 0.0}; // x, y, theta
VecDoub start(3, start_);

Doub desired_[3] = {0.0, 0.0, 0.0}; // x, y, theta
VecDoub desired(3, desired_);

Doub operator_[3] = {-0.4, 0., 3.14/4}; // x, y, theta
VecDoub OP_pos(3, operator_);

Doub goal_[2] = {0.0, 0.0}; // x, y
VecDoub goal(2, goal_);

Doub Manipulation_dist = 0.5;
Doub obst_dist = 0.3;
Doub obst_strength = 1.0;

vector<vector<Doub>> obstacles = {{OP_pos[0], OP_pos[1]}};

Doub CostOperator(const VecDoub &desired) {
    Doub scale = 0.25;
    Doub C_OP = abs(cos(OP_pos[2])*(OP_pos[1] - desired[1]) - sin(OP_pos[2])*(OP_pos[0] - desired[0]));
    return scale * C_OP;
}

Doub CostMov(const VecDoub &desired) {
    Doub scale = 1;
    Doub C_Move = sqrt(pow(desired[0] - start[0], 2) + pow(desired[1] - start[1], 2));
    return scale * C_Move;
}

// TODO: Incorporate the PANDA robot's base offset
Doub CostManipulation(const VecDoub &desired) {
    Doub scale = 1.5;
    Doub C_Manipulation = abs(sqrt(pow(desired[0] - goal[0], 2) + pow(desired[1] - goal[1], 2)) - Manipulation_dist);
    return scale * C_Manipulation;
}

Doub CostObst(const VecDoub &desired) {
    Doub scale = 1;
    Doub C_Obst = 0;
    for (int i = 0; i < obstacles.size(); i++) {
        if (sqrt(pow(desired[0] - obstacles[i][0], 2) + pow(desired[1] - obstacles[i][1], 2)) < obst_dist) {
            C_Obst += 0.5 * obst_strength * pow(1/sqrt(pow(desired[0] - obstacles[i][0], 2) + pow(desired[1] - obstacles[i][1], 2)) - 1/obst_dist, 2);
        }
    }
    Doub C_limit = 2;
    if (C_Obst > C_limit) {
        C_Obst = C_limit;
    }
    return scale * C_Obst;
}

Doub CostFunction(const VecDoub &desired) {
    Doub C_OP = CostOperator(desired);
    Doub C_Move = CostMov(desired);
    Doub C_Manipulation = CostManipulation(desired);
    Doub C_Obst = CostObst(desired);
    return C_OP + C_Move + C_Manipulation + C_Obst;
}





int main() {
    
    /* ---------------------------- Optimize cost function --------------------------- */
    Doub ftoll = 1.0e-10;
    Doub del = 1.0;

    VecDoub y(2);
    y[0] = 0.0;
    y[1] = 0.0;
    Amoeba amoeba(ftoll);
    VecDoub C_opt = amoeba.minimize(start,del, CostFunction);


    Doub dot_product = amoeba.y[0]*goal[0] + amoeba.y[1]*goal[1];
    Doub magnitude_current = sqrt(pow(amoeba.y[0], 2) + pow(amoeba.y[1], 2));
    Doub magnitude_goal = sqrt(pow(goal[0], 2) + pow(goal[1], 2));

    Doub angle = acos(dot_product / (magnitude_current * magnitude_goal));

    angle = atan2(goal[1]-amoeba.y[1], goal[0]-amoeba.y[0]);

    Doub opt_pos[3] = {amoeba.y[0], amoeba.y[1], angle};
    std::cout <<"Optimal position found in {x, y, theta}: {" << opt_pos[0] << ", " << opt_pos[1] << ", " << opt_pos[2] << "}" << std::endl;

    /* ------------------------ Save mesh params to file ------------------------ */
    std::ofstream file;
    file.open("cost_function_params.csv");
    Doub x_step = 0.05;
    double x_range[2] = {-1.0, 1.0};
    Doub y_step = 0.05;
    double y_range[2] = {-1.0, 1.0};
    file << "x_step, x_range1, x_range0, y_step, y_range1, y_range0, start_x, start_y, C_start, C_opt_x, C_opt_y, C_opt" << std::endl;
    file << x_step << ", " << x_range[1] << ", " << x_range[0] << ", " << y_step << ", " << y_range[1] << ", " << y_range[0] <<", " << start[0] <<", " << start[1] <<", " << CostFunction(start) << ", "<< C_opt[0] <<", " << C_opt[1] <<", " << CostFunction(C_opt) << std::endl;
    file.close();



    /* ------------------------ Save CostOperator to file ----------------------- */
    file.open("cost_OP_plot.csv");

    for (double i = y_range[0]; i <= y_range[1]; i += y_step) {
        for (double j = x_range[0]; j <= x_range[1]; j += x_step) {
            desired[0] = j;
            desired[1] = i;
            file <<CostOperator(desired);
            if (j < x_range[1]-x_step) {
                file << ", ";
            }
        }
        
        file << std::endl;
    }
    file.close();

    /* -------------------------- Save CostMov to file ------------------------- */
    file.open("cost_Move_plot.csv");

    for (double i = y_range[0]; i <= y_range[1]; i += y_step) {
        for (double j = x_range[0]; j <= x_range[1]; j += x_step) {
            desired[0] = j;
            desired[1] = i;
            file <<CostMov(desired);
            if (j < x_range[1]-x_step) {
                file << ", ";
            }
        }
        
        file << std::endl;
    }
    file.close();

    /* -------------------------- Save CostManipulation to file ------------------------- */
    file.open("cost_Manipulation_plot.csv");

    for (double i = y_range[0]; i <= y_range[1]; i += y_step) {
        for (double j = x_range[0]; j <= x_range[1]; j += x_step) {
            desired[0] = j;
            desired[1] = i;
            file <<CostManipulation(desired);
            if (j < x_range[1]-x_step) {
                file << ", ";
            }
        }
        
        file << std::endl;
    }
    file.close();

    /* -------------------------- Save CostObst to file ------------------------- */
    file.open("cost_Obst_plot.csv");

    for (double i = y_range[0]; i <= y_range[1]; i += y_step) {
        for (double j = x_range[0]; j <= x_range[1]; j += x_step) {
            desired[0] = j;
            desired[1] = i;
            file <<CostObst(desired);
            if (j < x_range[1]-x_step) {
                file << ", ";
            }
        }
        
        file << std::endl;
    }
    file.close();

    return 0;
}
