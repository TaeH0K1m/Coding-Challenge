=begin
Tae H0 K1m
  23. Non-abundant sums

  A perfect number is a number for which the sum of its proper divisors is
  exactly equal to the number. For example, the sum of the proper divisors of
  28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

  A number n is called deficient if the sum of its proper divisors is less than
  n and it is called abundant if this sum exceeds n.

  As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
  number that can be written as the sum of two abundant numbers is 24.
  By mathematical analysis, it can be shown that all integers greater than
  28123 can be written as the sum of two abundant numbers. However, this upper
  limit cannot be reduced any further by analysis even though it is known that
  the greatest number that cannot be expressed as the sum of two abundant
  numbers is less than this limit.

  Find the sum of all the positive integers which cannot be written as the sum
  of two abundant numbers.
=end

def sum_of_proper_divisors(n)
  sum = 0
  i = 1

  while i < n
    sum += i if n % i == 0
    i += 1
  end
  return sum
end

def is_abundant(n)
  return sum_of_proper_divisors(n) > n
end

def is_sum_of_two_abundant(n)
  for i in 0...n
    if is_abundant(i) && is_abundant(n-i)
      return true
    end
  end

  return false
end

def non_abundant_sum()
  sum = 0
  abundants = []
  for i in 1...28123
    abundants << i if is_abundant(i)
  end

  for i in 1..28123
    sum += i unless is_sum_of_two_abundant(i)
  end

  return sum
end

#puts sum_of_proper_divisors(28)
#puts is_abundant(18)
#puts is_abundant(24)
#puts is_sum_of_two_abundant(24)
#puts is_sum_of_two_abundant(25)
puts non_abundant_sum
