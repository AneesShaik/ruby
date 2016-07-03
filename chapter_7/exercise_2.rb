puts "Sorting without using Sort method"
words = []

while true
   word = gets.chomp
   break if word.empty?
   words << word
end

while words.size > 0
   word = words.min {|a,b| a.downcase <=> b.downcase}
   puts word
   words.delete(word)
end

