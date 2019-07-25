=begin
Tae H0 K1m
  17. Sorting: Comparator

  Comparators are used to compare two objects. In this challenge, you'll create
  a comparator and use it to sort an array. The Player class is provided in the
  editor below.

  Given an array of n Player objects, write a comparator that sorts them in
  order of decreasing score. If 2 or more players have the same score, sort
  those players alphabetically ascending by name. To do this, you must create a
  Checker class that implements the Comparator interface, then write an int
  compare(Player a, Player b) method implementing the
  Comparator.compare(T o1, T o2) method. In short, when sorting in ascending
  order, a comparator function returns -1 if a < b, 0 if a = b, and 1 if a > b.
=end

class Player
  attr_reader :name, :score

  def initialize(name, score)
    @name = name
    @score = score
  end

  def to_s
    @name + " " + @score.to_s
  end

  def <=>(other)
    if score == other.score
      if name == other.name
        return 0
      elsif name > other.name
        return 1
      else
        return -1
      end
    elsif score > other.score
      return -1
    else
      return 1
    end
  end
end


data = []
a = Player.new("Smith", 20)
data << a
b = Player.new("Jones", 15)
data << b
c = Player.new("Jones", 20)
data << c

data.sort!

data.each do |x|
  puts x
end


# Python code for HackerRank
=begin
class Player:
    def __init__(self, name, score):
        self.name = name
        self.score = score

    def __repr__(self):
        self.name + " " + self.score

    def comparator(a, b):
        if (a.score == b.score):
            if (a.name == b.name):
                return 0
            elif a.name > b.name:
                return 1
            else:
                return -1
        elif a.score > b.score:
            return -1
        else:
            return 1
=end
