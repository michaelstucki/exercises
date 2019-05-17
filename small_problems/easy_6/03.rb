require 'pry'

def find_fibonacci_index_by_length(number)
  fib_i, fib_j = 1, 1
  idx_i, idx_j = 1, 2
  until fib_j.to_s.length >= number
    tmp = fib_j
    fib_j += fib_i
    fib_i = tmp
    idx_i += 1
    idx_j += 1
  end
  idx_j
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
