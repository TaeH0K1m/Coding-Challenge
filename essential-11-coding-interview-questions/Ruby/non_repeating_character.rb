=begin
Tae H0 K1m
  4. Non-Repeating Character

  example.
  non_repeating("aabcb") => 'c'
  non_repeating("xxyz") => 'y'
  non_repeating("aabb") => nil
  O(n)
=end

# ** save order?

# 1. save frequency for each character
# 2. iterate freq if count is one return key

def non_repeating(s)
  freq = Hash.new

  # 1) save frequency for each character
  for i in 0...(s.length)
    char = s[i]
    if freq[char].nil?
      freq[char] = 1
    else
      freq[char] += 1
    end
  end

  # 2) iterate freq if count is one return key
  freq.each do |key, value|
    return key if value == 1
  end

  return nil
end

puts non_repeating("aabcb")
# => 'c'

puts non_repeating("xxyz")
# => 'y'

puts non_repeating("aabb")
# => nil
