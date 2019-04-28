=begin
Problem:
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

Solution:
Split string into an array of its words.
Use Array#reverse to puts the array items in reverse order.
Use Array#join to combine the words to construct the new string
=end

def reverse_sentence(string)
  string.split(' ').reverse.join(' ')
end

if __FILE__ == $0

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

end

