=begin
Tae H0 K1m
  6. Assign Numbers in Minesweeper

  mine_sweeper([[0,0],[0,1]], 3, 4)

  [[-1,-1, 1, 0],
   [ 2, 2, 1, 0],
   [ 0, 0, 0, 0]]
=end

# 1. build the array
# 2. assign bumbs
# 3. assign numbers in minesweeper

def mine_sweeper(bombs, num_rows, num_cols)
  rows = []

  # 1) build the array
  for i in 0...num_rows
    cols = []
    for j in 0...num_cols
      cols << 0
    end
    rows << cols
  end

  # 2) assign bumbs
  for bomb in bombs
    i = bomb[0]
    j = bomb[1]
    rows[i][j] = -1
  end

  # 3) assign numbers in minesweeper
    for i in 0...num_rows
      for j in 0...num_cols
        if rows[i][j] == -1
          rows = assign_numbers(i, j, rows)
        end
      end
    end

  return rows
end

def assign_numbers(row, col, arr)
  i = row
  j = col

  arr[i-1][j-1] += 1 if (i - 1) >= 0 && (j - 1) >= 0 && arr[i-1][j-1] != -1
  arr[i-1][j] += 1 if (i - 1) >= 0 && arr[i-1][j] != -1
  arr[i-1][j+1] += 1 if (i - 1) >= 0 && (j + 1) < arr[0].length && arr[i-1][j+1] != -1
  arr[i][j+1] += 1 if (j + 1) < arr[0].length && arr[i][j+1] != -1
  arr[i+1][j+1] += 1 if (i + 1) < arr.length && (j + 1) < arr[0].length && arr[i+1][j+1] != -1
  arr[i+1][j] += 1 if (i - 1) < arr.length && arr[i+1][j] != -1
  arr[i+1][j-1] += 1 if (i + 1) < arr.length && (j - 1) >= 0 && arr[i+1][j-1] != -1
  arr[i][j-1] += 1 if (j - 1) >= 0 && arr[i][j-1] != -1

  return arr
end

#print assign_numbers(1,1,[[0,0,0],[0,0,0],[0,0,0]])

print mine_sweeper([[0,0],[0,1]], 3, 4)
p ""
