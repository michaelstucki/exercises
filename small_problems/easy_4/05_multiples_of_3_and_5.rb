def multisum(number)
  (1..number).select { |n| n % 3 == 0 || n % 5 == 0 }.reduce(:+)
end

if __FILE__ == '05_multiples_of_3_and_5.rb'
  puts multisum(3) == 3
  puts multisum(5) == 8
  puts multisum(10) == 33
  puts multisum(1000) == 234168
end
