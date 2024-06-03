from numpy import random
from numpy import random

file_path = '/home/casper/Documents/6_semester/bachelor/ba_mobile_manipulator/catkin_ws/src/sphere_scene.scene'



sphere_count = 200

with open(file_path, 'w') as file:
    with open('boundry', 'r') as boundry_file:
        boundry_contents = boundry_file.read()
        file.write(boundry_contents)
    print(f'Successfully generated sphere scene in {file_path}')
    for i in range(sphere_count):
        x = 0
        y = 0
        while abs(x) < 0.5:
            x = random.uniform(-2,8)
        while abs(y) < 0.5:
            y = random.uniform(-2,8)
        z = random.uniform(0.3,1.4)
        file.write(f'* sphere.stl_{i}\n')
        file.write(f'{x} {y} {z}\n')
        with open('sphere', 'r') as sphere_file:
            sphere_contents = sphere_file.read()
            file.write(sphere_contents)
    file.write('\n.\n')



print(f'Successfully generated sphere scene in {file_path}')