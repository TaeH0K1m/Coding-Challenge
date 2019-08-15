"""
    10. Hash Tables: Ransom Note
    Tae H0 K1m

    problem: Print "Yes" if you can replicate the ransom note exactly using
    whole words from the megazine, otherwise print "No"

    input: - an array of strings, each a word in the megazine
           - an array of strings, each a word in the ransom note
    output: print "Yes" or "No"

    approach:
        1. use dictionary to store frequency of each word from the megazine
        2. iterate through note
        3. find the current word in the magazine
        4. if found, decrese the count
        5. otherwise, return "No"
        6. After the iteration, return "Yes"

    example:

    magazine = [give me one grand today night]
    note = [give one grand today]

    # => "Yes"
"""

def checkMagazine(magazine, note):
    freq = {}
    for word in magazine:
        if word in freq:
            freq[word] += 1
        else:
            freq[word] = 1

    for word in note:
        if word in freq:
            if freq[word] == 0:
                return "No"
            freq[word] -= 1
        else:
            return "No"

    return "Yes"

magazine = ["give", "me", "one", "grand", "today", "night"]
note = ["give", "one", "grand", "today"]

print(checkMagazine(magazine, note))
# => Yes
