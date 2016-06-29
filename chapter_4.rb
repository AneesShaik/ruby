# 1 Question
puts "The following program will greet you after you input your name"

puts "Please enter the follwing details"

print "First Name: "
first_name = gets.chomp
print "Middle Name: "
middle_name = gets.chomp
print "Last Name: "
last_name = gets.chomp
puts "Hello "+first_name+" "+middle_name+" "+last_name

# 2 Question
puts ""
puts "In this exercise which outputs the Bigger and better number after taking your favourite number as input"
print "Enter your favourite number: "
fav_num = gets.chomp
puts "The bigger and better number is #{ fav_num.to_i + 1 }"


