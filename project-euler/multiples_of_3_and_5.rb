=begin
  1. Multiples of 3 and 5

  If we list all the natural numbers below 10 that are multiples of 3 or 5,
  we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
=end

def multiples_3_n_5(n)
  sum = 0
  numbers = (1...n).select { |x| x % 3 == 0 || x % 5 == 0 }

  numbers.each do |num|
    sum += num
  end

  return sum
end


puts multiples_3_n_5(10)
puts multiples_3_n_5(1000)
