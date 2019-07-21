=begin
Tae H0 K1m
  7. New Year Chaos

  It's New Year's Day and everyone's in line for the Wonderland rollercoaster
  ride! There are a number of people queued up, and each person wears a sticker
  indicating their initial position in the queue. Initial positions increment
  by 1 from 1 at the front of the line to n at the back.

  Any person in the queue can bribe the person directly in front of them to swap
  positions. If two people swap positions, they still wear the same sticker
  denoting their original places in line. One person can bribe at most two
  others.

  It must print an integer representing the minimum number of bribes necessary,
  or 'Too chaotic' if the line configuration is not possible.
=end

# 1. sort the que
# 2. use Hash to count how many times each person swaps
# 3. iterate, if there is someone who swaps more than two times,
#    print 'Too chaotic'
# 4. otherwise sum up swap

def sort(q)
  person = 0
  for i in 0...(q.length - 1)
    temp = q[i]
    if q[i] > q[i+1]
      q[i] = q[i+1]
      q[i+1] = temp
      person = temp
      break
    end
  end

  return person, q
end

def minimumBribes(q)
  num_of_swaps = Hash.new(0)
  total = 0

  arr = []
  (1..(q.length)).each do |element|
    arr << element
  end

  # 1) sort the que
  i = 0
  until q == arr
    if i > arr.length
      puts "Too chaotic"
      return 0
    end
    person, q = sort(q)
    # 2) use Hash to count how many times each person swaps
    num_of_swaps[person] += 1

    i += 1
  end

  # 3) iterate, if there is someone who swaps more than two times,
  #    print 'Too chaotic'
  num_of_swaps.each_value do |swap|
    if swap > 2
      puts "Too chaotic"
      return
    end
    # 4) otherwise sum up swap
    total += swap
  end

  puts total
end

minimumBribes([2,1,5,3,4])
# => 3

minimumBribes([2,5,1,3,4])
# => 'Too chaotic'
