puts "The following program will greet you after you input your name"

puts ""
puts "Please enter the follwing details"

print "First Name: "
first_name = gets.chomp
print "Middle Name: "
middle_name = gets.chomp
print "Last Name: "
last_name = gets.chomp

puts ""
puts "Hello #{first_name.capitalize} #{middle_name.capitalize} #{last_name.capitalize}" # Uses interpolation method to output the variable values


