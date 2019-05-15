require 'pry'

def spin_me(str)
  puts str.object_id
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

puts spin_me("hello world").object_id # "olleh dlrow"
