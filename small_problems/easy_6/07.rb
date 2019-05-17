require 'pry'

def halvsies(array)
  new_array = [[], []]
  array.each_with_index do |element, index|
    if index <= (array.size - 1) / 2
      new_array[0] << element
    else
      new_array[1] << element
    end
  end
  new_array
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]
