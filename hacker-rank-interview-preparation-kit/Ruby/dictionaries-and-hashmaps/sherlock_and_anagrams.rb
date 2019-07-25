=begin
Tae H0 K1m
  12. Sherlock and Anagrams

  Two strings are anagrams of each other if the letters of one string can be
  rearranged to form the other string. Given a string, find the number of pairs
  of substrings of the string that are anagrams of each other.

  It must return an integer that represents the number of anagrammatic pairs of
  substrings in s.
=end

# 1. loop from 0 to s.length-1 (the length of the pattern)
# 2. iterate char through word
# 3. set text and pattern

def pattern_search(text, pattern)
end

def sherlockAndAnagrams(s)

  # set pattern
  for i in 0...(s.length) # i: length of the pattern
    pattern = Hash.new

    for j in 0..i
      pattern[s[i+j]] = 1
    end

    # check pattern
  end
end

puts sherlockAndAnagrams("abba")
# => 4

#puts sherlockAndAnagrams("abcd")
# => 0

#puts sherlockAndAnagrams("ifailuhkqq")
# => 3

#puts sherlockAndAnagrams("kkkk")
# => 10

#puts sherlockAndAnagrams("cdcd")
# => 5
