require 'date'

puts ""
puts "Leap Year Calculating Program".center(50)

print "Starting year: "
start = gets.chomp.to_i

print "Ending year: "
endi = gets.chomp.to_i

puts "Leap years between #{start} and #{endi}:"

for i in start..endi
  puts i if Date.new(i).leap?
end

