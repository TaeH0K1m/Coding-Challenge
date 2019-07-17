=begin
  7. 1001st prime

  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
  that the 6th prime is 13.

  What is the 10 001st prime number?
=end

def nst_prime(n)
  number = 0
  count = 0

  until count == n
    loop {
      number += 1

      if isPrime?(number)
        count += 1
        break
      end
    }
  end

  return number
end

def isPrime?(n)
  if n == 1
    return false
  end

  (2...n).each do |i|
    return false if n % i == 0
  end

  return true
end

puts nst_prime(1)
# => 2
puts nst_prime(2)
# => 3
puts nst_prime(3)
# => 5
puts nst_prime(6)
# => 13
puts nst_prime(10_001)
# => ?
