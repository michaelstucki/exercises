def running_total0(numbers)
  index = 1
  while index < numbers.size
    numbers[index] = numbers[index - 1] + numbers[index]
    index += 1
  end
  
  numbers
end

def running_total(numbers)
  sum = 0
  numbers.inject { |sum, n| sum + n }
end

if __FILE__ == '06_running_totals.rb'
  puts running_total([2, 5, 13]) == [2, 7, 20]
  puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
  puts running_total([3]) == [3]
  puts running_total([]) == []
end
