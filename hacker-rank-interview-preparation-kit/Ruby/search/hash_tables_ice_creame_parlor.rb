=begin
Tae H0 K1m
  30. Hash Tables: Ice Cream Parlor

  Given the value of money and the cost of each flavor for t trips to the Ice
  Cream Parlor, help Sunny and Johnny choose two distinct flavors such that
  they spend their entire pool of money during each visit. ID numbers are the
  1- based index number associated with a cost. For each trip to the parlor,
  print the ID numbers for the two types of ice cream that Sunny and Johnny
  purchase as two space-separated integers on a new line. You must print the
  smaller ID first and the larger ID second.
=end

  # 0. use hash table?
  # 1. make (index - cost) hash
  # 2. iterate costs, find the value which is money - cost

def whatFlavors(cost, money)
  cost_hash = Hash.new

  # 1)
  i = 1
  cost.each do |x|
    cost_hash[i] = x
    i += 1
  end

  # 2)
  i = 1
  cost.each do |x|
    val = money - x
    index = cost_hash.find { |index, cost|
      (cost == val) && (i != index)
    }

    if index.nil?
      i += 1
      next
    else
      print i.to_s + " " + index[0].to_s + "\n"
      return
    end
    i += 1
  end
end

whatFlavors([2,1,3,5,6], 5)
# => 1, 3

whatFlavors([1,4,5,3,2], 4)
# => 1, 4

whatFlavors([2,2,4,3], 4)
# => 1, 2

whatFlavors([1,2,3,5,6], 5)
