# Build a program that displays when the user will retire
# and how many years she has to work till retirement.

def prompt(message)
  puts "=> #{message}"
end

prompt("What is your age?")
age = gets.chomp.to_i

prompt("At what age would you like to retire?")
retirement_age = gets.chomp.to_i

years_to_retire = retirement_age - age
current_year = Time.new.year
retirement_year = current_year + years_to_retire

prompt("It's #{current_year}. You will retire it #{retirement_year}.")
prompt("You have only #{years_to_retire} years of work to go!")
