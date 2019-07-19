=begin
Tae H0 K1m
  15. Lattice paths

  Starting in the top left corner of a 2×2 grid, and only being able to move to
  the right and down, there are exactly 6 routes to the bottom right corner.

   - -    -     -     |       |      |
      |    |_    |     - -     -     |
      |      |   |_       |     |_    - -

  How many such routes are there through a 20×20 grid?
=end

# 1. set up 2-d array with all 1s
# 2. iterate row -> col and calculate the right number
#   - if row-1, col-1 exists, the sum is the value for grid[row, col]
# 3. return last element in the array

def lattice_paths(n_grid)
  # 1) creat a grid (n+1) x (n+1) with all initialize with 1
  grid = Array.new(n_grid + 1) { Array.new(n_grid + 1, 1) }

  # 2) iterate through grid
  for row in (0..n_grid)
    for col in (0..n_grid)
      if row - 1 >= 0 && col - 1 >= 0
        # if row-1, col-1 exists, the sum is the value for gird[row, col]
        grid[row][col] = grid[row][col-1] + grid[row-1][col]
      end
    end
  end

  #3) return last element in the array
  return grid[n_grid][n_grid]
end

puts lattice_paths(2)
# => 6

puts lattice_paths(20)
# => ? 137846528820
