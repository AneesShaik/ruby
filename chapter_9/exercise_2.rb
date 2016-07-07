class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_belly     = 10  #  He's full.
    @stuff_intestine =  0  #  He doesn't need to go.

    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}"
    @stuff_belly = 10
    passage_time
  end

  def walk
    puts "You walk  #{@name}"
    @stuff_intestine = 0
    passage_time
  end

  def put_bed
    puts "You put #{@name} to bed."
    @asleep = true
    
    3.times do
      if @asleep
        passage_time
      end

      if @asleep
        puts "#{@name}snores, filling the room with smoke."
      end
    end

    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_time

    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  private

  def hungry?
    @stuff_belly <= 2
  end

  def poopy?
    @stuff_intestine >= 8
  end

  def passage_time
    if @stuff_belly > 0
      @stuff_belly     = @stuff_belly     - 1
      @stuff_intestine = @stuff_intestine + 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end

      puts "#{@name} is starving!  In desperation, he ate YOU!"
      exit  
    end

    if @stuff_intestine >= 10
      @stuff_intestine = 0
      puts "Whoops!  #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end

      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end

      puts "#{@name} does the potty dance..."
    end
  end

end

puts "Hi Danereys Targaryen. I'm glad you made it on time. Your dragon is hatching!"
puts "(You know, I think you should give it a name.)"
print "Name: "
pet = Dragon.new(gets.chomp)
puts "Your dragon seems quite lively.\n\n"

while true
  puts "What would you like to do?"
  puts "a) Feed your dragon."
  puts "b) Walk your dragon."
  puts "c) Put your dragon to bed."
  puts "d) Toss your dragon."
  puts "e) Rock your dragon."
  puts "f) Set your dragon free..."
  answer = gets.chomp
  
  case answer
  when "a" then pet.feed
  when "b" then pet.walk
  when "c" then pet.put_bed
  when "d" then pet.toss
  when "e" then pet.rock
  when "f"
    puts  "Let's hope it'll do well Danerys Mother of Dragons First of her name, Queen of Andals and First men, Breaker of chains, The Unburnt, Kahleesi and bla bla bla "
    exit 
  else
    puts "Sorry. I didn't get you Dany\n\n"
  end
end
