puts "Enter your Date of Birth"
print "Year: "
y = gets.chomp.to_i
print "Month: "
m = gets.chomp.to_i
print "Day: "
d = gets.chomp.to_i

my_birthday = Time.local(y, m, d)
one_bil_secs = my_birthday + 1_000_000_000
d = Time.now
age = (d - my_birthday).floor / 31556926
puts age 
puts "You'll be one billion seconds old on this date: #{one_bil_secs}."

24.times {puts "SPANK!"}
