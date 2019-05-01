require 'pry'

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(number)
  return '0' if number == 0
  
  value = ''
  while number > 0
    value.prepend(DIGITS[number % 10])
    number /= 10
  end
  
  value
end

if __FILE__ == '09_convert_number_to_string.rb'
  puts integer_to_string(0) == '0'
  puts integer_to_string(4321) == '4321'
  puts integer_to_string(5000) == '5000'
end
