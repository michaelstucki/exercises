require 'pry'

def multiply_all_pairs(array1, array2)
  products = []
  array1.each do |number1|
    array2.each do |number2|
      products << number1 * number2
    end
  end
  products.sort
end

def multiply_all_pairs(array1, array2)
  array1.product(array2).map { |array| array[0] * array[1] }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
