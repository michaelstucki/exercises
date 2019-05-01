require 'pry'

def string_to_integer(string)
  chars = string.chars.reverse
  digits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  number = 0
  chars.each_with_index do |val, idx|
    number += digits.find_index(val) * 10**idx
  end
  number
end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,
  'f' => 15
}

def hexadecimal_to_integer(string)
  digits = string.downcase.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end

if __FILE__ == '07_convert_string_to_number.rb'
  puts string_to_integer('4321') == 4321
  puts string_to_integer('570') == 570
  puts hexadecimal_to_integer('4D9f') == 19871
end
