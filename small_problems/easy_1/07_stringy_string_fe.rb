=begin
Problem:
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

Solution:
Use String#<< operator to append alternating 1s and 0s.
Use String#end_with? to check the character at the end of the expanding string.
=end

def stringy(number)
  string = ''
  number.times { string.length == 0 || string.end_with?('0') ? string << '1' : string << '0' }
  string
end

if __FILE__ == $0

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

end
