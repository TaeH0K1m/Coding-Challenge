=begin
  5. Smallest multiple

  2520 is the smallest number that can be divided by each of the numbers from 1
  to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the
  numbers from 1 to 20?
=end

def smallest_multiple(number)
  product = 1
  temp = Hash.new

  prime_numbers = (1..number).select { |x| isPrime?(x) }
  composites = (1..number).select { |x| !isPrime?(x) }

  # find the numbers
  composites.each do |x|
    (2...x).each do |i|
      puts x, i if factor?(x, i)
    end
  end

  # multiply prime numbers
  prime_numbers.each do |x|
    temp[x] = 1
  end

  print temp, prime_numbers, composites
end

def isPrime?(n)
  (2...n).each do |x|
    return false if n % x == 0
  end

  return true
end

def factor?(a, b)
  return true if a % b == 0
  return false
end

puts smallest_multiple(10)  # 2520
#puts smallest_multiple(20)

#1------- Take Too much time when argument is 20 ---------------
=begin
def smallest_multiple(number)
  result = number

  begin
    count = 0
    (1..number).each do |x|
      if result % x == 0
        count += 1
      else
        break
      end
    end
    puts result
    result += 1
  end while count != number

  return result-1
end
=end
#---------------------------------------------------------------

#2------- Could not come up with the logic ---------------------
=begin
def smallest_multiple(number)
  result = (1..number).select { |x| isPrime?(x) }
  product = 1

  result.each do |x|
    product *= x
  end

  return 2520 / product
end

def isPrime?(n)
  (2...n).each do |x|
    return false if n % x == 0
  end

  return true
end
=end
#---------------------------------------------------------------
