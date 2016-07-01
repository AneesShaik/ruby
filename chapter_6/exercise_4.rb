require 'date'

puts ""
puts "Leap Year Calculating Program".center(50)

print "Starting year: "
start = gets.chomp

print "Ending year: "
endi = gets.chomp

puts "Leap years between #{start} and #{endi}:"

for i in start.to_i..endi.to_i
  puts i if Date.new(i).leap?
end

