=begin
Tae H0 K1m
  1. Most Frequently Occurring Item in an Array

  example. [1,3,1,3,2,1]
  most_frequent(given_array) => 1, O(n)
=end

def most_frequent(given_array)
  freq = Hash.new

  given_array.each do |item|
    if freq[item].nil?
      freq[item] = 1
    else
      freq[item] += 1
    end
  end

  most_item = nil
  most_count = -1

  freq.each do |key, value|
    if value > most_count
      most_item = key
      most_count = value
    end
  end

  return most_item
end

puts most_frequent([1,3,1,3,2,1])
# => 1

puts most_frequent([])
# => nil

puts most_frequent([0])
# => 0
