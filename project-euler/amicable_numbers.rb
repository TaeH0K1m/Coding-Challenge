=begin
Tae H0 K1m
  21. Amicable numbers

  Let d(n) be defined as the sum of proper divisors of n (numbers less than n
  which divide evenly into n).

  If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and
  each of a and b are called amicable numbers.

  For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44,
  55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4,
  71 and 142; so d(284) = 220.

  Evaluate the sum of all the amicable numbers under 10000.
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

def amicable_numbers(n)
  sum = 0
  
  for i in 1..n
    temp = sum_of_proper_divisors(i)
    if i == sum_of_proper_divisors(temp) && i != temp
      sum += i
    end
  end

  return sum
end

#puts sum_of_proper_divisors(220)
# => 284

#puts sum_of_proper_divisors(284)
# => 220

puts amicable_numbers(10_000)
# => ?
