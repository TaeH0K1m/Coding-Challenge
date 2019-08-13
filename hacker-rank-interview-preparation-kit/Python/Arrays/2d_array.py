"""
    5. 2D Array
    Tae H0 K1m

    problem: Find the maximum hourglass sum in the given 2-dimensioanl array.

    input: 2 dimensional array of integers
    output: integer which is the maximum hourglass sum in the given array

    approach:
        1. Iterate row from 1 to row length - 1
        and iterate col from 1 to col length - 1
        2. calculate the hourglass sum
        3. check if it is the maximum
"""
def sum(arr, row, col):
    sum = 0
    for i in range (-1, 2):
        for j in range (-1, 2):
            if not ((i == 0 and j == -1) or (i == 0 and j == 1)):
                sum += (arr[row+i][col+j])
    return sum

def hourglassSum(arr):
    max = None
    for row in range(1, len(arr) - 1):
        for col in range(1, len(arr[0]) - 1):
            tempSum = sum(arr, row, col)
            if max == None or max < tempSum:
                max = tempSum
    return max

arr = [[-9, -9, -9, 1, 1, 1],
       [ 0, -9,  0, 4, 3, 2],
       [-9, -9, -9, 1, 2, 3],
       [ 0,  0,  8, 6, 6, 0],
       [ 0,  0,  0,-2, 0, 0],
       [ 0,  0,  1, 2, 4, 0]]

print(hourglassSum(arr))
# => 28
