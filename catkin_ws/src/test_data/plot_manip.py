import csv

# Specify the path to the CSV file
csv_file = 'manip_test.csv'

# Create empty lists to store the data
heights = []
manip_45 = []
manip_50 = []
manip_55 = []
manip_ik = []
success_45 = []
success_50 = []
success_55 = []
success_ik = []

# Open the CSV file and read its contents
with open(csv_file, 'r') as file:
    csv_reader = csv.reader(file)
    next(csv_reader)  # Skip the header row

    # Iterate over each row in the CSV file
    for row in csv_reader:
        # Extract the values from each column and append to respective lists
        heights.append(float(row[0]))
        manip_45.append(float(row[1]))
        manip_50.append(float(row[2]))
        manip_55.append(float(row[3]))
        manip_ik.append(float(row[4]))
        success_45.append(float(row[5]))
        success_50.append(float(row[6]))
        success_55.append(float(row[7]))
        success_ik.append(float(row[8]))

# Print the data
print(heights)
print(manip_45)
print(manip_50)
print(manip_55)
print(manip_ik)
print(success_45)
print(success_50)
print(success_55)
print(success_ik)

# Plot the data
import matplotlib.pyplot as plt
plt.plot(heights, manip_45, label='45% Maximum Reach')
plt.plot(heights, manip_50, label='50% Maximum Reach')
plt.plot(heights, manip_55, label='55% Maximum Reach')
plt.plot(heights, manip_ik, label='NR IK')
plt.xlabel('Height [m]')
plt.ylabel('Avg Manipulability Index')
plt.legend()

plt.figure()
plt.plot(heights, success_45, label='45% Maximum Reach')
plt.plot(heights, success_50, label='50% Maximum Reach')
plt.plot(heights, success_55, label='55% Maximum Reach')
plt.plot(heights, success_ik, label='NR IK')
plt.xlabel('Height [m]')
plt.ylabel('Success Rate [%]')
plt.legend()

manip_times_success_45 = [a * b for a, b in zip(manip_45, success_45)]
manip_times_success_50 = [a * b for a, b in zip(manip_50, success_50)]
manip_times_success_55 = [a * b for a, b in zip(manip_55, success_55)]
manip_times_success_ik = [a * b for a, b in zip(manip_ik, success_ik)]

plt.figure()
plt.plot(heights, manip_times_success_45, label='45% Maximum Reach')
plt.plot(heights, manip_times_success_50, label='50% Maximum Reach')
plt.plot(heights, manip_times_success_55, label='55% Maximum Reach')
plt.plot(heights, manip_times_success_ik, label='IK Maximum Reach')
plt.xlabel('Height [m]')
plt.ylabel('Manipulability Index * Success Rate')
plt.legend()


plt.show()

