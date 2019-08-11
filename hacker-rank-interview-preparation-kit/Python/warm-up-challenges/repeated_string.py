""" #4 Repeated String
    Tae H0 K1m

    problem:

    input: a string which is going to repeated (consists of lowercase letters)
    output: an integer representing the number of ouccurrences of "a" in the
    given string

    arrproach:
        There is two part.

        1) Find how many "a" appears in the string
        2) Find how many "a" appears in the remaning string

"""

def repeatedString(s, n):
    num = 0

    # 1
    freq = {}
    for i in s:
        if i in freq:
            freq[i] += 1
        else:
            freq[i] = 1

    # check if the given string has the character "a"
    if "a" in freq:
        num += freq["a"] * int((n / len(s)))

        # 2
        for i in range(int((n % len(s)))):
            if s[i] == "a":
                num += 1

        return num
    else:
        return 0

print(repeatedString("abcac", 10))
# => 4

print(repeatedString("aba", 10))
# => 7

print(repeatedString("a", 1000000000000))
# => 1000000000000

print(repeatedString("ceebbcb", 817723))
# => 0?
