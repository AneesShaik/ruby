require 'date'

puts ""
puts "Leap Year Calculating Program".center(50)

print "Starting year: "
start = gets.chomp.to_i

print "Ending year: "
endi = gets.chomp.to_i

puts "Leap years between #{start} and #{endi}:"

while start != endi+1
  puts start if Date.new(start).leap?
  start += 1
end

