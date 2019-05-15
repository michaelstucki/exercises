require 'time'
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
SECONDS_PER_MINUTE = 60
DATE = "2019-05-03"
TIME = "00:00"
MIDNIGHT = Time.parse("#{DATE} #{TIME}")

def minutes_after_midnight(time_str)
  seconds = Time.parse("#{DATE} #{time_str}") - MIDNIGHT
  minutes = (seconds / SECONDS_PER_MINUTE) % MINUTES_PER_DAY
end

def minutes_before_midnight(time_str)
  (MINUTES_PER_DAY - minutes_after_midnight(time_str)) % MINUTES_PER_DAY
end

if __FILE__ == '03_after_midnight_2_fe.rb'
  puts minutes_after_midnight('00:00') == 0
  puts minutes_before_midnight('00:00') == 0
  puts minutes_after_midnight('12:34') == 754
  puts minutes_before_midnight('12:34') == 686
  puts minutes_after_midnight('24:00') == 0
  puts minutes_before_midnight('24:00') == 0
end
