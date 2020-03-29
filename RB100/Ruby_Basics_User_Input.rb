#Repeat after me
puts ">> Type anything you want:"
answer = gets.chomp
puts answer

#Your Age in Months
puts ">> What is your age in years?"
answer = gets.chomp
months = answer.to_i * 12
puts "You are #{months} months old."

#Print Something (Part 1)
puts ">> Do you want me to print something? (y/n)"
answer = gets.chomp
puts "something" if answer == "y"

#Print Something (Part 2)
loop do 
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
    if answer == "y"
      puts "something"
      break
    elsif answer == "n"
      nil
      break
    else
      puts "Invalid input! Please enter y or n"
    end
  end
#Launch school solution
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice) #%w(y n) = ['y', 'n'], shortcut syntax to represent the Array
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

#Launch School Printer (Part 1)
loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  answer = gets.chomp.to_i
  if answer >= 3
    answer.times { puts "Launch School is the best!" }
    break
  else
    puts "That's not enough lines."
  end
end
#Launch School Solution
number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end

#Passwords
PASSWORD = "SecreT" #define password as a constant which is a string

loop do
  puts ">> Please enter your password:"
  answer = gets.chomp
  break if answer == PASSWORD
  puts ">> Invalid password!"
end

puts "Welcome!"

#User Name and Password
USER = "admin"
PASSWORD = "SecreT"

loop do
  puts ">> Please enter user name:"
  answer_1 = gets.chomp
  puts ">> Please enter your password:"
  answer_2 = gets.chomp
  break if answer_1 == USER && answer_2 == PASSWORD
  puts ">> Authorization failed!"
end

puts "Welcome!"

#Dividing Numbers
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  if valid_number?(numerator)
    break
  else
    puts ">> Invalid input. Only integers are allowed."
  end
end
denominator = nil
loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp
  if valid_number?(denominator) && denominator != "0"
    break
  elsif denominator == "0"
    puts ">> Invalid input. A denominator of 0 is not allowed."
  else
    puts ">> Invalid input. Only integers are allowed."
  end
end

puts "#{numerator}/#{denominator} is #{numerator.to_i/denominator.to_i}"
#Launch School Solution
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts '>> Invalid input. Only integers are allowed.'
end

denominator = nil
loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp

  if denominator == '0'
    puts '>> Invalid input. A denominator of 0 is not allowed.'
  else
    break if valid_number?(denominator)
    puts '>> Invalid input. Only integers are allowed.'
  end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"

#Launch School Printer (Part 2)
loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to Quit):'
  number_of_lines = gets.chomp.downcase
  if number_of_lines.to_i >= 3
    number_of_lines.to_i.times { puts ">> Launch School is the best!" }    
  elsif number_of_lines == 'q'
    break
  else
    puts ">> That's not enough lines." 
  end
end
#Launch School Solution
loop do
  input_string = nil
  number_of_lines = nil

  loop do
    puts '>> How many output lines do you want? ' \
         'Enter a number >= 3 (Q to Quit):'

    input_string = gets.chomp.downcase
    break if input_string == 'q'

    number_of_lines = input_string.to_i
    break if number_of_lines >= 3

    puts ">> That's not enough lines."
  end

  break if input_string == 'q'

  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
end

#Opposites Attract
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  input_number_1 = nil
  loop do
    puts ">> Please enter a positive or negative integer: "
    input_number_1 = gets.chomp
    break if valid_number?(input_number_1)
    puts ">> Invalid input. Only non-zero integers are allowed"
  end

  input_number_2 = nil
  loop do
    puts ">> Please enter a positive or negative integer: "
    input_number_2 = gets.chomp
    break if valid_number?(input_number_2)
    puts ">> Invalid input. Only non-zero integers are allowed"
  end

  if input_number_1.to_i * input_number_2.to_i < 0
    puts "#{input_number_1} + #{input_number_2} = #{input_number_1.to_i + input_number_2.to_i}"
    break
  else
    puts ">> Sorry. One integer must be positive, one must be negative."
    puts ">> Please start over."
  end
end
# Launch School Solution
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do #if loop in def method, no need to use break to stop looping. After returning, it will stop
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp
    return number.to_i if valid_number?(number) #Need to return value if true 
    puts '>> Invalid input. Only non-zero integers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"
# Or
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

input_number_1 = nil
input_number_2 = nil
loop do
  loop do
    puts ">> Please enter a positive or negative integer: "
    input_number_1 = gets.chomp
    break if valid_number?(input_number_1)
    puts ">> Invalid input. Only non-zero integers are allowed"
  end
  loop do
    puts ">> Please enter a positive or negative integer: "
    input_number_2 = gets.chomp
    break if valid_number?(input_number_2)
    puts ">> Invalid input. Only non-zero integers are allowed"
  end
  break if input_number_1.to_i * input_number_2.to_i < 0
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
end

puts "#{input_number_1} + #{input_number_2} = #{input_number_1.to_i + input_number_2.to_i}"