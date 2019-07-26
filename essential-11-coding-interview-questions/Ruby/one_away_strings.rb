=begin
Tae H0 K1m
  5. One Away Strings

  example.

  s1a = "abcde"
  s1b = "adfde"
  is_one_away(s1a, s1b) => true

  s2a = "abcde"
  s2b = "abde"

  s3a = "xyz"
  s3b = "xyaz"
=end

# case 1: (same length) replace one char
# case 2: (length diff is 1) add or remove the char

# 1. check the length, if length diff is more than 1, return false
# 2. if it has the same length, iterate through strings, and check
# 3. if the diff is 1, iterate through strings with two pointers
#    (iterate on longer length)
def is_one_away(a, b)
  ptr_a = 0
  ptr_b = 0
  one_away = false
  # 1)
  if a.length == b.length
    # 2)
    for i in 0...(a.length)
      if a[i] != b[i] && !one_away
        one_away = true
      elsif a[i] != b[i] && one_away
        return false
      end
      return true
    end
  else # 3)
    if (a.length - b.length).abs > 1
      return false
    elsif a.length > b.length
      for i in 0...(a.length)
        if a[i] == b[ptr_b]
          ptr_b += 1
        elsif a[i] != b[ptr_b] && !one_away
          one_away = true
        elsif a[i] != b[ptr_b] && one_away
          return false
        end
      end
      return true
    elsif a.length < b.length
      for i in 0...(b.length)
        if b[i] == a[ptr_a]
          ptr_a += 1
        elsif b[i] != a[ptr_a] && !one_away
          one_away = true
        elsif b[i] != a[ptr_a] && one_away
          return false
        end
      end
      return true
    end
  end
end

puts is_one_away("abcde", "adfde")
# => true

puts is_one_away("abcde", "abde")
# => true

puts is_one_away("xyz", "xyaz")
# => true
