"""Common Elements in Two Sorted Arrays

    Example:

    input:
        A = [1, 3, 4, 6, 7, 9]
        B = [1, 2, 4, 5, 9, 10]

    output:
        [1,4,9]

    0. result(list): to store common elements
        index_A (int): keep track of index of A
        index_B (int): keep track of index of B

    1. loop through A
    2. check elements that index_A, index_B point
    3. if they are same, store in result list and increment indices
    4. if A's element is bigger, increment index_B
    5. if B's element is bigger, increment index_A
    6. return result

    * A, B has the same length
    * no duplicates
"""

def common_elements(A, B):
    """
        Args:
            A (sorted list)
            B (sorted list)

        Returns:
            result (list): list of common elements

        Time Complexity:
            O(n)
    """

    result = []
    index_A = 0
    index_B = 0

    while index_A < len(A) and index_B < len(B):
        if A[index_A] == B[index_B]:
            result.append(A[index_A])
            index_A = index_A + 1
            index_B = index_B + 1
        elif A[index_A] > B[index_B]:
            index_B = index_B + 1
        else:
            index_A = index_A + 1

    return result

#Test
A = [1, 3, 4, 6, 7, 9]
B = [1, 2, 4, 5, 9, 10]
C = [1, 2, 3, 4, 5, 6]

# this should print [1,4,9]
print common_elements(A, B)
# this should print [1,3,4,6]
print common_elements(A, C)
