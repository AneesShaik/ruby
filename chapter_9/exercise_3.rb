class Orange_tree

    def initialize
        @tree = "orange tree"
        @age = 0
        @height = 0
        @fruit = 0
        @fruit_picked = 0
        puts "your #{@tree} is budding"
    end

    def age
        puts "your #{@tree} is #{@age} years old."
        @age = @age
        one_year_passes
    end

    def height
        puts "your #{@tree} is growing taller."
        @height = @height
    end

    def fruit
        puts "your #{@tree} has #{@fruit} oranges."
        @fruit = @fruit
    end

    def pick_orange
        puts "pick how many oranges?"
        @fruit_picked = @fruit_picked + gets.chomp.to_i
        puts "you picked #{@fruit_picked} oranges."
    end


    def one_year_passes
        if @age >= 0
            @age = @age + 1
        end

        if @height >= 0 and @height < 20
            @height = @height + 1
        else
            puts "your #{@tree} is no longer growing taller."
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

orange = Orange_tree.new
orange.age
#orange.age
#orange.age
#orange.age
#orange.age
#orange.fruit
#orange.pick_orange
#orange.fruit

while true
  puts "\nWhat would you like to know about your tree?"
  puts "a) Age of the Tree"
  puts "b) Number of fruits on your tree"
  puts "c) Pick oranges"
  puts "d) Exit program\n"
  answer = gets.chomp

  if answer    == "a"
    orange.age
  elsif answer == "b"
    orange.fruit
  elsif answer == "c"
    orange.pick_orange
  elsif answer == "d"
    puts "Let's hope your tree have a long fruitful life "
    exit
  else
    puts "Sorry. I didn't get you"
  end

  puts
end
