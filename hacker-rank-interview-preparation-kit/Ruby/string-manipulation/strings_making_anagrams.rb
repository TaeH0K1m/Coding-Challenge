=begin
Tae H0 K1m
  20. Strings: Making Anagrams

  Given two strings, a and b, that may or may not be of the same length,
  determine the minimum number of character deletions required to make a and b
  anagrams. Any characters can be deleted from either of the strings.
=end

# 1. save freq in Hash
# 2. iterate each character in a and b
# 3. if the character can not be found in other word, increment count
# 4. if found, delete the char for each side
# 5. return count

def makeAnagram(a, b)
  count = 0
  freq_a = Hash.new
  freq_b = Hash.new

  # 1)
  for i in 0...(a.length)
    char = a[i]

    if freq_a[char].nil?
      freq_a[char] = 1
    else
      freq_a[char] += 1
    end
  end

  for i in 0...(b.length)
    char = b[i]

    if freq_b[char].nil?
      freq_b[char] = 1
    else
      freq_b[char] += 1
    end
  end

  # 2)
  for i in 0...(a.length)
    char = a[i]
    next if freq_a[char] == 0

    if freq_b[char].nil?
      count += 1
    elsif freq_b[char] == 0
      count += 1
      freq_a[char] -= 1
    else
      freq_b[char] -= 1
      freq_a[char] -= 1
    end
  end

  for i in 0...(b.length)
    char = b[i]
    next if freq_b[char] == 0

    if freq_a[char].nil?
      count += 1
    elsif freq_a[char] == 0
      count += 1
      freq_b[char] -= 1
    else
      freq_a[char] -= 1
      freq_b[char] -= 1
    end
  end

  return count
end

puts makeAnagram("a", "aa")
# => 1

puts makeAnagram("aac", "acc")
# => 2

puts makeAnagram("cde", "abc")
# => 4

puts makeAnagram("cde", "dcf")
# => 2
