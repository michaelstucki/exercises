HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def get_minutes(time)
  minutes = time[0, 2].to_i * MINUTES_PER_HOUR + time[3, 2].to_i
end

def after_midnight(time)
  get_minutes(time) % MINUTES_PER_DAY
end

def before_midnight(time)
  (MINUTES_PER_DAY - get_minutes(time)) % MINUTES_PER_DAY
end

if __FILE__ == '03_after_midnight_2.rb'
  puts after_midnight('00:00') == 0
  puts before_midnight('00:00') == 0
  puts after_midnight('12:34') == 754
  puts before_midnight('12:34') == 686
  puts after_midnight('24:00') == 0
  puts before_midnight('24:00') == 0
end
