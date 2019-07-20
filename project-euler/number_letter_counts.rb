=begin
Tae H0 K1m
  17. Number letter counts

  If the numbers 1 to 5 are written out in words:

  one, two, three, four, five,
  then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

  If all the numbers from 1 to 1000 (one thousand) inclusive were written out in
  words, how many letters would be used?

  NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
  forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
  letters. The use of "and" when writing out numbers is in compliance with
  British usage.
=end

=begin
100 hundred
and ?
1000 thousand
and ?
million?
billion?
=end

# 1. Use Hash to pair number and letter counts as key-value
# 2. iterate from 1 to n
# 3. add each letter numbers to total
# 4. return total

NUMBER_LETTER = {
  1 => 3,   #one
  2 => 3,   #two
  3 => 5,   #three
  4 => 4,   #four
  5 => 4,   #five
  6 => 3,   #six
  7 => 5,   #seven
  8 => 5,   #eight
  9 => 4,   #nine
  10 => 3,  #ten
  11 => 6,  #eleven
  12 => 6,  #twelve
  13 => 8,  #thirteen
  14 => 8,  #fourteen
  15 => 7,  #fifteen
  16 => 7,  #sixteen
  17 => 9,  #seventeen
  18 => 8,  #eighteen
  19 => 8,  #nineteen
  20 => 6,  #twenty
  30 => 6,  #thirty
  40 => 6,  #forty
  50 => 5,  #fifty
  60 => 5,  #sixty
  70 => 7,  #seventy
  80 => 6,  #eighty
  90 => 6,  #ninety
  100 => 7, #hundred # and
  1000 => 8 #thousand
}

def number_letter_counts(n)
  total = 0

  (1..n).each do |number|

    temp = convert_num_to_letters(number)
    total += temp

    #print "Number: " + number.to_s + ", Letters: " + temp.to_s + "\n"
  end

  return total
end

# 1. if number is less then 20, just access hash
# 2. otherwise (n > 20), get the second digit

# 1. 1-10
# 2. 11-20
# 3. 21-99
# 4. 100 - 999 (without 'and')
# 5. 100 - 999 with 'and'
# 6. 1000

def convert_num_to_letters(n)
  sum = 0
  power = number_of_digits(n) - 1

  return NUMBER_LETTER[n] if n <= 20

  until power == -1
    quotient = n / (10 ** power)
    remainder = n % (10 ** power)

    if power == 3
      sum += NUMBER_LETTER[quotient] + NUMBER_LETTER[1000] + 3 # 'and'
      #print " ##: " + sum.to_s + ", "
      if remainder == 0
        sum -= 3
        break
      end
    elsif power == 2
      sum += NUMBER_LETTER[quotient] + NUMBER_LETTER[100] + 3 # 'and'
      #print " ##: " + sum.to_s + ", "
      if remainder == 0
        sum -= 3
        break
      end
    else
      sum += NUMBER_LETTER[quotient * (10 ** power)] unless quotient == 0
      #print " ##: " + sum.to_s + ", "
    end

    n = remainder
    power -= 1
  end

  #puts " "
  return sum
end

def number_of_digits(n)
  num = 0
  until n / (10 ** num) == 0
    num += 1
  end
  return num
end

#puts number_of_digits(413)
# => 3

#puts number_of_digits(14)
# => 2

#puts number_of_digits(7)
# => 1

#puts convert_num_to_letters(14) # fourteen
# => 8

#puts convert_num_to_letters(21) # twenty one
# => 9

#puts convert_num_to_letters(30) # thirty
# => 6

#puts convert_num_to_letters(93) # ninety three
# => 11

#puts convert_num_to_letters(413) # four hundred thirteen
# => 19

#puts convert_num_to_letters(472) # four hundred and seventy two
# => 24

#puts convert_num_to_letters(1000) # one thousand
# => 11

#puts number_letter_counts(5)
# => 19

puts number_letter_counts(1000)
# => ?
