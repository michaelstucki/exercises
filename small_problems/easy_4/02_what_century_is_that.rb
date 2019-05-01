def century(year)
  root = year.ceil(-2) / 100
  suffix = ''
  
  if [11, 12, 13].include?(root % 100)
    suffix = 'th'
  elsif root % 10 == 1
    suffix = 'st'
  elsif root % 10 == 2 
    suffix = 'nd'
  elsif root % 10 == 3
    suffix = 'rd'
  else
    suffix = 'th'
  end
  
  root.to_s + suffix

end

if __FILE__ == '02_what_century_is_that.rb'
  puts century(2000) == '20th'
  puts century(2001) == '21st'
  puts century(1965) == '20th'
  puts century(256) == '3rd'
  puts century(5) == '1st'
  puts century(10103) == '102nd'
  puts century(1052) == '11th'
  puts century(1127) == '12th'
  puts century(11201) == '113th'
end
