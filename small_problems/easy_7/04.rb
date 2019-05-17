def swapcase(string)
  new_string = ''
  characters = string.chars
  characters.each do |char|
    if char =~ /[a-z]/ 
      new_string << char.upcase
    else
      new_string << char.downcase
    end
  end
  new_string  
end

def swapcase(string)
  string.chars.map { |char| char =~ /[a-z]/ ? char.upcase : char.downcase }.join
end

puts swapcase('CamelCase') #== 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'
