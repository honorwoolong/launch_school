#Even or Odd?
count = 1

loop do
  if count.even? #check if the value is even
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end
  count += 1
  break if count > 5
end

#Catch the Number
loop do #solution 1
  number = rand(100)
  puts number
  break if number.between?(0, 10) #between?: Returns false if obj <=> min is less than zero or if obj <=> max is greater than zero, true otherwise.
end

loop do #solution 2
  number = rand(100)
  puts number
  break if (1..10).include?(number) #include?: Returns true if obj is an element of the range, false otherwise.
end

#Conditional Loop
process_the_loop = [true, false].sample #sample: Choose a random element or n random elements from the array.
if process_the_loop #it already returns true or false so can use conditional
  loop do
    puts "The loop was processed!"
    break 
else
  puts "The loop wasn't processed"
end

#Get the Sum
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

#Insert Numbers
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input #Launch School solution utiize numbers.push(input) pushing the given object onto the end of array
  break if numbers.size == 5
end
puts numbers

#Empty the Array
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift #Removes the first element of self and returns it (shifting all other elements down by one). Returns nil if the array is empty.
  break if names.empty? #Returns true if self contains no elements.
end

#Stop Counting
5.times do |index|
  puts index
  break if index == 2 #times method also can use break to stop looping
end

#Only Even
number = 0

until number == 10
  number += 1
  puts number if number.even?
end
#solution from launch school
number = 0

until number == 10
  number += 1
  next if number.odd? #skip the odd number and puts even number only
  puts number
end

#First to Five
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next if
  number_a < 5 || number_b < 5 #launch school uses next unless number_a == 5|| number_b == 5
  puts '5 was reached!'
  break  
end
#Further Exploration
number_a = 0
number_b = 0

loop do
  if number_a == 5 && number_b == 5
    puts "5 was reached!"
    break
  else 
    number_a += rand(2)
    number_b += rand(2)
  end
end

#Greeting
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end