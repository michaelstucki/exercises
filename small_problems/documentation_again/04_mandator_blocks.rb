a = [1, 4, 8, 11, 15, 19] # => an ordered array

# Array#bsearch
puts a.bsearch { |n| n > 8 }

