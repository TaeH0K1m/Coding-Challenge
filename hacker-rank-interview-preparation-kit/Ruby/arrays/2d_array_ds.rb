=begin
Tae H0 K1m
  5. 2D Array - DS (easy)

  Given a 6 x 6 2D Array, arr:

      1 1 1 0 0 0
      0 1 0 0 0 0
      1 1 1 0 0 0
      0 0 0 0 0 0
      0 0 0 0 0 0
      0 0 0 0 0 0

  We define an hourglass in A to be a subset of values with indices falling in
  this pattern in arr's graphical representation:

      a b c
        d
      e f g

  There are 16 hourglasses in arr, and an hourglass sum is the sum of an
  hourglass' values. Calculate the hourglass sum for every hourglass in arr,
  then print the maximum hourglass sum.

  ** -9 <= arr[i][j] <= 9
  ** 0 <= i, j <= 5 ; 6x6 grid
=end

# 1. iterate from [1][1] to [length-2][length-2]
# 2. calculate the hourglass sum
# 3. compare with max, set max if the current value is higher
# 4. return max

def sum_of_hourglass(row, col, arr)
  sum = 0

  for i in (-1..1)
    for j in (-1..1)
      unless (i == 0 && j == -1) || (i == 0 && j == 1)
        sum += arr[row + i][col + j]
      end
    end
  end

  return sum
end

def hourglassSum(arr)
  max = nil
  # 1) iterate from [1][1] to [length-2][length-2]
  for row in 1...(arr.length-1)
    for col in 1...(arr[row].length-1)
      # 2) calculate the hourglass sum
      current_value = sum_of_hourglass(row, col, arr)
      # 3) compare with max, set max if the current value is higher
      if max.nil? then
        max = current_value
      else
        max = [current_value, max].max
      end
    end
  end

  # 4) return max
  return max
end


arr = [ [0,4,3], [-10,1,-10], [8,6,6] ]
puts sum_of_hourglass(1, 1, arr)
# => 28

arr = [
  [1, 1, 1, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [1, 1, 1, 0, 0, 0],
  [0, 0, 2, 4, 4, 0],
  [0, 0, 0, 2, 0, 0],
  [0, 0, 1, 2, 4, 0]
]
puts hourglassSum(arr)
# => 19

arr = [
  [-1, -1, 0, -9, -2, -2],
  [-2, -1, -6, -8, -2, -5],
  [-1, -1, -1, -2, -3, -4],
  [-1, -9, -2, -4, -4, -5],
  [-7,-3, -3, -2, -9, -9],
  [-1, -3, -1, -2, -4, -5]
]
puts hourglassSum(arr)
# => -6
