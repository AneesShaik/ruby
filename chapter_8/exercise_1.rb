def englishNumber number
  if number < 0 
	return "Please enter a number that isn't negative."
  end
  if number == 0
	return 'zero'
  end

  numString = "" 

  ones = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine']
  tens = ['Ten', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']
  teens = ['Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']

  left = number

  write = left / 1000000000 
  left -= write * 1000000000 

  if write > 0
    billions = englishNumber write
    numString += billions + " billion"
    if left > 0
      numString += " and "
    end
  end

  write = left / 1000000 
  left -= write * 1000000 

  if write > 0
    millions = englishNumber write
    numString += millions + " million"
    if left > 0
      numString += " and "
    end
  end

  write = left / 1000 
  left -= write * 1000 

  if write > 0
    thousands = englishNumber write
    numString += thousands + " thousand"
    if left > 0
      numString += " and "
    end
  end

  write = left / 100 
  left -= write * 100

  if write > 0
    teens = englishNumber write
    numString += teens + " hundred"
    if left > 0
      numString += " and "
    end
  end

  write = left / 10 
  left -= write * 10 

  if write > 0
    if ((write == 1) and (left > 0))
      numString += teens[left - 1]
      left = 0
    else
      numString += tens[write - 1]
    end

    if left > 0
      numString += "-"
    end
  end

  write = left 
  left = 0 

  if write > 0
    numString += ones[write - 1]
  end

  numString
end

print "Please Enter a number: "
output = gets.chomp.to_i
puts englishNumber(output)
