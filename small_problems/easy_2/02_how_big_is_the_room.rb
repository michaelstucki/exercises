# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

def prompt(message)
  puts "Enter #{message}"
end

SQ_METERS_TO_SQ_FEET = 10.7639

prompt("Room's length (meters):")
length = gets.chomp.to_f

prompt("Room's width (meters):")
width = gets.chomp.to_f

area_meters = length * width
area_feet = area_meters * SQ_METERS_TO_SQ_FEET

prompt("Room's area is: #{area_meters} squared-meters")
prompt("Room's area is: #{area_feet} squared-foot")
