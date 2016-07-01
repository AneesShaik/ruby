puts "Deaf Grandma Program".center(50)
puts ""

puts "You're Sonny, start the program by speaking to the Grandma. She will respond only if you type your reply in CAPITAL LETTERS"
puts ""
print "Sonny: "

while (reply = gets.chomp) != "bye".upcase

  if reply == reply.upcase
    puts "Grandma: NO, NOT SINCE #{1930+rand(20)}!"
  else
    puts "Grandma: HUH?! SPEAK UP, SONNY!"
  end

  print "Sonny: "

end


