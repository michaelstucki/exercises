require 'pry'

DEGREE = "\xC2\xB0"

def dms(angle)
  deg = angle.to_i
  rem = (angle - deg) * 60
  min = rem.to_i
  sec = ((rem - min) * 60).to_i
  %(#{format('%02d', deg)}#{DEGREE}#{format('%02d', min)}'#{format('%02d', sec)}")
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
