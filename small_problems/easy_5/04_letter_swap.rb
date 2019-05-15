require 'pry'

def swap(string)
  new_string = []
  string.split(' ').each do |word|
    tmp = word[0]
    word[0] = word[-1]
    word[-1] = tmp 
    new_string << word
  end
  new_string.join(' ')
end

if __FILE__ == '04_letter_swap.rb'
  puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
  puts swap('Abcde') == 'ebcdA'
  puts swap('a') == 'a'
end
