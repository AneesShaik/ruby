
Numbers_To_Name = {
  1000000 => "million",
  1000 => "thousand",
  100 => "hundred",
  90 => "ninety",
  80 => "eighty",
  70 => "seventy",
  60 => "sixty",
  50 => "fifty",
  40 => "forty",
  30 => "thirty",
  20 => "twenty",
  19 => "nineteen",
  18 => "eighteen",
  17 => "seventeen", 
  16 => "sixteen",
  15 => "fifteen",
  14 => "fourteen",
  13 => "thirteen",              
  12 => "twelve",
  11 => "eleven",
  10 => "ten",
  9 => "nine",
  8 => "eight",
  7 => "seven",
  6 => "six",
  5 => "five",
  4 => "four",
  3 => "three",
  2 => "two",
  1 => "one"
}
def in_words(int)
  str = ""
  Numbers_To_Name.each do |num, name|
    if int == 0
      return str
    elsif int.to_s.length == 1 && int / num > 0
      return str + "#{name}"      
    elsif int < 100 && int / num > 0
      return str + "#{name}" if int % num == 0
      return str + "#{name} " + in_words(int % num)
    elsif int / num > 0
      return str + in_words(int / num) + " #{name} " + in_words(int % num)
    end
  end
end

puts "Enter the number you want change into words: "
number = gets.chomp.to_i
puts in_words(number) 