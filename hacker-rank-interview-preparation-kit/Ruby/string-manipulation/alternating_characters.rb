=begin
Tae H0 K1m

  21. Alternating characters

  You are given a string containing characters A and B only. Your task is to
  change it into a string such that there are no matching adjacent characters.
  To do this, you are allowed to delete zero or more characters in the string.

  Your task is to find the minimum number of required deletions.

  For example, given the string s = AABAAB, remove an A at positions 0 and 3 to
  make s = ABAB in 2 deletions.
=end

# 1. iterate through input string til length-1
# 2. if string[i] and string[i+1], increment count
# 3. return count

def alternatingCharacters(s)
  count = 0

  # 1) iterate through input string til length-1
  for i in 0...(s.length - 1)
    # 2) if string[i] and string[i+1], increment count
    count += 1 if s[i] == s[i+1]
  end

  # 3) return count
  return count
end

puts alternatingCharacters("AAAA")
# => 3

puts alternatingCharacters("BBBBB")
# => 4

puts alternatingCharacters("ABABABAB")
# => 0

puts alternatingCharacters("BABABA")
# => 0

puts alternatingCharacters("AAABBB")
# => 4
