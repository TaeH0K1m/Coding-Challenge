=begin
  9. Special Pythagorean triplet

  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

      a2 + b2 = c2

  For example, 32 + 42 = 9 + 16 = 25 = 52.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.
=end

# brute force
def special_pythagorean_triplet(n)
  for a in 1..n   #(n / 3)
    for b in a..n #(n / 2)
      c = n - b - a
      if (a**2 + b**2 == c**2)
        return a * b * c
      end
    end
  end
end

puts special_pythagorean_triplet(12)
# => 60
puts special_pythagorean_triplet(24)
# => 480
puts special_pythagorean_triplet(1000)
# => ?
