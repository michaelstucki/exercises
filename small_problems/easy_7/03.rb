def word_cap(string)
  array = []
  string.split.each { |word| array << word[0].upcase + word[1..-1].downcase }
  array.join(' ')
end

def word_cap(string)
  new_string = ''
  cap = true
  string.length.times do |i|
    char = string[i]
    new_string << (cap ? char.upcase : char.downcase)
    cap = false if cap
    cap = true if char == ' '
  end
  new_string
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
