=begin
Problem:
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Do without looping.

Solution:
Use Enumerable#reduce
Call it on the number coverted to an array of strings, each string representing a digit.
Pass it a block that performs the summation.
Both the sum and n must be converted to integers.
=end

def sum(number)
  number.to_s.split('').reduce { |sum, n| sum.to_i + n.to_i }
end

if __FILE__ == $0

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

end

