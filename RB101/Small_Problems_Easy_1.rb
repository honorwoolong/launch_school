#Repeat Yourself
def repeat(string, num)
  num.times do
    puts string
  end
end

repeat('Hello', 3)

#Odd
def is_odd?(number)
  number % 2 != 0
end

puts is_odd?(2)    
puts is_odd?(5)    
puts is_odd?(-17)  
puts is_odd?(-8)   
puts is_odd?(0)    
puts is_odd?(7)

#List of Digits
def digit_list(number)
  counter = 0
  arr = []
  loop do
    break if counter == number.to_s.size
    arr << number[counter]
    counter += 1
  end
  arr
end

def digit_list(number)
  number.to_s.chars.map { |int| int.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     
puts digit_list(7) == [7]                     
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4] 

#How Many?
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(elements)
  elements.uniq.each do |element|
    puts "#{element} => #{elements.count(element)}"
  end
end

count_occurrences(vehicles)

#Reverse It(Part 1)
def reverse_sentence(string)
  split_string = string.split
  counter = split_string.size
  reverse_split_array = []
  loop do
    counter -= 1
    reverse_split_array << split_string[counter]
    break if counter <= 0
  end
  reverse_split_array.join(' ')
end

def reverse_sentence(string)
  string.split.reverse.join (' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

#Reverse It(Part 2)
def reverse_words(string)
  reverse_array = string.split.map do |str|
                    if str.size >= 5                  
                      str.reverse
                    else
                      str
                    end
                  end
  reverse_array.join ' '
end
puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')  

#Stringy Strings
def stringy(integer)
  string = ''
  counter = integer
  loop do 
    break if counter <= 0
    string << '1' 
    counter -= 1
    break if counter <= 0
    string << '0' 
    counter -= 1
  end
  string
end

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

def stringy(size, start = 1)
  numbers = []
  if start == 0
    size.times do |index|
      number = index.even? ? 0 : 1
      numbers << number
    end
  else
    size.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
  end
  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7,0)
puts stringy(7,5)

#Array Average
def average(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  sum / array.count
end

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

def average(numbers)
  sum = numbers.reduce(:+)
  sum / numbers.count.to_f
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

#Sum of Digits
def sum(numbers)
  numbers.to_s.chars.map{ |number| number.to_i }.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#What's my Bonus?
def calculate_bonus(salary, boolean)
  boolean ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000