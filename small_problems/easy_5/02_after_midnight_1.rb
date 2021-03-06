require 'pry'

HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

def time_of_day(minutes)
  minutes_rem = minutes.remainder(MINUTES_IN_DAY)
  minutes_rem += MINUTES_IN_DAY if minutes_rem < 0
  hh = minutes_rem / MINUTES_IN_HOUR
  mm = minutes_rem % MINUTES_IN_HOUR
  "#{format('%02d', hh)}:#{format('%02d', mm)}"
end

if __FILE__ == '02_after_midnight_1.rb'
  puts time_of_day(0) == '00:00'
  puts time_of_day(-3) == '23:57'
  puts time_of_day(35) == '00:35'
  puts time_of_day(-1437) == '00:03'
  puts time_of_day(3000) == '02:00'
  puts time_of_day(800) == '13:20'
  puts time_of_day(-4231) == '01:29'
end
