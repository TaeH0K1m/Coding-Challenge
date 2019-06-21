""" Most Frequently Occurring Item In An Array

    Example:

    input: [1, 3, 1, 3, 2, 1]
    output: 1

    0. max_index (int), max_count (int): to update most frequently occurring item

    1. loop through the given array
    2. use dictionary to store how many time each element occurring
    3. update max
    4. return

"""

def most_frequent(given_array):
    """ find the inter that is most frequently occurred in the given array

    Args:
        given array: list of integers

    Returns:
        integer that is most frequently occurring

    Time Complexity:
        O(n)
    """

    count = {}
    max_count = -1
    max_item = -1

    for i in given_array:
        if i not in count:
            count[i] = 1
        else:
            count[i] = count[i] + 1
            if count[i] > max_count:
                max_count = count[i]
                max_item = i
    return max_item;

# Test
array1 = [1, 3, 1, 3, 2, 1]
array2 = [3, 4, 4, 5, 4]
# this should return 1
print most_frequent(array1)
# this should return 4
print most_frequent(array2)
