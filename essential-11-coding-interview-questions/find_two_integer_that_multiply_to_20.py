"""
    Example:

    input: [2, 4, 1, 6, 5, 40, -1]
    output: (4, 5)

"""


def multiply_to_twenty(list):
    """ Find two integers from the given list that multiply to 20

    Args:
        list( list of int)

    Returns:
        num1 (int): integer that multiply to 20 with num2
        num2 (int): integer that multiply to 20 with num1
    """

    num1 = 0
    num2 = 0

    for i in list:
        for j in list:
            if i != j:
                if (i*j) == 20:
                    num1 = i
                    num2 = j

    return num1, num2

# Test
list1 = [2, 4, 1, 6, 5, 40, -1];
list2 = [6, 7, 1, 2, 5, 10, 0];
list3 = [7, 9, 6, 5, 1, -11];

# this should return 4, 5
print multiply_to_twenty(list1)
# this should return 2, 10
print multiply_to_twenty(list2)
# this should return 0, 0
print multiply_to_twenty(list3)
