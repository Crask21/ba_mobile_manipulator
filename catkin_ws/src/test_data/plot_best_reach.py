import csv

# Initialize empty lists to store the data
midpoint_percentage = []
manip_index = []
success_rate = []

# Open the CSV file
with open('best_reach_test10_150_samples.csv', 'r') as file:
    # Create a CSV reader object
    reader = csv.reader(file)
    
    # Skip the header row
    next(reader)
    
    # Iterate over each row in the CSV file
    for row in reader:
        # Extract the data from each column and append it to the respective lists
        midpoint_percentage.append(float(row[0]))
        manip_index.append(float(row[1]))
        success_rate.append(float(row[2]))


height = []
best_reach_percentage = [] 
best_manip_index = []
best_success_rate = []

with open('best_reach_test_sweep_1.csv') as file:
    reader = csv.reader(file)
    next(reader)
    for row in reader:
        height.append(float(row[0]))
        best_reach_percentage.append(float(row[1]))
        best_manip_index.append(float(row[2]))
        best_success_rate.append(float(row[3]))

# Print the data to verify
# Multiply manip_index with success_rate
manip_index_success = [a * b for a, b in zip(manip_index, success_rate)]

import matplotlib.pyplot as plt
plt.figure()
plt.plot(height, best_reach_percentage, label='Peak Manipulability distance')
plt.axhline(y=1, linestyle='dotted', color='black', label='Maximum Reach')
plt.axhline(y=0.5, linestyle='dotted', color='orange', label='50% Maximum Reach')
plt.axhline(y=0, linestyle='dotted', color='grey', label='Minimum Reach')
plt.xlabel('Height [m]')
plt.ylabel('Tuned Grasping radius % of Maximum Reach [%]')
plt.legend()


plt.figure()
plt.plot(height, best_reach_percentage)
plt.xlabel('Height [m]')
plt.ylabel('Tuned Grasping Circle % of Maximum Reach [%]')

plt.figure()
plt.plot(midpoint_percentage, manip_index_success)
plt.xlabel('% of Maximum Reach [%]')
plt.ylabel('Manipulability Index * Success Rate')





plt.show()

