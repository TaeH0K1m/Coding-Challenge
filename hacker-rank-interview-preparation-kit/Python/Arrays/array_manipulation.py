"""
    9. Array Manipulation
    Tae H0 K1m

    problem: Find the maximum value in the resulting array after performing
    queries on the given array. Each query contains 3 intergers (a, b, k). Add k
    to the elements in the arry from index a to indexx b

    input:  - the number of elements(0) in the array
            - a 2-dimensional array where each row contains three integers, a,
            b, k (a, b are indices and k is the number to add to the elements in
            the array)
    output: an integer, the maximum value in the resulting array

    approach:
        1. create an array of zeros, sizes n
        2. perform each query to the array
        3. find the maximum value

    example:

    arrayManipulation(10, [[1,5,3],[4,8,7],[6,9,1]])

     0  1  2  3  4  5  6  7  8  9        index
     1  2  3  4  5  6  7  8  9  10       position
    [0  0  0  0  0  0  0  0  0  0]       a  b  k
    [3  3  3  3  3  0  0  0  0  0]       1  5  3
    [3  3  3 10 10  7  7  7  0  0]       4  8  7
    [3  3  3 10 10  8  8  8  1  0]       6  9  1

    max: 10
    *** # OPTIMIZE:
    O(n * m) --> O(n + m)
        0. prefix sum algorithm
        1. create n+1 size array of zeros
        2. perform each query
            - arr[a-1] += k
            - arr[b] -= k
        3. find max

    example:

    arrayManipulation(10, [[1,5,3],[4,8,7],[6,9,1]])

     0  1  2  3  4  5  6  7  8  9  10      index
     1  2  3  4  5  6  7  8  9  10 11      position
    [0  0  0  0  0  0  0  0  0  0  0]      a  b  k
    [3  0  0  0  0 -3  0  0  0  0  0]      1  5  3
    [3  0  0  0  7 -3  0  0 -7  0  0]      4  8  7
    [3  0  0  0  7 -3  1  0 -7  0 -1]      6  9  1
"""

def createArray(n):
    return [0]*n

def performQuery(arr, query):
    a = query[0]
    b = query[1]
    k = query[2]

    arr[a-1] += k
    arr[b] -= k

    return arr

def findMax(arr):
    max = 0
    sum = 0

    for i in arr:
        sum += i
        if max < sum:
            max = sum
    return max

def arrayManipulation(n, queries):
    arr = createArray(n+1)
    for query in queries:
        arr = performQuery(arr, query)
    return findMax(arr)


print(arrayManipulation(10, [[1,5,3],[4,8,7],[6,9,1]]))
# => 10
