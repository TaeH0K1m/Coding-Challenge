""" #3 Jumping on the Clouds
    Tae H0 K1m

    problem: You wants to jump from the first element to the last element in
    the given array (an array of binary integers). You need to avoid 1. Output
    is the minimum number of jumps required.

    input: an array of binary integers
    output: the minimum number of jumps required

    approach:
        1. iterate the array
        2. check if the element in the current index plus 2 is 0, then update
        index plus 2, otherwise plus 1,
        3. increment the number of jumps
"""

def jumpingOnClouds(c):
    jumps = 0
    i = 0

    while i < len(c) - 1:
      if i+2 < len(c) and c[i+2] == 0:
        i += 2
      else:
        i += 1

      jumps += 1

    return jumps


print(jumpingOnClouds([0,0,1,0,0,1,0]))
# => 4

print(jumpingOnClouds([0,0,0,0,1,0]))
# => 3

print(jumpingOnClouds([0,0]))
# => 1
