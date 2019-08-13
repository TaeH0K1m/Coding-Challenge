"""
    6. Arrays: Left Rotation
    Tae H0 K1m

    problem: Rotatte the given array of interger to the left by the given
            integer number

    input: array of intergers
           the number of rotation to the left
    output: rotated array

    approach:
        1. find the index of the first element in the new array
        2. iterate the given array size-1 times and add integer to the new array
"""

def rotLeft(a, d):
    index = d % len(a)
    result = []
    for i in range(len(a)):
        result.append(a[(i + index) % len(a)])
    return result

print(rotLeft([1,2,3,4,5], 4))
# => 5, 1, 2, 3, 4
