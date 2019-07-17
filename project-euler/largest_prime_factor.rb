=begin
  3. Largest prime factor

  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?
=end

def largest_prime_factor(n)
  x = n-1
  until x == 2
    #puts x
    return x if isPrime?(x) && factor?(n, x)
    x -= 1
  end

  #(2...n).reverse_each do |x|
  #  return x if isPrime?(x) && factor?(n, x)
  #end
end

def isPrime?(n)
  (2...n).each do |x|
    #puts "--(" + n.to_s + ")-- " + x.to_s
    return false if n % x == 0
  end
  return true
end

def factor?(num, x)
  return true if num % x == 0
  return false
end


puts largest_prime_factor(15) # 5 (3, 5)
puts largest_prime_factor(13195) # 29 (5, 7, 13, 29)
#puts largest_prime_factor(600851475143)

#1--------------------------- O(n2) ----------------------------
=begin
def largest_prime_factor(n)
  largest = []
  (2...n).each do |x|
    largest << x if isPrime(x) && n % x == 0
  end

  return largest[-1]
end

def isPrime(n)
  (2...n).each do |x|
    return false if n % x == 0
  end

  return true
end
=end
#----------------------------------------------------------------
