# Write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

def xor?(x, y)
  (x && !y) || (!x && y)
end

if __FILE__ == '06_exclusive_or.rb'

  puts xor?(true, true)
  puts xor?(true, false)
  puts xor?(false, true)
  puts xor?(false, false)

end
