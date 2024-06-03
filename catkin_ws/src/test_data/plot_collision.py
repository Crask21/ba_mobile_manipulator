import matplotlib.pyplot as plt
import numpy as np


data_bullet0 = np.genfromtxt('Bullet_time_data0.csv', delimiter=',')
data_bullet10 = np.genfromtxt('Bullet_time_data10.csv', delimiter=',')
data_bullet20 = np.genfromtxt('Bullet_time_data20.csv', delimiter=',')
data_bullet30 = np.genfromtxt('Bullet_time_data30.csv', delimiter=',')
data_bullet40 = np.genfromtxt('Bullet_time_data40.csv', delimiter=',')
data_bullet50 = np.genfromtxt('Bullet_time_data50.csv', delimiter=',')
data_bullet60 = np.genfromtxt('Bullet_time_data60.csv', delimiter=',')
data_bullet70 = np.genfromtxt('Bullet_time_data70.csv', delimiter=',')
data_bullet80 = np.genfromtxt('Bullet_time_data80.csv', delimiter=',')
data_bullet90 = np.genfromtxt('Bullet_time_data90.csv', delimiter=',')
data_bullet100 = np.genfromtxt('Bullet_time_data100.csv', delimiter=',')

obstacle_count = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
percantage_bullet = []
percantage_bullet.append(100*np.sum(data_bullet0[:, 1]) / (data_bullet0[-1, 0] - data_bullet0[0, 0]))
percantage_bullet.append(100*np.sum(data_bullet10[:, 1]) / (data_bullet10[-1, 0] - data_bullet10[0, 0]))
percantage_bullet.append(100*np.sum(data_bullet20[:, 1]) / (data_bullet20[-1, 0] - data_bullet20[0, 0]))
percantage_bullet.append(100*np.sum(data_bullet30[:, 1]) / (data_bullet30[-1, 0] - data_bullet30[0, 0]))
percantage_bullet.append(100*np.sum(data_bullet40[:, 1]) / (data_bullet40[-1, 0] - data_bullet40[0, 0]))
percantage_bullet.append(100*np.sum(data_bullet50[:, 1]) / (data_bullet50[-1, 0] - data_bullet50[0, 0]))
percantage_bullet.append(100*np.sum(data_bullet60[:, 1]) / (data_bullet60[-1, 0] - data_bullet60[0, 0]))
percantage_bullet.append(100*np.sum(data_bullet70[:, 1]) / (data_bullet70[-1, 0] - data_bullet70[0, 0]))
percantage_bullet.append(100*np.sum(data_bullet80[:, 1]) / (data_bullet80[-1, 0] - data_bullet80[0, 0]))
percantage_bullet.append(100*np.sum(data_bullet90[:, 1]) / (data_bullet90[-1, 0] - data_bullet90[0, 0]))
percantage_bullet.append(100*np.sum(data_bullet100[:, 1]) / (data_bullet100[-1, 0] - data_bullet100[0, 0]))

length_bullet = [len(data_bullet0), len(data_bullet10), len(data_bullet20), len(data_bullet30), len(data_bullet40), len(data_bullet50), len(data_bullet60), len(data_bullet70), len(data_bullet80), len(data_bullet90), len(data_bullet100)]
collisions_per_second_bullet = []
collisions_per_second_bullet.append(1e6*len(data_bullet0)/np.sum(data_bullet0[:, 1]))
collisions_per_second_bullet.append(1e6*len(data_bullet10)/np.sum(data_bullet10[:, 1]))
collisions_per_second_bullet.append(1e6*len(data_bullet20)/np.sum(data_bullet20[:, 1]))
collisions_per_second_bullet.append(1e6*len(data_bullet30)/np.sum(data_bullet30[:, 1]))
collisions_per_second_bullet.append(1e6*len(data_bullet40)/np.sum(data_bullet40[:, 1]))
collisions_per_second_bullet.append(1e6*len(data_bullet50)/np.sum(data_bullet50[:, 1]))
collisions_per_second_bullet.append(1e6*len(data_bullet60)/np.sum(data_bullet60[:, 1]))
collisions_per_second_bullet.append(1e6*len(data_bullet70)/np.sum(data_bullet70[:, 1]))
collisions_per_second_bullet.append(1e6*len(data_bullet80)/np.sum(data_bullet80[:, 1]))
collisions_per_second_bullet.append(1e6*len(data_bullet90)/np.sum(data_bullet90[:, 1]))
collisions_per_second_bullet.append(1e6*len(data_bullet100)/np.sum(data_bullet100[:, 1]))
                                    


data_FCL_0 = np.genfromtxt('FCL_time_data0.csv', delimiter=',')
data_FCL_10 = np.genfromtxt('FCL_time_data10.csv', delimiter=',')
data_FCL_20 = np.genfromtxt('FCL_time_data20.csv', delimiter=',')
data_FCL_30 = np.genfromtxt('FCL_time_data30.csv', delimiter=',')
data_FCL_40 = np.genfromtxt('FCL_time_data40.csv', delimiter=',')
data_FCL_50 = np.genfromtxt('FCL_time_data50.csv', delimiter=',')
data_FCL_60 = np.genfromtxt('FCL_time_data60.csv', delimiter=',')
data_FCL_70 = np.genfromtxt('FCL_time_data70.csv', delimiter=',')
data_FCL_80 = np.genfromtxt('FCL_time_data80.csv', delimiter=',')
data_FCL_90 = np.genfromtxt('FCL_time_data90.csv', delimiter=',')
data_FCL_100 = np.genfromtxt('FCL_time_data100.csv', delimiter=',')

