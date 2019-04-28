# Write another method that returns true if the string passed as an argument
# is a palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method
# you wrote in the previous exercise.

require 'pry'

def real_palindrome2?(string)
  string = string.downcase.split('').select { |char| char =~ /[A-Za-z]/ || char =~ /[0-9]/ }
  string.reverse == string
end

def real_palindrome?(string)
  new_string = string.downcase.match(/\w+/).to_s
  new_string.reverse == new_string
end

if __FILE__ == '09_palidromic_strings_2.rb'
  puts real_palindrome?('madam') == true
  puts real_palindrome?('Madam') == true           
end
