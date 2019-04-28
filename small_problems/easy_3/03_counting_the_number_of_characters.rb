# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters.
# Spaces should not be counted as a character.

puts "Please write a word or multiple words:"
text = gets.chomp
number_of_characters = text.gsub(' ','').length
puts %Q!There are #{number_of_characters} characters in "#{text}".!
