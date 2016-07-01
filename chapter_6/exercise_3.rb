puts "Deaf Grandma Program".center(50)
puts ""

puts "You're Sonny, start the program by speaking to the Grandma. She will respond only if you type your reply in CAPITAL LETTERS"
puts ""
print "Sonny: "
bye = 0

while bye != 3

  if (response = gets.chomp) == "bye".upcase
    bye = (bye + 1)

    if bye == 3
      puts "Grandma: BYE, SONNY!"
    else
      puts "Grandma: HUH?! SPEAK UP, SONNY!"
    end

  elsif response == response.upcase
    puts "Grandma: NO! NOT SINCE #{1930 + rand(21)}!"
    bye = 0

  else
    puts "Grandma: HUH?! SPEAK UP, SONNY!"
    bye = 0
  end

  print "Sonny: "

end



