=begin
Tae H0 K1m
  2. Common Elements in Two Sorted Arrays

  example.
  A = [1,3,4,6,7,9]
  B = [1,2,4,5,9,10]
  common_elements(A, B) => [1,4,9], O(max(n,m))
=end

# 1. use two pointer for each array
# 2. loop through one array
# 3. if two pointer point same number, save the number and increment pointers
# 4. othwerwise, increment the pointer which points the lower number

def common_elements(a, b)
  # 1) use two pointer for each array
  ptr_a = 0
  ptr_b = 0
  common = []

  # 2) loop through one array
  while ptr_a < a.length && ptr_b < b.length
    # 3) if two pointer point same number,
    #    save the number and increment pointers
    if a[ptr_a] == b[ptr_b]
      common << a[ptr_a]
      ptr_a += 1
      ptr_b += 1
    # 4) othwerwise, increment the pointer which points the lower number
    elsif a[ptr_a] > b[ptr_b]
      ptr_b += 1
    else
      ptr_a += 1
    end
  end

  return common
end

a = [1,3,4,6,7,9]
b = [1,2,4,5,9,10]
print common_elements(a, b)
puts ""
# => [1,4,9]

a = [0, 1, 2, 3, 4, 5]
b = [5, 7, 8, 9, 10, 11]
print common_elements(a, b)
puts ""
# => [5]
