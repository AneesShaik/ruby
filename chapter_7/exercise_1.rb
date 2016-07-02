puts "Enter the list of words for sorting"

array_input = []

while (input = gets.chomp) != ""
  array_input << input
end

puts ""
puts array_input.sort

