empty = 1
class OrangeTree
  def initialize
    @tree = "orange tree"
    @age = 0
    @height = 0
    @fruit = 0
    @fruit_picked = 0
    puts "Your #{@tree} is budding"
  end
 
  attr_reader :fruit

  def age
    puts "Your #{@tree} is #{@age} years old"
    @age = @age
  end

  def height
    puts "Your #{@tree} is growing taller"
    @height = @height
  end

  def fruit
    puts "Your #{@tree} has #{@fruit} oranges"
    @fruit = @fruit
  end

  def pick_orange
    puts "You have picked up 1 orange"
    @fruit = @fruit -1
    
    if @fruit > 0
      puts "You have #{@fruit} oranges left to pick. Hope the Orange you picked is delicious"
    else
      puts "You have no more oranges left to be picked"
    end
  end

  def one_year_passes
    if @age >= 0 and @age<10
      @age = @age + 1
    end

    if @height >= 0 and @height < 20
      @height = @height + 1
    else
    
    puts "Your #{@tree} is no longer growing taller."
    end

    if @age >= 3
      @fruit = @fruit + (@age * 2)
    end

    if @age >= 3
      @fruit_picked = @fruit_picked + @fruit_picked
      @fruit = @fruit - @fruit_picked
    end
  end
end

orange = OrangeTree.new
orange.age
orange.fruit
orange.height

while true
  puts "\n\nWhat would you like to know about your tree?"
  puts "a) Age of the Tree"
  puts "b) Number of fruits on your tree"
  puts "c) Pick oranges"
  puts "d) Height of your tree"
  puts "e) Increase age of tree"
  puts "f) Exit program"
  print "Please select an option from above: "
  answer = gets.chomp
  puts ""

  if answer == "a"
    orange.age
  elsif answer == "b"
    orange.fruit
  elsif answer == "c"
    orange.pick_orange  
    puts "Do you want to pick more oranges?"
    reply = gets.chomp.upcase
    if reply == "YES"
      while reply == "YES"
        orange.pick_orange

        if orange.fruit != 0
          puts "Do you want to pick more oranges?"
          reply = gets.chomp.upcase
        else 
          puts "Sorry there are no more Oranges to pick !!!"
          reply = nil
        end
      end
    end
      
  elsif answer == "d"
    orange.height
  elsif answer == "e"
    puts "Incremented the age of your tree by 1 year"
    orange.one_year_passes
  elsif answer == "f"
    puts "Lets hope your tree has a long fruitful life"
    exit
  else
    puts "Sorry I didn't get you\n\n"
  end  
end
