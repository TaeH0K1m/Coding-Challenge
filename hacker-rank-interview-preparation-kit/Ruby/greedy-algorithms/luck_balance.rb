=begin
Tae H0 K1m
  26. Luck Balance

  Lena is preparing for an important coding competition that is preceded by a
  number of sequential preliminary contests. Initially, her luck balance is 0.
  She believes in "saving luck", and wants to check her theory. Each contest is
  described by two integers, L[i] and T[i]:

  If Lena loses no more than k important contests, what is the maximum amount
  of luck she can have after competing in all the preliminary contests? This
  value may be negative.

  It should return an integer that represents the maximum luck balance
  achievable.
=end

# 1. sort by L[i] in decending order
# 2. iterate contests and
#    sum L[i] values if sum of T[i] is not equal to k or T[i] is 0

def sort_by_luck(arr)
  arr.sort! { |a,b|
    b[0] <=> a[0]
  }
  return arr
end

def luckBalance(k, contests)
  # 1) sort by L[i] in decending order
  arr = sort_by_luck(contests)

  # 2) iterate contests
  total_luck = 0
  count = 0

  arr.each do |contest|
    luck = contest[0]
    important = contest[1]

    count += 1 if important == 1

    if important == 0 || count <= k
      total_luck += luck
    elsif count > k
      total_luck -= luck
    end
  end

  return total_luck
end

puts luckBalance(2, [[5,1], [1,1], [4,0]])
# => 10

puts luckBalance(3, [[5,1],[2,1],[1,1],[8,1],[10,0],[5,0]])
# => 29, 10, 8, 5, 5, 2 /
