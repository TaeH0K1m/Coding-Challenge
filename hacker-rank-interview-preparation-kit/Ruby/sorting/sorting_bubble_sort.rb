=begin
Tae H0 K1m
  15. Sorting: Bubble Sort

  Given an array of integers, sort the array in ascending order using the
  Bubble Sort algorithm above. Once sorted, print the three lines.
=end
def swap(a, i, j)
  temp = a[j]
  a[j] = a[i]
  a[i] = temp
end

def bubbleSort(a)
  numSwaps = 0
  for i in 0...(a.length)
    for j in 0...(a.length-1)
      if a[j] > a[j+1]
        swap(a, j, j+1)
        numSwaps += 1
      end
    end
  end
  return numSwaps, a
end

def countSwaps(a)
  numSwaps, a = bubbleSort(a)
  firstElement = a[0]
  lastElement = a[-1]

  puts "Array is sorted in #{numSwaps} swaps."
  puts "First Element: #{firstElement}"
  puts "Last Element: #{lastElement}"
end

countSwaps([6,4,1])

countSwaps([1,2,3])

countSwaps([3,2,1])
