=begin
  2. Even Fibonacci numbers

  Each new term in the Fibonacci sequence is generated by adding the previous
  two terms. By starting with 1 and 2, the first 10 terms will be:

    1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

  By considering the terms in the Fibonacci sequence whose values do not
  exceed four million, find the sum of the even-valued terms.
=end

def even_fibonacci_numbers(n)
  sum = 0
  numbers = fibonacci(n)
  numbers.each do |number|
    sum += number if number % 2 == 0
  end

  return sum
end

def fibonacci(n)
  fibonacci = []
  fibonacci << 1
  fibonacci << 2

  loop {
    break if (fibonacci[-1] + fibonacci[-2]) > n

    fibonacci <<  (fibonacci[-1] + fibonacci[-2])
  }
  return fibonacci
end

puts even_fibonacci_numbers(10)        # 10
puts even_fibonacci_numbers(100)       # 44
puts even_fibonacci_numbers(4_000_000)
