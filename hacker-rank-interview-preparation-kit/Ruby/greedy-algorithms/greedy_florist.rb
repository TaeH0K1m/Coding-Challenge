=begin
Tae H0 K1m
  27. Greedy Florist

  A group of friends want to buy a bouquet of flowers. The florist wants to
  maximize his number of new customers and the money he makes. To do this, he
  decides he'll multiply the price of each flower by the number of that
  customer's previously purchased flowers plus 1.

  Given the size of the group of friends, the number of flowers they want to
  purchase and the original prices of the flowers, determine the minimum cost
  to purchase all of the flowers.
=end

# 0. need to sort!
# 1. iterate price list
# 2. multiply by index / k to price

def getMinimumCost(k, c)
  # 0) sort asceding
  c.sort! { |a,b|
    b <=> a
  }

  sum = 0
  # 1) iterate price list
  for i in 0...(c.length)
    index = (c.length - 1) - i
    # 2) multiply by (index / k to price )+ 1 to original price
    sum += c[index] * ((i / k) + 1)
  end
  return sum
end

puts getMinimumCost(3, [2,5,6])
# => 13

puts getMinimumCost(2, [2,5,6])
# => 15

puts getMinimumCost(3, [1,3,5,7,9])
# => 29
