# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not 
# the 6th number appears amongst the first 5 numbers.

FIRST_ORDINAL = 1
LAST_ORDINAL = 5

def prompt(message)
 puts "==> #{message}:"
end

ordinals = []
Array(FIRST_ORDINAL..LAST_ORDINAL).each do |n|
  case n
  when 1
    ordinals << '1st'
  when 2
    ordinals << '2nd'
  when 3
    ordinals << n.to_s + 'rd'
  else 
    ordinals << n.to_s + 'th'
  end
end

numbers = []
ordinals.each do |n|
  prompt("Enter the #{n} number:")
  numbers << gets.chomp.to_i
end

prompt("Enter the last number:")
number_last = gets.chomp.to_i

puts "The number #{number_last} #{numbers.include?(number_last) ? "appears" : "does not appear"} in #{numbers}."
