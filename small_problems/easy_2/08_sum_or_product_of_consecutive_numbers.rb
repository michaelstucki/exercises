# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all
# numbers between 1 and the entered integer.

puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product:"
selection = gets.chomp

case selection
when 's'
  operator = :+
  operation = 'sum'
  
when 'p'
  operator = :*
  operation = 'product'
end

result = Array(1..number).reduce(operator)
puts "The #{operation} of the integers between 1 and #{number} is #{result}."
