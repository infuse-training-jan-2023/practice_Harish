import numpy as np
import os
import sys

env_variable=os.environ['NUM']
num=sys.argv[1]
def add(num):
    return num+ int(env_variable)
    

num_array = np.array([[1, 2],[3, 4]])
print("array",num_array)
print ("After adding "+ str(env_variable)+ " to every element:")
array = np.array(list(map(add,num_array)))
print(array)
print ("\nAfter subtracting  " + str(env_variable) + " from each element:", num_array-int(env_variable) )
print ("\nAfter multiplying  " + str(num) + " from each element:", num_array*int(num) )
print ("Cumulative sum along each row:\n",num_array.cumsum(axis = 1))


