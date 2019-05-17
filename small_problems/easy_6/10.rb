require 'pry'

def triangle(number)
  number.times { |n| puts "#{'*' * (n + 1)}".rjust(number) }
end

triangle(5)
triangle(9)
