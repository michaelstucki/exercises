# Write a method that returns an Array that contains every other
# element of an Array that is passed in as an argument.
# The values in the returned list should be those values that are
# in the 1st, 3rd, 5th, and so on elements of the argument Array.:1

def oddities1(array)
  array.select.with_index { |item, index| item if index.even? }
end

def oddities(array)
  odd_elements = []
  array.size.times { |index| odd_elements << array[index] if index.even? }
  odd_elements
end

if __FILE__ == '07_odd_lists.rb'
  puts oddities([2, 3, 4, 5, 6])
end
