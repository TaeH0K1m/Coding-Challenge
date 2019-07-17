=begin
  6. Sum square difference

  The sum of the squares of the first ten natural numbers is,

    1^2 + 2^2 + ... + 10^2 = 385

  The square of the sum of the first ten natural numbers is,

    (1 + 2 + ... + 10)^2 = 552 = 3025

  Hence the difference between the sum of the squares of the first ten natural
  numbers and the square of the sum is 3025 − 385 = 2640.

  Find the difference between the sum of the squares of the first one hundred
  natural numbers and the square of the sum.
=end

def sum_squre_difference(n)
  square_of_sum(n) - sum_of_square(n)
end

def sum_of_square(n)
  sum = 0
  (1..n).each do |i|
    sum += square(i)
  end

  return sum
end

def square_of_sum(n)
  sum = 0
  (1..n).each do |i|
    sum += i
  end

  return square(sum)
end

def square(n)
  n * n
end

puts sum_squre_difference(10) # 2640
puts sum_squre_difference(100)
