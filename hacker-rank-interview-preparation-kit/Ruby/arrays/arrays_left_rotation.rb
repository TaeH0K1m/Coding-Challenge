=begin
Tae H0 K1m
  6. Arrays: Left Rotation

  A left rotation operation on an array shifts each of the array's elements 1
  unit to the left.

  Given an array a of n integers and a number, d, perform d left rotations on
  the array. Return the updated array to be printed as a single line of
  space-separated integers.
=end

# 1. iterate again from (index + d) % a
# 2. print out

def rotLeft(a, d)
  arr = []
  # 1)iterate again from (index + d) % a
  for index in 0...(a.length)
    # 2) print out
    arr << a[(index + d) % a.length]
  end
  return arr
end

print rotLeft([1,2,3,4,5], 4)
# => 5 1 2 3 4
