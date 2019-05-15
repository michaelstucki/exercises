def crunch(string)
  string_arr = string.chars
  string_new = ''
  until string_arr.empty?
    char = string_arr.shift
    string_new += char if char != string_new[-1]
  end
  string_new
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
