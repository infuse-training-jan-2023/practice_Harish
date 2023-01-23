import numpy as np
import os

env_num=os.environ['NUM']

def add(num):
    return num+ int(env_num)
    

array_first = np.array([[1, 2],
              [3, 4]])

print ("Adding "+ str(env_num)+ " to every element:")
array = np.array(list(map(add,array_first)))
print(array)
print ("\nSubtracting  " + str(env_num) + " from each element:", array_first-int(env_num) )
print ("\nMultiplying  " + str(env_num) + " from each element:", array_first*int(env_num) )
print ("Cumulative sum along each row:\n",array_first.cumsum(axis = 1))