percantage_FCL = []
percantage_FCL.append(100*np.sum(data_FCL_0[:, 1]) / (data_FCL_0[-1, 0] - data_FCL_0[0, 0]))
percantage_FCL.append(100*np.sum(data_FCL_10[:, 1]) / (data_FCL_10[-1, 0] - data_FCL_10[0, 0]))
percantage_FCL.append(100*np.sum(data_FCL_20[:, 1]) / (data_FCL_20[-1, 0] - data_FCL_20[0, 0]))
percantage_FCL.append(100*np.sum(data_FCL_30[:, 1]) / (data_FCL_30[-1, 0] - data_FCL_30[0, 0]))
percantage_FCL.append(100*np.sum(data_FCL_40[:, 1]) / (data_FCL_40[-1, 0] - data_FCL_40[0, 0]))
percantage_FCL.append(100*np.sum(data_FCL_50[:, 1]) / (data_FCL_50[-1, 0] - data_FCL_50[0, 0]))
percantage_FCL.append(100*np.sum(data_FCL_60[:, 1]) / (data_FCL_60[-1, 0] - data_FCL_60[0, 0]))
percantage_FCL.append(100*np.sum(data_FCL_70[:, 1]) / (data_FCL_70[-1, 0] - data_FCL_70[0, 0]))
percantage_FCL.append(100*np.sum(data_FCL_80[:, 1]) / (data_FCL_80[-1, 0] - data_FCL_80[0, 0]))
percantage_FCL.append(100*np.sum(data_FCL_90[:, 1]) / (data_FCL_90[-1, 0] - data_FCL_90[0, 0]))
percantage_FCL.append(100*np.sum(data_FCL_100[:, 1]) / (data_FCL_100[-1, 0] - data_FCL_100[0, 0]))

length_FCL = [len(data_FCL_0), len(data_FCL_10), len(data_FCL_20), len(data_FCL_30), len(data_FCL_40), len(data_FCL_50), len(data_FCL_60), len(data_FCL_70), len(data_FCL_80), len(data_FCL_90), len(data_FCL_100)]
collisions_per_second_FCL = []
collisions_per_second_FCL.append(1e6*len(data_FCL_0)/np.sum(data_FCL_0[:, 1]))
collisions_per_second_FCL.append(1e6*len(data_FCL_10)/np.sum(data_FCL_10[:, 1]))
collisions_per_second_FCL.append(1e6*len(data_FCL_20)/np.sum(data_FCL_20[:, 1]))
collisions_per_second_FCL.append(1e6*len(data_FCL_30)/np.sum(data_FCL_30[:, 1]))
collisions_per_second_FCL.append(1e6*len(data_FCL_40)/np.sum(data_FCL_40[:, 1]))
collisions_per_second_FCL.append(1e6*len(data_FCL_50)/np.sum(data_FCL_50[:, 1]))
collisions_per_second_FCL.append(1e6*len(data_FCL_60)/np.sum(data_FCL_60[:, 1]))
collisions_per_second_FCL.append(1e6*len(data_FCL_70)/np.sum(data_FCL_70[:, 1]))
collisions_per_second_FCL.append(1e6*len(data_FCL_80)/np.sum(data_FCL_80[:, 1]))
collisions_per_second_FCL.append(1e6*len(data_FCL_90)/np.sum(data_FCL_90[:, 1]))
collisions_per_second_FCL.append(1e6*len(data_FCL_100)/np.sum(data_FCL_100[:, 1]))

print("Length of data_bullet0:", len(data_bullet0))
print("Length of data_bullet10:", len(data_bullet10))
print("Length of data_bullet20:", len(data_bullet20))
print("Length of data_bullet30:", len(data_bullet30))
print("Length of data_bullet40:", len(data_bullet40))
print("Length of data_bullet50:", len(data_bullet50))
print("Length of data_bullet60:", len(data_bullet60))
print("Length of data_bullet70:", len(data_bullet70))
print("Length of data_bullet80:", len(data_bullet80))
print("Length of data_bullet90:", len(data_bullet90))
print("Length of data_bullet100:", len(data_bullet100))
print(" ")
print("Length of data_FCL_0:", len(data_FCL_0))
print("Length of data_FCL_10:", len(data_FCL_10))
print("Length of data_FCL_20:", len(data_FCL_20))
print("Length of data_FCL_30:", len(data_FCL_30))
print("Length of data_FCL_40:", len(data_FCL_40))
print("Length of data_FCL_50:", len(data_FCL_50))
print("Length of data_FCL_60:", len(data_FCL_60))
print("Length of data_FCL_70:", len(data_FCL_70))
print("Length of data_FCL_80:", len(data_FCL_80))
print("Length of data_FCL_90:", len(data_FCL_90))
print("Length of data_FCL_100:", len(data_FCL_100))

average_collisions_per_second_bullet = np.mean(collisions_per_second_bullet)
average_collisions_per_second_FCL = np.mean(collisions_per_second_FCL)

print("Average collisions per second for Bullet:", average_collisions_per_second_bullet)
print("Average collisions per second for FCL:", average_collisions_per_second_FCL)

plt.plot(obstacle_count, percantage_bullet, label='Bullet')
plt.plot(obstacle_count, percantage_FCL, label='FCL')
plt.xlabel('Number of obstacles')
plt.ylabel('Computation time percentage [%]')
plt.title('Computation time percentage with different number of obstacles')
plt.legend()

plt.figure()
plt.plot(obstacle_count, collisions_per_second_bullet, label='Bullet')
plt.plot(obstacle_count, collisions_per_second_FCL, label='FCL')
plt.xlabel('Number of obstacles')
plt.ylabel('Collision detections per second')
plt.title('Collision detections per second with different number of obstacles')
plt.legend()



plt.show()
