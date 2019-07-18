=begin
  10. Summation of primes

  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.
=end

def summation_of_primes(limit)
  number = 1
  sum = 0

  while number < limit
    sum += number if isPrime?(number)
    number += 1
  end

  return sum
end

# better version
def isPrime?(n)
  if n == 1
    return false    # 1
  elsif n < 4
    return true     # [2, 3]
  elsif n % 2 == 0
    return false    # 4, 6, 8, ...
  elsif n < 9
    return true     # [5, 7]
  elsif n % 3 == 0
    return false    # 9, 12, 15, ...
  else
    r = Math.sqrt(n).floor
    f = 5

    while f <= r
      return false if n % f == 0
      return false if n % (f + 2) == 0
      f += 6
    end

    return true
  end
end


puts summation_of_primes(10)
# => 17
puts summation_of_primes(2_000_000)
# => ?


=begin
def isPrime?(n)
  return false if n == 1

  for i in (2...n)
    return false if n % i == 0
  end

  return true
end
=end
