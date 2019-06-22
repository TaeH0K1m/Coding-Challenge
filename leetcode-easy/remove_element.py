""" #27 Remove Element

    Given an array nums and a value val, remove all instances of that value
    in-place and return the new length.

    Do not allocate extra space for another array, you must do this by
    modifying the input array in-place with O(1) extra memory.

    The order of elements can be changed. It doesn't matter what you leave
    beyond the new length.

    input:
        nums = [3,2,2,3], val = 3
    output:
        len 2, (nums = [2, 2])

    1. loop though the list
    2. if the current element is sams as val, remove it
"""

def removeElement(nums, val):
        """
        :type nums: List[int]
        :type val: int
        :rtype: int
        """
        i = 0

        while i < len(nums):
            if (nums[i] == val):
                del nums[i]
            else:
                i = i + 1

        return len(nums)

# Test
nums1 = [3,2,2,3]
val1 = 3

nums2 = [0,1,2,2,3,0,4,2]
val2 = 2

# this should return 2, [2,2]
print removeElement(nums1, val1)
print nums1
# this should return 5, [0,1,3,0,4]
print removeElement(nums2, val2)
print nums2
