""" #35 Search Insert Position

    Given a sorted array and a target value, return the index if the target is
    found. If not, return the index where it would be if it were inserted in
    order.

    You may assume no duplicates in the array.
"""

def searchInsert(nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: int
        """

        index = 0

        while index < len(nums):
            if nums[index] >= target:
                return index
            index = index + 1
        return index
        
# Test

nums1 = [1,3,5,6]
target1 = 5
# this should return 2
print searchInsert(nums1, target1)

nums2 = [1,3,5,6]
target2 = 2
# this should return 1
print searchInsert(nums2, target2)

'''
Input: [1,3,5,6], 7
Output: 4
Example 4:

Input: [1,3,5,6], 0
Output: 0
'''
