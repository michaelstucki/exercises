def short_long_short(str1, str2)
  str1.length >= str2.length ? str2 + str1 + str2 : str1 + str2 + str1
end

if __FILE__ == '01_short_long_short.rb'
  puts short_long_short('abc', 'defgh') == "abcdefghabc"
  puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
  puts short_long_short('', 'xyz') == "xyz"
end
