puts "Enter your Date of Birth [Please input only INTEGER values]"
print "Year: "
year = gets.chomp.to_i
print "Month: "
month = gets.chomp.to_i
print "Day: "
day = gets.chomp.to_i

my_birthday = Time.local(year, month, day)
one_bil_secs = my_birthday + 1_000_000_000
age = (Time.now - my_birthday).floor / 31556926
puts age 
puts "You'll be one billion seconds old on this date: #{one_bil_secs}."

age.times {puts "SPANK!"}
