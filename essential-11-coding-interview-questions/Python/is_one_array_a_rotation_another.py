""" #3 Is One Array a Rotation Another

    input:
        A = [1, 2, 3, 4, 5, 6, 7]
        B = [4, 5, 6, 7, 1, 2, 3]

    output:
        True

    0. ptr(int): to keep track of elements in B

    1. find the index of A[0] in B and set the pointer
    2. loop through A
    3. check if elements from A, B are different
    4. if different, return false
    5. at the end of for loop, return true

    * A and B has the same length
    * no duplicates
"""

def is_rotation(A, B):
    """
        Args:
            A (list): list of numbers
            B (list): list of numbers

        Returns:
            bool: True if A is rotation of B, otherwise false

        Time Complexity:
            O(n)
    """

    ptr = B.index(A[0])

    for i in A:
        if (i != B[ptr]):
            return False
        ptr = (ptr + 1) % 7
    return True

#Test
A = [1, 2, 3, 4, 5, 6, 7]
B = [4, 5, 6, 7, 1, 2, 3]
C = [1, 2, 3, 4, 6, 7, 8]
D = [3, 4, 5, 6, 7, 1, 2]

# this should return true
print is_rotation(A,B)
# this should return false
print is_rotation(A,C)
# this should return true
print is_rotation(A,D)
