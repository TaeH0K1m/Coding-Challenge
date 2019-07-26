=begin
Tae H0 K1m
  3. Is One Array a Rotation of Another?

  example.
  A = [1,2,3,4,5,6,7]
  B = [4,5,6,7,1,2,3]
  is_rotation(A, B) => true, O(n)

  ** no duplicates
=end

# 1. use two pointers
# 2. find the index where both array has same the element
# 3. iterate arrays until two elements are different
# 4. if different, return false, othwerwise return true

def is_rotation(a, b)
  # 1) use two pointers
  ptr_a = 0
  ptr_b = 0

  # 2) find the index where both array has same the element
  while ptr_b < b.length
    break if a[ptr_a] == b[ptr_b]
    ptr_b += 1
  end

  # 3) iterate arrays until two elements are different
  a.each do |num|
    # 4) if different, return false
    return false if num != b[ptr_b]
    ptr_b = (ptr_b + 1) % b.length
  end

  # othwerwise return true
  return true
end

a = [1,2,3,4,5,6,7]
b = [4,5,6,7,1,2,3]
puts is_rotation(a, b)
# => true

a = [1,2,3,4,5,6,7]
b = [4,5,6,7,8,2,3]
puts is_rotation(a, b)
# => false

a = [1,2,3,4,5,6,7]
b = [4,5,7,6,1,2,3]
puts is_rotation(a, b)
# => false
