=begin
Tae H0 K1m
  11. Two Strings

  Given two strings, determine if they share a common substring. A substring
  may be as small as one character.

  For example, the words "a", "and", "art" share the common substring . The
  words "be" and "cat" do not share a substring.

  it should return a string, either YES or NO based on whether the strings
  share a common substring.
=end

# 1. store characters frequency in first word
# 2. check if the second word has the common characters
# 3. if there is, print "YES", otherwise print "NO"

def twoStrings(s1, s2)
  freq = Hash.new

  # 1) store characters frequency in first word
  for i in 0...(s1.length)
    freq[s1[i]] = 1
  end

  # 2) check if the second word has the common characters
  for i in 0...(s2.length)
    return "YES" unless freq[s2[i]].nil?
  end

  return "NO"
end

puts twoStrings("hello", "world")
# => YES

puts twoStrings("hi", "world")
# => NO
