require 'pry'

def reverse!(list)
  return list if list.empty?
  (0..list.size/2).each do |i|
    list[i], list[list.size - 1 - i] = list[list.size - 1 - i], list[i]
  end
  list
end

def reverse!(list)
  i = 0
  until i == list.size/2
    list[i], list[list.size - 1 - i] = list[list.size - 1 - i], list[i]
    i += 1
  end
  list
end  

list = [1,2,3,4]
result = reverse!(list)
p list
p result
puts result == list
puts list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list)
p list

list = ['abc']
p reverse!(list)
p list

list = []
p reverse!(list)
p list
