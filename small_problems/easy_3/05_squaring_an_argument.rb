# Using the multiply method from "Multiplying Two Numbers"
# problem, write a method that computes the square of
# its argument.

def multiply(x, y)
  x * y
end

def power(x, y)
  result = 1
  y.times { |_| result = multiply(result, x) }  
  result
end

puts power(2, 4)
puts power(0, 0)
puts power(0, 1)

