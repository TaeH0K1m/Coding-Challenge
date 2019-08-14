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
"""
def find(arr, pos):
    for i in range(len(arr)):
        if pos == arr[i]:
            return i
    return -1

def swap(arr, i, index):
    temp = arr[i]
    arr[i] = arr[index]
    arr[index] = temp
    return arr

def minimumSwaps(arr):
    result = 0
    for i in range(len(arr)):
        pos = i + 1
        val = arr[i]
        if val != pos:
            index = find(arr, pos)
            arr = swap(arr, i, index)
            result += 1
    return result

print(minimumSwaps([2,3,4,1,5]))
# => 3

print(minimumSwaps([1,3,5,2,4,6,7]))
# => 3
