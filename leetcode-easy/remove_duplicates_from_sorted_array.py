""" #26 Remove Duplicates From Sortred Array

    Given a sorted array nums, remove the duplicates in-place such that each
    element appear only once and return the new length.

    Do not allocate extra space for another array, you must do this by modifying
    the input array in-place with O(1) extra memory.

    Input: nums = [1,1,2]

    Output: 2 (nums = [1,2])

    1. loop through list
    2. save previous value to compare with next
    3. if they are same remove current one
    4. if they are different, save it as previous value

"""


def removeDuplicates(nums):
        """
        :type nums: List[int]
        :rtype: int
        """

        temp = None
        i = 0

        while i < len(nums):
            if temp != nums[i]:
                temp = nums[i]
                i = i + 1
            else:
                del nums[i]

        return len(nums)


#Test
nums1 = [1,1,2]
nums2 = [0,0,1,1,1,2,2,3,3,4]

# this should return 2 and nums = [1, 2]
print removeDuplicates(nums1)
print nums1
# this should return 5 and nums = [0, 1, 2, 3, 4]
print removeDuplicates(nums2)
print nums2
