puts "In this exercise which outputs the Bigger and better number after taking your favourite number as input"
print "Enter your favourite number: "
fav_num = gets.chomp
puts "The bigger and better number is #{ fav_num.to_i + 1 }"
