require 'pry'

def merge(array1, array2)
  (array1 + array2).uniq!
end

def merge(array1, array2)
  array_combined = array1 + array2
  new_array = []
  array_combined.each do |element|
    new_array << element if !new_array.include?(element)
  end
  new_array
end

p merge([1, 3, 5], [3, 6, 9]) #=> [1, 3, 5, 6, 9]
