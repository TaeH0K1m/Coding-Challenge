=begin
  14. Longest Collatz sequence

  The following iterative sequence is defined for the set of positive integers:

      n → n/2 (n is even)
      n → 3n + 1 (n is odd)

  Using the rule above and starting with 13, we generate the following sequence:

      13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

  It can be seen that this sequence (starting at 13 and finishing at 1) contains
  10 terms. Although it has not been proved yet (Collatz Problem), it is thought
  that all starting numbers finish at 1.

  Which starting number, under one million, produces the longest chain?

  NOTE: Once the chain starts the terms are allowed to go above one million.
=end

def longest_collatz_sequence(limit)
  max = 0
  max_i = 0

  for number in (1..limit)
    chain_len = collatz_sequence(number).length

    if chain_len > max
      max = chain_len
      max_i = number
    end
  end

  return max_i
end

def collatz_sequence(start_num)
  sequence = []

  collatz_sequence_next(start_num, sequence)
end

def collatz_sequence_next(n, sequence)
  if n == 1
    sequence << 1
    return sequence
  end

  sequence << n

  if n % 2 == 0
    collatz_sequence_next(n / 2, sequence)
  else
    collatz_sequence_next(3 * n + 1, sequence)
  end
end

#print collatz_sequence(13).to_s + ", " + collatz_sequence(13).length.to_s + "\n"
# => 10, (13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1)

puts longest_collatz_sequence(1_000_000)
# => ?

#print collatz_sequence(837799).to_s + ", " + collatz_sequence(837799).length.to_s + "\n"
