require 'date'

puts "Leap Year Calculating Program".center(50)

print "Starting year: "
start_year = gets.chomp.to_i

print "Ending year: "
end_year = gets.chomp.to_i

puts "Leap years between #{start_year} and #{end_year}:"

while start_year != end_year+1
  puts start_year if Date.new(start_year).leap?
  start_year += 1
end

