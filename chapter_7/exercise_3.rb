toc = ["Table of Contents", "Chapter 1", "Getting Started", "page 1", "Chapter 2", "Numbers", "page 9", "Chapter 3", "Letter", "page 13"]

line_width = 50
i = 1

puts "#{toc[0].center(line_width * 2)}\n\n"

while i < toc.length
  puts "#{toc[i]}: #{toc[i + 1].ljust(line_width)} #{toc[i + 2].rjust(line_width)}" # Iterating line to print all the array elements & Spacing not included after ":"
  i += 3
end

