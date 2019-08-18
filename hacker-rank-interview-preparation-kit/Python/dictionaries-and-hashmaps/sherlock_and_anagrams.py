"""
    12. Sherlock and Anagrams
    Tae H0 K1m

    problem: find the number of anagrammatic pairs of substring in the string

    input: string (only lowercase)
    output: the number of anagrammatic pairs of substrings in the string

    approach:
        0. brute force O(n3)
        1. let string length variable equals to 1
        2. the first loop increments string length upto the string's length
        3. the second loop increments 1st pointer by 1
        4. the third loop increments 2nd pointer by length
        5. put pointed character into dictionary
        6. compare dictionary, if match increment the result

    example:

    s = abba
    1: (a, a)
    2: (b, b)
    3: (ab, ba)
    4: (abb , bba)

    s = cdcd
    1: (c, c)
    2: (d, d)
    3: (cd, dc)
    4: (cd, cd)
    5: (dc, cd)
"""

def storeFreq(s):
    freq = {}
    for i in s:
        if i in freq:
            freq[i] += 1
        else:
            freq[i] = 1
    return freq

#print(storeFreq("ab"))

def compareFerq(freq, s):
    for char in s:
        if char not in freq or freq[char] == 0:
            return False
        elif char in freq:
            freq[char] -= 1
    return True

#print(compareFerq({'a': 1, 'b': 1}, "ca"))

def sherlockAndAnagrams(s):
    result = 0
    freq = {}
    # 1st loop
    for length in range(1, len(s)):
        #print("length", length)
        for i in range(len(s) - length):
            #print("i", i, s[i:(i+length)])
            target = s[i:(i+length)]
            #freq = storeFreq(target)
            for j in range(i+1, len(s) - length + 1):
                freq = storeFreq(target)
                #print(freq)
                stringCompare = s[j:(j+length)]
                if compareFerq(freq, stringCompare):
                    #print("ANAGRAM FOUND")
                    result += 1
                #print("j", j, s[j:(j+length)])
            #print("")
        #print("")
    return result

print(sherlockAndAnagrams("abba"))
# => 4

print(sherlockAndAnagrams("abcd"))
# => 0

print(sherlockAndAnagrams("ifailuhkqq"))
# => 3

print(sherlockAndAnagrams("kkkk"))
# => 10
