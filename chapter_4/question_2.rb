puts "This exercise outputs the Bigger and Better number after taking your favourite number as input"

puts ""
print "Enter your favourite number: "
fav_num = gets.chomp

puts ""
puts "The bigger and better number is #{ fav_num.to_i + 1 }"
