import matplotlib.pyplot as plt
import numpy as np

data = np.genfromtxt('joint_position.csv', delimiter=',')

print("Length of data:", data.shape)

time = data[ :, 0]/1e9
position = data[:, 1:11]
velocity = data[:, 11:21]
acceleration = data[:, 21:31]
print("Length of time:", time.shape)
print("Length of position:", position.shape)

joint_names = ['base_x', 'base_y', 'base_theta', 'panda_joint1', 'panda_joint2', 'panda_joint3', 'panda_joint4', 'panda_joint5', 'panda_joint6', 'panda_joint7']

for i in range(position.shape[1]):
    plt.figure()
    plt.plot(time, position[:,i], label='Position')
    plt.plot(time, velocity[:,i], label='Velocity')
    plt.plot(time, acceleration[:,i], label='Acceleration')
    plt.xlabel('Time (s)')
    if i < 3:
        plt.ylabel('pos [m], vel [m/s], acc [m/s^2]')
    else:
        plt.ylabel('pos [rad], vel [rad/s], acc [rad/s^2]')
    # plt.title(f'{joint_names[i]} Trajectory')
    plt.legend()
plt.show()



