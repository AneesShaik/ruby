puts ("Flow Control".center(50))

puts ("Bottles of beer lyrics".center(50))
bottles_of_beer = 99
while bottles_of_beer > 1
  puts bottles_of_beer.to_s + ' bottles of beer on the wall, ' +
  bottles_of_beer.to_s + ' bottles of beer'
  bottles_of_beer = bottles_of_beer - 1
  puts 'You take one down, pass it around, ' + bottles_of_beer.to_s + '
  bottles of beer on the wall.'
  puts ''
end
puts 'Everyone passes out quite drunk.'

puts ""
puts ("Deaf Grandma program!!!".center(50))
puts "Hey Sonny! It's your lovely Grandmother! How are you?"

while (response = gets.chomp) != "BYE"
    if response != response.upcase
      puts "Huh?! I CAN'T HEAR YOU!"
    end

    if (response == response.upcase)
      puts "NO! NOT SINCE " + (1930+rand(21)).to_s + "!"
    end
  end
  puts "GOOD BYE, SONNY!"

puts ""
puts ("Improved Grandma Program".center(50))
puts "ENTER BYE 3 TIMES IN A ROW TO EXIT"
puts 'Hey Sonny, it\'s your Grandma! How are you?'

response = nil
bye = 0

while bye < 3
  response = gets.chomp

  if response == 'BYE'
    bye = (bye + 1)

    if bye == 3
      puts 'BYE, SONNY!'
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end

  elsif response == response.upcase
    puts 'NO! NOT SINCE ' + (1930+rand(21)).to_s + '!'
    bye = 0
  else
    puts 'HUH?! SPEAK UP, SONNY!'
    bye = 0
  end
end

puts ""
puts ("Leap Year Calculating Program".center(50))
require 'date'

puts 'Begin year:'
beginyear = Integer(gets)

puts 'End year:'
endyear = Integer(gets)

puts "Leap years between #{beginyear} and #{endyear}:"

for y in beginyear..endyear
  puts y if Date.new(y).leap?
end

