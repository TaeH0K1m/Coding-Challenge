=begin
Tae H0 K1m
  10. Hash Tables: Ransom Note

  He found a magazine and wants to know if he can cut out whole words from it
  and use them to create an untraceable replica of his ransom note. The words
  in his note are case-sensitive and he must use only whole words available in
  the magazine. He cannot use substrings or concatenation to create the words
  he needs.

  Given the words in the magazine and the words in the ransom note, print Yes
  if he can replicate his ransom note exactly using whole words from the
  magazine; otherwise, print No.
=end

# 1. store every word in magazine to hash
# 2. iterate through note if word does not exist in hash, return false
# 3. otherwise return true

def checkMagazine(magazine, note)
  # 1) store every word in magazine to hash
  dict = Hash.new()
  magazine.each do |word|
    if dict[word].nil?
      dict[word] = 1
    else
      dict[word] += 1
    end
  end

  # 2) iterate through note if word does not exist in hash, return false
  note.each do |word|
    if dict[word].nil? || dict[word] == 0
      return "No"
    else
      dict[word] -= 1
    end
  end

  # 3) otherwise return true
  return "Yes"
end

magazine = ["give", "me", "one", "grand", "today", "night"]
note = ["give", "one", "grand", "today"]
puts checkMagazine(magazine, note)
# => yes

magazine = ["two", "times", "three", "is", "not", "four"]
note = ["two", "times", "two", "is", "four"]
puts checkMagazine(magazine, note)
# => no
