def multiply_list(array1, array2)
  new_array = []
  index = 0
  until index == array1.size
    new_array << array1[index] * array2[index]
    index += 1
  end
  new_array
end

def multiply_list(array1, array2)
  array1.zip(array2).map { |array| array[0] * array[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
