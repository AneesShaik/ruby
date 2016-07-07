class OrangeTree
  def initialize
    @tree = "orange tree"
    @age = 0
    @height = 0
    @fruit = 0
    @fruit_picked = 0
    puts "Your #{@tree} is budding"
  end

  def age
    puts "Your #{@tree} is #{@age} years old"
    @age = @age
    one_year_passes
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
    puts "How many oranges do you want to pick?"
    @fruit_picked = @fruit_picked + gets.chomp.to_i
    puts "You picked #{@fruit_picked} oranges."
  end

  def one_year_passes
    if @age >= 0
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
  puts "e) Exit program\n"
  answer = gets.chomp

  case answer
    when "a" then orange.age
    when "b" then orange.fruit
    when "c" then orange.pick_orange
    when "d" then orange.height
    when "e"
    puts "Let's hope your tree have a long fruitful life "
    exit
  else

    puts "Sorry. I didn't get you\n\n"
  end
end
