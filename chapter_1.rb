puts "Hi David this is my Chapter 1 assignment"

puts "Enter yes to continue to test my assignment or no to quit"

choice = gets.chomp

if choice == "yes"
  puts"Great!!! lets start the exercise"
  puts "1.How many hours are in a year? "
  hours = 365 * 24 # Calculates the hours in a year
  puts "Number of hours in a year are #{hours}h"

  puts "2.How many minutes are in a decade?"
  minutes = hours.to_i * 10 * 60 # Calculates the minutes in a decade
  puts "Number of minutes in a Decade are #{minutes}m"

  puts "3.How many seconds old are you?[Enter your age]"
  age = gets.chomp
  seconds = age.to_i * hours.to_i * 60 * 60 # Calculates how many seconds older you're
  puts "You're #{seconds}seconds older"

  puts "4.How many chocolates do you hope to eat in your life?"
  puts "Enter the age from when you started eating chocolates?"
  start_age = gets.chomp
  puts "Enter number of chocolates you eat daily?"  
  chocolates = gets.chomp
  required_age = 100 - start_age.to_i # Number of years you can eat chocolates
  chocolatesNumber = required_age.to_i * 365 * chocolates.to_i # Calculates the number of chocolates you can eat
  puts "Number of chocolates you might eat in your life are #{chocolatesNumber} given if you live for 100 years"

  puts "5.If Iam 1246 million seconds old, how old am I?"
  year = 365 * 24 * 60 *60 # Number of seconds in a year
  old = 1246000000 / (year.to_i)
  puts "You're #{old} years old"
else 
  puts "Hope you change your opinion and evaluate my code!!!"
end
