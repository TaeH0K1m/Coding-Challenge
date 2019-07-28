=begin
Tae H0 K1m
  28. Max Min

  You will be given a list of integers, stt, and a single integer k. You must
  create an array of length k from elements of arr such that its unfairness is
  minimized.

  It must return an integer that denotes the minimum possible value of
  unfairness.
              max(subarr) - min(subarr)
=end

  # 1. sort the array in asceding order
  # 2. iterate array from 0 to array length - k
  # 3. calculate min

def maxMin(k, arr)
  # 1) sort the array in asceding order
  arr.sort!

  min = nil
  # 2) iterate array from 0 to array length - k
  for i in 0..(arr.length - k)
    if min.nil? || min > arr[k + i - 1] - arr[i]
      # 3) calculate min
      min = arr[k + i - 1] - arr[i]
    end
  end

  return min
end

puts maxMin(2, [1,4,7,2])
# => 1

puts maxMin(3, [10,100,300,200,1000,20,30])
# => 20

puts maxMin(4, [1,2,3,4,10,20,30,40,100,200])
# => 3
