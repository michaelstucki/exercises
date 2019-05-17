require 'pry'

def include?(array, value)
  array.sort!
  low = 0
  high = array.size - 1
  until low > high
    middle = (low + high) / 2
    if array[middle] == value
      return true
    elsif value < array[middle]
      high = middle - 1
    else
      low = middle + 1
    end
  end
  false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
