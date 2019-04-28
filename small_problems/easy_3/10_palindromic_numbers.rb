# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

require_relative '09_palidromic_strings_2'

def palindromic_number?(number)
  real_palindrome?(number.to_s)
end

if __FILE__ == '10_palindromic_numbers.rb'
  puts palindromic_number?(0345430) == true
end
