=begin
Tae H0 K1m
  7. Find where to expand in Minesweeper

  click(field, num_rows, num_cols, given_i, given_j)

  click(field, 3, 5, 0, 1)

  field = [[0, 0, 0, 0, 0],
           [0, 1, 1, 1, 0],
           [0, 1,-1, 1, 0]]

          [[-2,-2,-2,-2,-2],
           [-2, 1, 1, 1,-2],
           [-2, 1,-1, 1,-2]]

  field = [[-1, 1, 0, 0],
           [ 1, 1, 0, 0],
           [ 0, 0, 1, 1],
           [ 0, 0, 1,-1]]
=end

def open(field, num_rows, num_cols, given_i, given_j)
  if given_i >= 0 && given_i < num_rows && given_j >=0 && given_j < num_cols
    if field[given_i][given_j] == 0
      field[given_i][given_j] = -2

      for i in -1..1
        for j in -1..1
          field = open(field, num_rows, num_cols, given_i + i, given_j + j)
        end
      end
    end
  end

  return field
end

def click(field, num_rows, num_cols, given_i, given_j)
  return field if field[given_i][given_j] != 0

  field = open(field, num_rows, num_cols, given_i, given_j)
  return field
end

field = [[0, 0, 0, 0, 0],
         [0, 1, 1, 1, 0],
         [0, 1,-1, 1, 0]]

print click(field, 3, 5, 0, 1)
puts

field = [[-1, 1, 0, 0],
         [ 1, 1, 0, 0],
         [ 0, 0, 1, 1],
         [ 0, 0, 1,-1]]

print click(field, 4, 4, 0, 2)
puts
