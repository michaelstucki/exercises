=begin
Problem:
Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

Solution:
Use String#split to construct an array of the sentence's words.
Interate the array and reverse the letters in each word whose length exceeds 5.
Use String#join to construct the new string.
=end

def reverse_words(string)
  string.split(' ').map { |word| word.length >= 5 ? word.reverse : word }.join(' ')
end

if __FILE__ == $0

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

end
