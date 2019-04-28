# What will the following code print, and why?

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# create an array object of these strings
# array1 holds a reference to this array
# each index in the array holds a reference to one of these string objects

array2 = []                                                  
# create an empty array, array2 holds a reference to this array

array1.each { |value| array2 << value }                      
# invoke the each iterator on array1
# add each item in array1 to array2
# since each item in array1 is a reference to one of the string objects, each index in array2 holds the same references

array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# invoke the each iterator on array1, value holds a reference to one of the string objects on each interation
# invoke the mutating version of upcase on the string object referenced by value if the value of that string object 
# begins with either 'C' or 'S'
# as a result, each of the string objects (that both array1 and array2 hold references to) is changed (if they start with 'C' or 'S')

puts array2
# print the evaluation of each string referenced by array2 to the console
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# Chico
# Groucho
# Zeppo
