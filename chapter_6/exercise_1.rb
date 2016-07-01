puts "99 beer bottles lyrics".center(50)

num = 99

while num != 0
  puts "#{num} bottles of beer on  the wall, #{num} bottles of beer."
  puts "Take one dwon and pass it around, #{num - 1} bottles of beer on the wall.\n\n"

  num -= 1
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Got to the store and buy some more, 99 bottles of beer on the wall."
