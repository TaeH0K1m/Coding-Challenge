""" Find Two Integer That Multiply To 20

    Example:

    input: [2, 4, 1, 6, 5, 40, -1]
    output: (4, 5)

    0. seen (list): store element that seen

    1. loop through the given list
    2. check the number that multiply to 20 with each element
    3. find the number is in the seen elements
    4. if there is no, store the current element to the list
    5. if there is, return the two number that makes 20

"""


def multiply_to_twenty(list):
    """ Find two integers from the given list that multiply to 20

    Args:
        list (list of int)

    Returns:
        num1 (int): integer that multiply to 20 with num2
        num2 (int): integer that multiply to 20 with num1

    Time Complexity:
        O(n)
    """

    seen = []

    for elem in list:
        if what_make_twenty_with(elem) in seen:
            return elem, what_make_twenty_with(elem)
        else:
            seen.append(elem)
    return 0, 0

def what_make_twenty_with(num):
    """ Helper function to find the number that makes 20 with input value

    Args:
        num (int)

    Returns:
        int: integer that makes 20 with given interger
    """

    return 20.0/num


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
