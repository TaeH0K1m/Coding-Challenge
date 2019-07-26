=begin
Tae H0 K1m
  18. Fraudulent Activity Notifications

=end

# ** always odd number
def activityNotifications(expenditure, d)
  count = 0
  for i in 0...d
    unless expenditure[d+i].nil?
      #print " - " + expenditure[d+i].to_s + ", " + expenditure[i...(d+i)].sort.to_s + "\n"
      if d % 2 == 0
        median = ((expenditure[i...(d+i)].sort)[d/2] + (expenditure[i...(d+i)].sort)[d/2 - 1]) / 2.0
      else
        median = (expenditure[i...(d+i)].sort)[d/2]
      end

      if expenditure[d+i] >= 2 * median
        count += 1
      end
    end
  end
  return count
end

#puts activityNotifications([2,3,4,2,3,6,8,4,5], 5)
# => 2

puts activityNotifications([1,2,3,4,4], 4)
# => 0
