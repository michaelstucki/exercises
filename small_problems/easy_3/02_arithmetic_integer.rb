# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those 
# two numbers: addition, subtraction, product, quotient, remainder,
# and power. Do not worry about validating the input.

def prompt(message)
  puts "==> #{message}"
end

def do_math(number1, number2, operation)
  case operation
  when '+'
    number1 + number2
  when '-'
    number1 - number2
  when '*'
    number1 * number2
  when '/'
    number1 / number2
  when '%'
    number1 % number2
  when '**'
    number1.to_f**number2
  end
end

def print_result(number1, number2, operation)
  prompt("#{number1} + #{number2} = #{do_math(number1, number2, operation)}")
end

prompt("Enter the first number:")
number1 = gets.chomp.to_i

prompt("Enter the second number:")
number2 = gets.chomp.to_i

operations = ['+', '-', '*', '/', '%', '**']
operations.each { |op| print_result(number1, number2, op) }
