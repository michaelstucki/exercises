# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

puts "What is your name?"
name = gets.chomp

name = 'Teddy' if name.empty?

puts "Hello, #{name}! You are #{Array(20..200).sample} years old!"
