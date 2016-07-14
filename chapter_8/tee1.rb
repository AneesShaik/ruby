require 'pry'
$i = 1
class Test
  attr_reader :digit
  def length(number)
    @len = number.length

    if $i == 1
      @standard = number.length # This value can never be changedi
      $i  = 0
    end

    @digit = "1"
    
    if @standard > 0
      while @len > 1 
        @digit += "0"
        @len -= 1
      end
      
      @standard -= 1
      calculate(number.to_i)
    end
  end

  def decrement(number)
    @digit.to_s
    @digit -= "0"
    @digit.to_i
  end
    
  def calculate(number)
    left = number / @digit.to_i
    number %= @digit.to_i
    puts left
    length(number.to_s)
  end
end

print "Enter your number: "
number = gets.chomp

num = Test.new
num.length(number)


       
