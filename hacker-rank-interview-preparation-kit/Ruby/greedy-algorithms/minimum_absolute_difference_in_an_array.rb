=begin
Tae H0 K1m
  25. Minimum Absolute Difference in an Array

  Given an array of integers, find and print the minimum absolute difference
  between any two elements in the array.
=end

# 1. sort the array
# 2. find the absolute difference from adjacent two elements
# 3. compare with min

def minimumAbsoluteDifference(arr)
  # 1) sort the array
  arr.sort!

  # 2) find the absolute difference from adjacent two elements
  min = nil
  for i in 0...(arr.length - 1)
    value = (arr[i] - arr[i+1]).abs
    min = value if min.nil? || min > value # 3) compare with min
  end

  return min
end

 puts minimumAbsoluteDifference([3,-7,0])
 # => 3

 puts minimumAbsoluteDifference([-59,-36,-13,1,-53,-92,-2,-96,-54,75])
 # => 1

 puts minimumAbsoluteDifference([1,-3,71,68,17])
 # => 3

# brute force O(n2)
=begin
def minimumAbsoluteDifference(arr)
  min = nil

  for i in 0...(arr.length)
    for j in 0...(arr.length)
      if i != j
        if min.nil? || min > (arr[i] - arr[j]).abs
          min = (arr[i] - arr[j]).abs
        end
      end
    end
  end

  return min
end
=end
