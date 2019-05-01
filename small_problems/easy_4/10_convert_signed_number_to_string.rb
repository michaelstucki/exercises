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

def signed_integer_to_string(number)
  if number == 0
    sign = ''
  elsif number > 0
    sign = '+'
  else
    sign = '-'
  end 
  integer_to_string(number.abs).prepend(sign)
end

if __FILE__ == '10_convert_signed_number_to_string.rb'
  puts signed_integer_to_string(4321) == '+4321'
  puts signed_integer_to_string(-123) == '-123'
  puts signed_integer_to_string(0) == '0'
end
