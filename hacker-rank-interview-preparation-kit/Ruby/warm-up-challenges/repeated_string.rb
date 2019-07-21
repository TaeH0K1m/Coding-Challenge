=begin
Tae H0 K1m
  4. Repeated String

  Lilah has a string, class << self; self end, of lowercase English letters that
  she repeated infinitely many times.

  Given an integer, n, find and print the number of letter a's in the first
  letters of Lilah's infinite string.
=end

# 1. count how many "a" in the string
# 2. find how many time s repeated
# 3. count rest of "a"s

def repeatedString(s, n)
  count = 0

  # 1) count how many "a" in the string
  for i in (0...s.length)
    count += 1 if s[i] == "a"
  end

  # 2) find how many time s repeated
  times = n / s.length
  count *= times

  # 3) count rest of "a"s
  for i in 0...(n % s.length)
    count += 1 if s[i] == "a"
  end

  return count
end

puts repeatedString("abcac", 10)
# => 4

puts repeatedString("aba", 10)
# => 7, abc abc abc a

puts repeatedString("a", 1_000_000_000_000)
# => 1_000_000_000_000
