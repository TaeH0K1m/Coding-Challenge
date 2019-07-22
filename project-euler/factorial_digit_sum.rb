=begin
Tae H0 K1m
  20. Factorial digit sum

  n! means n × (n − 1) × ... × 3 × 2 × 1

  For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
  and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

  Find the sum of the digits in the number 100!
=end

def factorial(n)
  if n == 1
    return 1
  else
    return n * factorial(n-1)
  end
end

def factorial_digit_sum(n)
  sum = 0
  f = factorial(n)
  len = f.to_s.length

  (0...len).reverse_each do |power|
    num = f / (10 ** power)
    f = f % (10 ** power)
    sum += num
  end

  return sum
end

puts factorial(10)
# => 3628800

#puts factorial(100)
# => ?

puts factorial_digit_sum(10)
# => 27

puts factorial_digit_sum(100)
# => ?
