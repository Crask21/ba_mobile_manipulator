import csv
import matplotlib.pyplot as plt
import numpy as np

data_set_number = 4


speed = np.arange(0.05, 0.6, 0.05)

average_diff = []
dev_diff = []

for i in speed:
    # csvfile = open('/realtime_tracking/src/data_set_{data_set_number}/difference_speed_{i}.csv', 'r')
    csvfile = open('data_set_' + str(data_set_number)+'_good' + '/difference_speed_' + str(round(i,2)) + '.csv', 'r')
    csvreader = csv.reader(csvfile)
    t_values = []
    difference_values = []
    next(csvreader)  # Skip the first row
    for row in csvreader:
        t_values.append(float(row[0]))
        difference_values.append(float(row[1]))
    average_diff.append(sum(difference_values)/len(difference_values))
    dev_diff.append(np.std(difference_values))

plot = plt.figure()
plot = plot.add_subplot(111)
plot.errorbar(speed, average_diff, yerr=dev_diff, fmt='o')
plot.set_xlabel('Speed [m/s]')
plot.set_ylabel('Average difference [m]')
plot.set_title('Average difference between end effector and person hand')
plt.show()
