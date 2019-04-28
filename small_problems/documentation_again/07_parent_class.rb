s = 'abc'
puts s.public_methods.inspect

puts s.public_methods(all=false).inspect
# Object#public_methods(all=true) => array, a list of all private methods accessible to obj.
# If all=false, only the methods in the receiver are listed.

