# Create a simple tip calculator.
# The program should prompt for a bill amount and a tip rate.
# The program must compute the tip
#  and then display both the tip and the total amount of the bill.

def prompt(message)
  puts "=> #{message}"
end

prompt("What is the bill?")
bill = gets.chomp.to_f

prompt("What is the tip percentage?")
tip_pct = gets.chomp.to_f

tip_amt = bill * tip_pct / 100
total = bill + tip_amt

prompt("The tip is $#{format('%02.2f', tip_amt)}")
prompt("The total is $#{format('%02.2f', total)}")
