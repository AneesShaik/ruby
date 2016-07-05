def english_number(number)
  if number < 0 
    return "Please enter a number that isn't negative."
  end

  if number == 0
    return "zero"
  end

  num_string = "" 

  ones = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine']
  tens = ['Ten', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']
  teens = ['Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']

  left = number

  right = left / 1000000000 
  left -= right * 1000000000 

  if right > 0
    billions = english_number(right)
    num_string += billions + " billion"

    if left > 0
      num_string += " and "
    end
  end

  right = left / 1000000 
  left -= right * 1000000 

  if right > 0
    millions = english_number(right)
    num_string += millions + " million"

    if left > 0
      num_string += " and "
    end
  end

  right = left / 1000 
  left -= right * 1000 

  if right > 0
    thousands = english_number(right)
    num_string += thousands + " thousand"

    if left > 0
      num_string += " and "
    end
  end

  right = left / 100 
  left -= right * 100

  if right > 0
    teens = english_number(right)
    num_string += teens + " hundred"

    if left > 0
      num_string += " and "
    end
  end

  right = left / 10 
  left -= right * 10 

  if right > 0
    if ((right == 1) and (left > 0))
      num_string += teens[left - 1]
      left = 0
    else
      num_string += tens[right - 1]
    end

    if left > 0
      num_string += "-"
    end
  end

  right = left 
  left = 0 

  if right > 0
    num_string += ones[right - 1]
  end

  num_string
end

puts "99 beer bottles lyrics".center(50)

output = 99

while output != 0
  puts "#{english_number(output)} bottles of beer on  the wall, #{english_number(output)} bottles of beer."
  puts "Take one dwon and pass it around, #{english_number(output - 1)} bottles of beer on the wall.\n\n"

  output -= 1
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Got to the store and buy some more, Ninety-Nine bottles of beer on the wall."
