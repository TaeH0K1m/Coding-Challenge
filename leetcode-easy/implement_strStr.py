""" #28 Implement strStr

    Return the index of the first occurrence of needle in haystack, or -1 if
    needle is not part of haystack.

    Input: haystack = "hello", needle = "ll"

    Output: 2

    Input: haystack = "aaaaa", needle = "bba"

    Output: -1

    [1]
        1. empty string return 0
    [2]
        1. ptr1, ptr2, index
        2. loop through haystack
        3. if ptr2 is same as needle's length, return index
        4. if ptr2 and ptr1 points the same character,
            - save index (= ptr1)
            - increment ptr1, ptr2
        5. if different character,
            - reset ptr2 (= 0)
            - reset index (= -1)

    * what if needle is empty string => return 0
"""

def strStr(haystack, needle):
    """
    :type haystack: str
    :type needle: str
    :rtype: int
    """

    if len(needle) == 0:
        return 0
    if len(needle) > len(haystack):
        return -1

    ptr_haystack = 0
    ptr_needle = 0
    index = -1

    while ptr_haystack < len(haystack) - len(needle):

        ptr_needle = 0
        while ptr_needle < len(needle):
            if haystack[ptr_haystack + ptr_needle] != needle[ptr_needle]:
                break;
            ptr_needle = ptr_needle + 1
            
        if ptr_needle == len(needle):
            return ptr_haystack

        ptr_haystack = ptr_haystack + 1

    return index


# Test
'''
haystack1 = "hello"
needle1 = ""
# this should return 0
print strStr(haystack1, needle1)

haystack2 = "aaaaa"
needle2 = "bba"
# this should return -1
print strStr(haystack2, needle2)

haystack3 = "hello"
needle3 = "ll"
# this should return 2
print strStr(haystack3, needle3)

haystack4 = "heloll"
needle4 = "ll"
# this should return 4
print strStr(haystack4, needle4)

haystack5 = "aaa"
needle5 = "aaaa"
# this should return -1
print strStr(haystack5, needle5)

haystack6 = "hell"
needle6 = "ll"
# this should return 2
print strStr(haystack6, needle6)
'''
haystack7 = "mississippi"
needle7 = "issip"
# this should return 4
print strStr(haystack7, needle7)
