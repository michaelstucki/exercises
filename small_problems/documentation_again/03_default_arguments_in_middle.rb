def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) # => [4, 5, 3, 6]
# Assigment of these arguments to the method's parameter is as:
# 4 assigns to a
# 6 assigns to d
# This leaves only the arguments with default values.
# 5 assigns to b.
# c uses its default. 

