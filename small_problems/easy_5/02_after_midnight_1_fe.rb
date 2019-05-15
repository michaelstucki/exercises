MIDNIGHT_SATURDAY = Time.new(2019, 5, 5)
SECONDS_PER_MINUTE = 60
DAYS_OF_WEEK = {
  0 => 'Sunday', 1 => 'Monday', 2 => 'Tuesday', 3 => 'Wednesday',
  4 => 'Thursday', 5 => 'Friday', 6 => 'Saturday'
}.freeze

def time_of_day(delta_minutes)
  time = MIDNIGHT_SATURDAY + (delta_minutes * SECONDS_PER_MINUTE)
  "#{DAYS_OF_WEEK[time.wday]} #{time.strftime('%H:%M')}"
end

if __FILE__ == '02_after_midnight_1_fe.rb'
  puts time_of_day(0)
  puts time_of_day(-3)
  puts time_of_day(35)
  puts time_of_day(-1437)
  puts time_of_day(3000)
  puts time_of_day(800)
  puts time_of_day(-4231)
end
