=begin
Tae H0 K1m
  1. Sock Merchant

  Given an array of integers representing the color of each sock, determine how
  many pairs of socks with matching colors there are.

  ** 1 <= n <= 100      ; n number of socks
  ** 1 <= ar[i] <= 100  ; ar[i] number of colors
=end

# 1. find the number of socks for each color (Hash)
# 2. calculate how many pair are there

def sockMerchant(n, ar)
  pairs = 0
  # 1) find the number of socks for each color (Hash)
  colors = Hash.new

  ar.each do |sock|
    if colors[sock].nil?
      colors[sock] = 1
    else
      colors[sock] += 1
    end
  end

  # 2) calculate how many pair are there
  colors.each_value do |color|
    pairs += color / 2
  end

  return pairs
end


puts sockMerchant(7, [1,2,1,2,1,3,2])
# => 2

puts sockMerchant(9, [10,20,10,10,10,30,50,10,20])
# => 3
