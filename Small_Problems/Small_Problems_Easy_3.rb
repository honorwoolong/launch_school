def prompt(msg)
  puts "=> #{msg}"
end

#Search 101
arr = []
prompt('Enter the 1st number:')
answer1 = gets.chomp.to_i
arr << answer1
prompt('Enter the 2nd number:')
answer2 = gets.chomp.to_i
arr << answer2
prompt('Enter the 3rd number:')
answer3 = gets.chomp.to_i
arr << answer3
prompt('Enter the 4th number:')
answer4 = gets.chomp.to_i
arr << answer4
prompt('Enter the 5th number:')
answer5 = gets.chomp.to_i
arr << answer5
prompt('Enter the last number:')
answer6 = gets.chomp.to_i
if arr.include?(answer6)
  prompt("The number #{answer6} appear in #{arr}.")
else
  prompt("The number #{answer6} does not apprat in #{arr}.")
end

#Arithmetic Integer
number1 = ''
number2 = ''
loop do
  prompt('Enter the 1st number:')
  number1 = gets.chomp
  break if number1.to_i.to_s == number1 && number1.to_i > 0
  prompt('Please enter positive integer!')
end
loop do
  prompt('Enter the 2nd number:')
  number2 = gets.chomp
  break if number2.to_i.to_s == number2 && number2.to_i > 0
  prompt('Please enter positive integer!')
end

num1 = number1.to_i
num2 = number2.to_i
addition = num1 + num2
substraction = num1 - num2
product = num1 * num2
quotient = num1 / num2
remainder = num1 % num2
power = num1 ** num2

prompt("#{number1} + #{number2} = #{addition}")
prompt("#{number1} - #{number2} = #{substraction}")
prompt("#{number1} * #{number2} = #{product}")
prompt("#{number1} / #{number2} = #{quotient}")
prompt("#{number1} % #{number2} = #{remainder}")
prompt("#{number1} ** #{number2} = #{power}")

#Counting the Number of Characters
prompt('Please write word or multiple words:')
input = gets.chomp
char_num = input.length - input.count(' ') #num_char = input.delete(' ').size
prompt("There are #{char_num} characters in \"#{input}\".")

#Multiplying Two Numbers
def multiply(num1, num2)
  num1 * num2
end

multiply(5, 3) == 15

#Squaring an Argument
def square(num)
  multiply(num, num)
end

square(5) == 25
square(-8) == 64

#Exlusive Or
def xor?(boolean1, boolean2)
  if [boolean1, boolean2] == [true, true]
    false
  elsif [boolean1, boolean2] == [false, false]
    false
  elsif [boolean1, boolean2] == [true, false]
    true
  elsif [boolean1, boolean2] == [false, true]
    true
  end
end
#Launch School Solution
def xor?(value1, value2) 
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end
##
p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

#Odd Lists
def oddities(arr)
  arr.select do |n|
    arr.index(n).even?
  end
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

def oddy(arr)
  index = 0
  new_arr = []
  loop do
    break if index >= arr.size
    new_arr << arr[index]
    index += 2
  end
  new_arr
end

p oddy([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddy([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddy(['abc', 'def']) == ['abc']
p oddy([123]) == [123]
p oddy([]) == []

#Palindromic Strings(Part 1)
def real_palindrome?(string)
  new_str = string.downcase
  arr = new_str.chars
  arr_aph = arr.select{ |n| ('a'..'z').to_a.include?(n)}
  arr_aph == arr_aph.reverse
end
#Launch School Solution
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end
##
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true          # (case matters)
p real_palindrome?("madam, i'm adam") == true # (all characters matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

#Palindromic Numbers
def palindromic_number?(number)
  palindrome?(number.to_s)
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

