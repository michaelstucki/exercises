=begin
Problem:
Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

Solution:
Iterate over the array of integers to sum them.
Divide the sum by the size of the array.
=end

def average(integers)
  sum = 0
  integers.each { |integer| sum += integer }
  sum / integers.size
end

if __FILE__ == $0

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

end
