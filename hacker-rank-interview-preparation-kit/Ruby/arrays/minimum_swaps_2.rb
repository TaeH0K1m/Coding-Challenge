=begin
Tae H0 K1m
  8. Minimu Swaps 2 (medium)

  You are given an unordered array consisting of consecutive integers; [1, 2, 3,
  ..., n] without any duplicates. You are allowed to swap any two elements.
  You need to find the minimum number of swaps required to sort the array in
  ascending order.

   It must return an integer representing the minimum number of swaps to sort
   the array.
=end

# 1. iterate from 1 to n
# 2. find i's index and swap with correct value
# 3. count!

def minimumSwaps(arr)
  swaps = 0
  i = 1
  arr.each do |element|
    j = arr.index(i) # i's index
    unless arr[j] == element
      arr[i-1] = arr[j]
      arr[j] = element
      swaps += 1
    end
    i += 1
  end
  return swaps
end


puts minimumSwaps([4,3,1,2])
# => 3

puts minimumSwaps([7,1,3,2,4,5,6])
# => 5

puts minimumSwaps([2,3,4,1,5])
# => 3

puts minimumSwaps([1,3,5,2,4,6,7])
# => 3
