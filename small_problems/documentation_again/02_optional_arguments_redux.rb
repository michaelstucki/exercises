require 'date'

# creates a date object denoting the given calendar date
puts Date.new              # => Jan 1, -4712
puts Date.new(2016)        # => Jan 1,  2016
puts Date.new(2016, 5)     # => May 1,  2016
puts Date.new(2016, 5, 13) # => May 5,  2016

