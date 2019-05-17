require 'pry'

def interleave(array_1, array_2)
  array_new = []
  (array_1.size).times { |i| array_new << array_1[i] << array_2[i] }
  array_new
end

def interleave(array_1, array_2)
  array_1.zip(array_2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
