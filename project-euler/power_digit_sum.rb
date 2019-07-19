=begin
Tae H0 K1m
  16. Power digit sum

  2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

  What is the sum of the digits of the number 2^1000?
=end

# 1. calculate the power
# 2. convert to string to iterate each digit
# 3. convert back to number to calculate sum
# 4. return sum

def power_digit_sum(base, exponent)
  # 1) calculate the power
  power = base ** exponent
  sum = 0

  # 2) convert to string to iterate each digit
  len = power.to_s.length
  for index in (0...len)
    # 3) convert back to number to calculate sum
    sum += power.to_s[index].to_i
  end

  # 4) return sum
  return sum
end

puts power_digit_sum(2, 15)
# => 26, (3 + 2 + 7 + 6 + 8 = 26)

puts power_digit_sum(2, 1000)
# => ?
