=begin
If you weren't certain whether % were the modulus or remainder operator, how would you rewrite #is_odd? so it worked regardless?
=end

def is_odd?(number)
  if number == 0
    return false
  elsif number == 1 || number == -1
    return number == -1
  end

  is_odd?(number.remainder(2))
end

if __FILE__ == $0

  puts is_odd?(2)
  puts is_odd?(-17)
  puts is_odd?(0)

end
