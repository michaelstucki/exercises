require 'pry'

def print_in_box(string)
  puts "+#{'-' * (2 + string.length)}+"
  puts "|#{' ' * (2 + string.length)}|"
  puts "| #{string} |"
  puts "|#{' ' * (2 + string.length)}|"
  puts "+#{'-' * (2 + string.length)}+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
