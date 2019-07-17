=begin
  4. Largest palindrome product

  A palindromic number reads the same both ways. The largest palindrome made
  from the product of two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
=end

def largest_palindrome_product(digit)
  max = 0
  num = 10 ** digit - 1
  for i in 0...num do
    first = num - i
    break if first < 10 * (digit-1)
    for j in 0...first do
      second = first - j - 1
      break if second < 10 * (digit-1)
      if isPalindrome?(first * second)
        if max < first * second
          max = first * second
          two_nums = []
          two_nums << first
          two_nums << second
        end
      end
    end
  end

  return "Max: " + max.to_s + ", Numbers: " + two_nums.to_s
end

def isPalindrome?(number)
  start = 0
  last = -1

  until start == number.to_s.length/2
    return false if number.to_s[start] != number.to_s[last]
    start += 1
    last -= 1
  end

  return true
end


puts largest_palindrome_product(2) # 9009
puts largest_palindrome_product(3)
#puts isPalindrome?(9008) #false
#puts isPalindrome?(9009) #true
