"""
    11. Two Strings
    Tae H0 K1m

    problem: Determine if two strings share a common substring. A substring
    maybe as small as one character. Return either "Yes" or "No" based on
    whehter the strings share a common substing

    input: two strings
    output: "Yes" or "No " based on whehter the strings share a common substing

    approach:
        0. check if the two strings share a character
        1. store frequency of character in the first word
        2. iterate through the second word
        3. if the current character is in the first word, return "Yes"
        4. after iteration, return "No"

    example:

    hello, world => Yes
    hi, world => No

"""

def twoStrings(s1, s2):
    freq = {}
    for char in s1:
        if char not in freq:
            freq[char] = 1

    for char in s2:
        if char in freq:
            return "Yes"

    return "No"

print(twoStrings("hello", "world"))
# => Yes

print(twoStrings("hi", "world"))
# => No
