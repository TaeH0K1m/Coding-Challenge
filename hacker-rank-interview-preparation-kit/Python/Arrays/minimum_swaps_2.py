"""
    8. Minimum Swaps 2
    Tae H0 K1m

    problem: Return the minimum number of swaps to sort the given array.

    input: the unsorted array
    output: the minimum number of swaps to sort the array

    approach:
        1. iterate through array
        2. if the current value is not correct position,
        3. find the correct position and
        4. swap the two values, and increment the number of swaps

        example:

        2 3 4 1 5
        1 2 3 4 5

        1 <--> 4
        1 3 4 2 5

        2 <--> 4
        1 2 4 3 5

        3 <--> 4
        1 2 3 4 5

    *** # OPTIMIZE:
    O(n2) --> O(n)
    1. use dictionary (key: value - value: position)
"""
def find(posInfo, val):
    return posInfo[val]

def swap(arr, posInfo, pos, index):
    i = pos - 1
    j = index - 1
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
    #
    posInfo[arr[i]] = pos
    posInfo[arr[j]] = index
    return arr, posInfo

def minimumSwaps(arr):
    result = 0
    posInfo = {}
    for i in range(len(arr)):
        pos = i + 1
        val = arr[i]
        posInfo[val] = pos
    #
    for i in range(len(arr)):
        pos = i + 1
        val = arr[i]
        if val != pos:
            index = find(posInfo, pos)
            arr, posInfo = swap(arr, posInfo, pos, index)
            result += 1
    return result

print(minimumSwaps([2,3,4,1,5]))
# => 3

print(minimumSwaps([1,3,5,2,4,6,7]))
# => 3
