# Write a method that returns true if the string passed as an argument
# is a palindrome, false otherwise. A palindrome reads the same forwardi
# and backward. For this exercise, case matters as does punctuation and spaces.

require 'pry'

def palindrome?(data)
  data.reverse == data
end

def palindrome0?(string)
  array = string.split('')
  array.reverse == array
end

if __FILE__ == '08_palindromic_strings_1.rb'
  puts palindrome?('madam') == true
end
