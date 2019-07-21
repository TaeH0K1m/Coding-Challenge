=begin
Tae H0 K1m

  19. Counting Sundays

  You are given the following information, but you may prefer to do some
  research for yourself.

      - 1 Jan 1900 was a Monday.
      - Thirty days has September,
        April, June and November.
        All the rest have thirty-one,
        Saving February alone,
        Which has twenty-eight, rain or shine.
        And on leap years, twenty-nine.
      - A leap year occurs on any year evenly divisible by 4, but not on a century
        unless it is divisible by 400.

  How many Sundays fell on the first of the month during the twentieth century
  (1 Jan 1901 to 31 Dec 2000)?
=end
require 'date'

def counting_sundays()
  count = 0
  years = 1901..2000
  months = 1..12

  years.each do |year|
    months.each do |month|
      d = Date.new(year,month,1)
      count += 1 if d.sunday?
    end
  end

  return count
end

puts counting_sundays
