#How old is Teddy?
puts "Teddy is #{rand(20..200)} years old!"

puts "=> Please type your name."
name = gets.chomp
if name.empty?
  puts "Teddy is #{rand(20..200)} years old!"
else
  puts "#{name} is #{rand(20..200)} years old!"
end

#How big is the room?
SQMETER_TO_SQFEET = 10.7639
puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f
puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f
area_meters = length * width.round(2)
area_feet = (area_meters * SQMETER_TO_SQFEET).round(2)
puts "The area of the room is #{area_meters.to_s} " + \
"square meters (#{area_feet.to_s} square feet)."

SQFEET_TO_SQINCH = 144
SQFEET_TO_SQCM = 929.0304
puts 'Enter the length of the room in feet:'
length = gets.chomp.to_f
puts 'Enter the width of the room in feet:'
width = gets.chomp.to_f
area_feet = length * width.round(2)
area_inch = (area_feet * SQFEET_TO_SQINCH).round(2)
area_cm = (area_feet * SQFEET_TO_SQCM).round(2)
puts "The area of the room is #{area_feet} " + \
"square feet, #{area_inch} square inches " + \
"and #{area_cm} square centimeters."

#Tip Calculator
puts 'What is the bill?'
bill = gets.chomp.to_f
puts 'What is the tip percentage?'
tip_percentage = gets.chomp.to_f
tip = (bill * tip_percentage / 100).round(1)
total = (bill + tip).round(1)
puts "The tip is $#{tip}"
puts "The total is $#{total}"

tip = (bill * tip_percentage / 100)
total = (bill + tip)
puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f',total)}"

#When will I retire?
t = Time.now

puts 'What is your age?'
age = gets.chomp.to_i
puts 'At what age would you like to retire?'
retire_age = gets.chomp.to_i

year = t.year
work_year = retire_age - age
retire_year = year + work_year

puts "It's #{year}. You will retire in #{retire_year}."
puts "You have only #{work_year} years of work to go!"

#Greeting a user
puts 'What is your name?'
name = gets.chomp
if name[-1] == '!'
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

#Odd Numbers
(1..99).each do |num|
  puts num if num.odd?
end

1.upto(99) { |i| puts i if i.odd? }

arr = (1..99).to_a.select do |i|
        i.odd?
      end
arr.each{|i| puts i}

#Even Numbers
(1..99).each do |num|
  puts num if num.even?
end

1.upto(99) { |i| puts i if i.even? }

arr = (1..99).to_a.select do |i|
        i.even?
      end
arr.each{|i| puts i}

#Sum or Product of Consecutuve Integers
def prompt(string)
  puts ">> #{string}"
end

def numbers_arr(number)
  arr = []
  number.times do |num|
    arr << num + 1
  end
  arr
end

prompt('Please enter an integer greater than 0:')
integer = gets.chomp.to_i
prompt("Enter 's' to compute the sum, 'p' to compute the product.")
compute = gets.chomp

array = numbers_arr(integer)
sum = array.reduce(:+)
product = array.reduce(:*)

if compute == 's'
  prompt("The sum of the integers between 1 and #{integer} is #{sum}.")
elsif compute == 'p'
  prompt("The product of the integers between 1 and #{integer} is #{product}.")
else
  prompt('TypeError!')
end

#String Assignment
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
#=> BOB, BOB, both are mutated because save_name and name assign to the same object ID

#Mutation
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
#=> ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppo"]
#=> every element in the array has its own object ID which was mutated by array1, so the same object ID in array2 will be affected also
