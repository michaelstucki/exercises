a = %w(a b c d e)                    
# => shortcut to generate an array of strings
#puts a.fetch(7)                      
# => IndexError exception, since index 7 is out of bounds
puts a.fetch(7, 'beats me')          
# => "beats me", This error is prevented by the second argument, the default.
puts a.fetch(7) { |index| index**2 }
# => 49, Or, this block is executed when invalid index is supplied.a


