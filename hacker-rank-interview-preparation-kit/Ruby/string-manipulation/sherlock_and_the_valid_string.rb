=begin
Tae H0 K1m
  22. Sherlock and the Valide String

  Sherlock considers a string to be valid if all characters of the string
  appear the same number of times. It is also valid if he can remove just 1
  character at 1 index in the string, and the remaining characters will occur
  the same number of times. Given a string s, determine if it is valid. If so,
  return YES, otherwise return NO.
=end

# 1. save frequency for each character
# 2. find min value
# 3. set boolean one_removed to false
# 4. iterate freq,
#    if value is one away from min and one character hasn't removed yet, skip
#    if value is not equal to min value return NO, otherwise YES

def isValid(s)
  # 1) save frequency for each character
  freq = Hash.new
  for i in 0...(s.length)
    char = s[i]
    if freq[char].nil?
      freq[char] = 1
    else
      freq[char] += 1
    end
  end

  # 2) find the min value
  min = nil
  freq.each_value do |count|
    if min.nil?
      min = count
    else
      min = count if count < min
    end
  end

  # 3) set boolean one_removed to false
  one_removed = false

  # 4) iterate freq
  freq.each_value do |count|
    if (count - min).abs == 1 && !one_removed
      one_removed = true
      next
    elsif count != min
      return "NO"
    end
  end

  return "YES"
end

puts isValid("aabbc") # <-- need different approach
# => YES

puts isValid("abc")
# => YES

puts isValid("abcc")
# => YES

puts isValid("abccc")
# => NO

puts isValid("aabbcd")
# => NO

puts isValid("aabbccddeefghi")
# => NO

puts isValid("abcdefghhgfedecba")
# => YES


# ASSUMPTION the same value is one.
=begin
# 1. save frequency for each character
# 2. set boolean one_removed to false
# 3. iterate freq,
#    if value is 2, set one_removed to true
#    if value is more than 2 and one_removed is true, return NO, otherwise YES

def isValid(s)
  # 1) save frequency for each character
  freq = Hash.new
  for i in 0...(s.length)
    char = s[i]
    if freq[char].nil?
      freq[char] = 1
    else
      freq[char] += 1
    end
  end

  print freq
  p " "

  # 2) set boolean one_removed to false
  one_removed = false

  # 3) iterate freq
  freq.each_value do |count|
    # if value is 2, set one_removed to true
    if count == 2 && !one_removed
      one_removed = true
      next
    end
    # if value is more than 2 and one_removed is true, return NO
    return "NO" if count > 1
  end

  return "YES"
end
=end
