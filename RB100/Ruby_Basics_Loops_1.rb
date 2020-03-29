# 3/20/2020

#Runaway loop
loop do 
  puts 'Just keep printing...'
break # to stop iterating and exit the block
end

#Loopception
loop do
  puts 'This is the outer loop.'
  loop do #nested loop
    puts 'This is the inner loop.'
    break #stop iterating of inner loop
  end
  break #stop iterating of outer loop
end

puts 'This is outside all loops.'

#Control the Loop
itertions = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1 #give condition working
  break if iterations > 5 #add conditon to puts more than 1 time
end 
#Futher Exporation: if break statement moved up one line
loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end 

#Loop on Command
loop do
  puts 'should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes' #if user type yes, it will become true and stop iterating
  puts 'Wrong answer, please reply yes!' #demonstrate that break doesn't have to be at the end of the loop to do this job
end 

#Say Hello
say_hello = true 
count = 0 #provide chances for scondition

while say_hello
  puts 'Hello!' 
  count += 1 #give condition working
  say_hello = false if count == 5 #add condition to stop iterating
end 

#Print While
numbers = []

while numbers.size < 5 # == is not accessible, while is do for true, == 5 only if your value is "5"
  numbers << rand(100) #rand(max) will return random number with 0 to max
end

puts numbers

#Count Up
count = 1 #start from 1
until count > 10 #until is do for false, if return true, loop stops.
  puts count
  count += 1
end

#Print Until
numbers = [7, 9 ,13, 25, 18]
i = 0

until i == numbers.size 
  puts numbers[i] #print the values in array
  i += 1
end

# That's Odd
for i in 1..100
  puts i if i.odd? #add condition and .odd? to check if integer is odd number
end 

#Greet Your Friedns
friends = ['Sarah', 'John', 'Hannah', 'Dave']
for friend in friends do
  puts "Hello, #{friend}!"
end
