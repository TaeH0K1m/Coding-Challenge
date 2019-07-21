=begin
Tae H0 K1m
  18. Maximum path sum I

  By starting at the top of the triangle below and moving to adjacent numbers on
  the row below, the maximum total from top to bottom is 23.

      3
      7 4
      2 4 6
      8 5 9 3

  That is, 3 + 7 + 4 + 9 = 23.

  Find the maximum total from top to bottom of the triangle below:

      75
      95 64
      17 47 82
      18 35 87 10
      20 04 82 47 65
      19 01 23 75 03 34
      88 02 77 73 07 63 67
      99 65 04 28 06 16 70 92
      41 41 26 56 83 40 80 70 33
      41 48 72 33 47 32 37 16 94 29
      53 71 44 65 25 43 91 52 97 51 14
      70 11 33 28 77 73 17 78 39 68 17 57
      91 71 52 38 17 14 91 43 58 50 27 29 48
      63 66 04 68 89 53 67 30 73 16 69 87 40 31
      04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

NOTE: As there are only 16384 routes, it is possible to solve this problem by
trying every route. However, Problem 67, is the same challenge with a triangle
containing one-hundred rows; it cannot be solved by brute force, and requires a
clever method! ;o)
=end

# read and build triangle
TRIANGLE = File.read("maximum_path_sum_i.txt")
triangle = []
TRIANGLE.split("\n").each do |row|
  triangle << row.split(" ")
end

## Wrong approach
# 1. iterate through triangle
# 2. check triangle[col], triangle[col+1]
# 3. find the bigger value in the row & save the col number(index)
# 4. add the value to sum

#print triangle
#puts " "
=begin
def maximum_path_sum(triangle)
  sum = 0
  col = 0

  for row in (0...triangle.length)
    if triangle[row][col + 1].nil?
      sum += triangle[row][col].to_i
    else
      if triangle[row][col].to_i > triangle[row][col + 1].to_i
        sum += triangle[row][col].to_i
      else
        sum += triangle[row][col + 1].to_i
        col = col + 1
      end
    end
  end

  return sum
end
=end

def maximum_path_sum(triangle)
end

puts maximum_path_sum(triangle)
# => ?
