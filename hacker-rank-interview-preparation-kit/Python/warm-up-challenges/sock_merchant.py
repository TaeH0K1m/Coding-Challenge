""" Sock Merchant

    John works at a clothing store. He has a large pile of socks that he must
    pair by color for sale. Given an array of integers representing the color
    of each sock, determine how many pairs of socks with matching colors there are.

    For example, there are n=7 socks with colors ar = [1,2,1,2,1,3,2]. There is
    one pair of color 1 and one of color 2. There are three odd socks left,
    one of each color. The number of pairs is 2.

    - Time Complexity: O(n)
    - Space Complexity: O(n)

"""
def sockMerchant(n, ar):
    '''
    :type n: int (the number of socks in the pile)
    :type ar: List[int] (the color of each sock)
    :rtype: int (the total number of matching pairs of socks)
    '''

    result = 0

    # store frequency of each chars
    freq = {}
    for i in ar:
        if i in freq:
            freq[i] = freq[i] + 1
        else:
            freq[i] = 1

    # find the frequency of 2
    for i in freq:
        add = freq[i] / 2
        result = result + add

    return result



# Test

n = 7
ar = [1,2,1,2,1,3,2]
# this should return 2
print sockMerchant(n, ar)

n1 = 0
ar1 = []
# this should return 0
print sockMerchant(n1, ar1)

n2 = 7
ar2 = [1,1,1,1,1,1,2]
# this should return 3
print sockMerchant(n2, ar2)
