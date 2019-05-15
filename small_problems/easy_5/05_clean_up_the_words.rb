ALPHA_NUMERIC = 'abcdefghijklmnopqrstuvwxyz'

def is_alpha_numeric?(char)
  ALPHA_NUMERIC.include?(char.downcase)
end

def cleanup(string)
  index = 0

  while index < string.length
   string[index] = ' ' if !is_alpha_numeric?(string[index])
   index += 1
  end

  string.squeeze!(' ')
end

if __FILE__ == '05_clean_up_the_words.rb'
  puts cleanup("---what's my +*& line?") == ' what s my line '
end
