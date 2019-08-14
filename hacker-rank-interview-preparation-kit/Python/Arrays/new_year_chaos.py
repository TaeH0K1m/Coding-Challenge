"""
    7. New Year Chaos
    Tae H0 K1m

    problem: Find the minimum number of swaps to get sorted list from the given
    input list. Each element can only sawp at most 2 times.

    input: array of integers from 1 to n
    output: the minimum number or swaps to get the sorted list

    approach:
        (brute force)
        1. sort the array from the first element
        2. use dictionary to count how many times each element swaps
        3. return "Too chaotic" if one of the elements swaps more than 2 times.
        4. after the iteration, return the total number of swaps (is it minimum?)

        1. iterate from 1 to size - 1
        2. compare the elmenet and index + 1
        3. if the difference is within two, increment swaps and index +
        difference

        1. iterate the array
        2. compare element and (index + 1)
        3. if the difference is more than 2, return "Too chaotic"
        4. otherwise, increment swaps by the difference
        5. after the iteration, return swaps / 2
"""

def minimumBribes(q):
    swaps = 0
    for i in range(len(q)):
        pos = i
        val = q[i] - 1
        if val - pos > 2:
            return "Too chaotic"
        for j in range(0, pos):
            if q[j] > val:
                swaps += 1
    return swaps



print(minimumBribes([2,1,5,3,4]))
# => 3

print(minimumBribes([2,5,1,3,4]))
# => Too chaotic

print(minimumBribes([5,4,3,2,1]))
# => Too chaotic

print(minimumBribes([1,2,5,3,7,8,6,4]))
# => 7
