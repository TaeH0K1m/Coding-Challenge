=begin
Tae H0 K1m
  3. Jumping on the Clouds

  Determine the minimum number of jumps it will take Emma to jump from her
  starting postion to the last cloud. It is always possible to win the game.

  An array of clouds numbered 0 if they are safe or 1 if they must be avoided.
  Emma can jump on any cloud having a number that is equal to the number of the
  current cloud plus 1 or 2.

  It should return the minimum number of jumps required, as an integer.

  ** 2 <= n <= 100  ; the total number of clouds
=end

def jumpingOnClouds(c)
  jumps = 0
  index = 0

  until index == c.length - 1
    if !c[index + 2].nil? && c[index + 2] != 1
      index = index + 2
    else
      index = index + 1
    end
    jumps += 1
  end


  return jumps
end

puts jumpingOnClouds([0,0,1,0,0,1,0])
# => 4

puts jumpingOnClouds([0,0,0,0,1,0])
# => 3
