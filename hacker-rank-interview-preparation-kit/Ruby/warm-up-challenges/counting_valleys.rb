=begin
Tae H0 K1m
  2. Counting Valleys

   Gary's hikes start and end at sea level and each step up or down

   A valley is a sequence of consecutive steps below sea level, starting with a
   step down from sea level and ending with a step up to sea level.

   Given Gary's sequence of up and down steps during his last hike, find and
   print the number of valleys he walked through.
=end

def countingValleys(n, s)
  valleys = 0
  sea_level = 0

  for i in (0...n)
    case s[i]
      when "D"
        sea_level -= 1
      when "U"
        sea_level += 1
        valleys += 1 if sea_level == 0
    end
  end

  return valleys
end

puts countingValleys(8, "DDUUUUDD")
# => 1

puts countingValleys(8, "UDDDUDUU")
# => 1
