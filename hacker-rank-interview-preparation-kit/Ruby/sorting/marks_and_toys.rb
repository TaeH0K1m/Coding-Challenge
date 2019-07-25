=begin
Tae H0 K1m
  16. Marks and Toys

  Mark has only a certain amount to spend, and he wants to maximize the number
  of toys he buys with this money.

  It should return an integer representing the maximum number of toys Mark can
  purchase.
=end

def maximumToys(prices, k)
  numToys = 0
  sum = 0
  prices.sort!
  for i in 0...(prices.length)
    if sum + prices[i] < k
      sum += prices[i]
      numToys += 1
    else
      break
    end
  end

  return numToys
end

puts maximumToys([4,3,2,1], 7)
# => 3

puts maximumToys([1,12,5,111,200,1000,10], 50)
# => 4, 1, 5, 10, 12
