""" #2 Counting Valleys

    Gary is an avid hiker. He tracks his hikes meticulously, paying close
    attention to small details like topography. During his last hike he took
    exactly n steps. For every step he took, he noted if it was an uphill, U,
    or a downhill, D step. Gary's hikes start and end at sea level and each
    step up or down represents a 1 unit change in altitude. We define the
    following terms:

    - A mountain is a sequence of consecutive steps above sea level, starting
    with a step up from sea level and ending with a step down to sea level.

    - A valley is a sequence of consecutive steps below sea level, starting
    with a step down from sea level and ending with a step up to sea level.

    Given Gary's sequence of up and down steps during his last hike, find and
    print the number of valleys he walked through.
"""


def countingValleys(n, s):
    """
    :type n: int (the number of steps Gary takes)
    :type s: string (a string describing his path)
    :rtype: int (the number of valleys)
    """
    wasD = False
    wasU = False
    isValley = False
    num_of_valleys = 0
    sea_level = 0

    for i in s:

        if (i == 'U'):
            sea_level = sea_level + 1
        else:
            sea_level = sea_level - 1

        if (wasD and i == 'U' and sea_level <= 0):
            isValley = True

        if (isValley and sea_level == 0):
            num_of_valleys = num_of_valleys + 1
            isValley = False

        if (i == 'D'):
            wasD = True
            wasU = False
        else:
            wasD = False
            wasU = True

    return num_of_valleys


# Test
s = "DDUUUUDD"
 # this should return 1
print countingValleys(8, s)

s = "UDDDUDUU"
 # this should return 1
print countingValleys(8, s)

s = "DDUUDDUDUUUD"
 # this should return 2
print countingValleys(12, s)

s = "UDUUUDUDDD"
 # this should return 0
print countingValleys(10, s)

s = "DUDDDUUDUU"
 # this should return 2
print countingValleys(10, s)
