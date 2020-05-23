#Short Long Short
def short_long_short(str1, str2)
  str1.size > str2.size ? str2.concat(str1, str2) : str1.concat(str2, str1)
end
#Launch School Solution
def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end
#Non-destruction
def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end
##
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

#What Century is That?
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10
  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

#Leap Years (Part 1)
#Year is evenly divisible by 4 unless the year is also divisible by 100
#Year is evenly divisible by 100, then it is not a leap year unless it is evenly divisible by 400
def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0)
end
#Launch School Solution
def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end
##
p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

#Leap Years(Part 2)
def leap_year?(year)
  if year >= 1752
    (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

#Multiples of 3 and 5
def sum_of_three(num)
  multi = 0
  sum = 0
  loop do
    multi += 1
    break if 3 * multi > num
    sum += 3 * multi
  end
  sum
end

def sum_of_five(num)
  multi = 0
  sum = 0
  loop do
    multi += 1
    break if 5 * multi > num
    sum += 5 * multi
  end
  sum
end

def sum_of_fifteen(num)
  multi = 0
  sum = 0
  loop do
    multi += 1
    break if 15 * multi > num
    sum += 15 * multi
  end
  sum
end

def multisum(num)
  sum_of_three(num) + sum_of_five(num) - sum_of_fifteen(num)
end
#Launch School Solution
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end
##

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  arr = []
  1.upto(max_value) do |number|
    arr << number if multiple?(number, 3) || multiple?(number, 5)
  end
  sum = arr.inject(:+)
end
#Answer from other student
def multisum(max_value)
  (1..max_value).select {|num| num % 3 == 0 || num % 5 == 0}.reduce(:+)
end
##
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

#Running Totals
def running_total(arr)
  element = 0
  new_arr = []
  arr.each do |num|
    element += num
    new_arr << element
  end
  new_arr
end
#Launch School Solution
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end
##

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

#Convert a String to a Number!
DIGITS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
         '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0 }
def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  value = 0
  digits.each { |digit| value = value * 10 + digit }
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
#further exploration
DIGITS = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0,
           'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14,
           'F' => 15 }

def hexadecimal_to_integer(string)
  digits = string.upcase.chars.map { |char| DIGITS[char] }
  value = 0
  digits.each { |digit| value = value * 16 + digit }
  value
end

p hexadecimal_to_integer('4D9f') == 19871

#Convert a String to a Signed Number!
DIGITS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
         '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0 }
def string_to_signed_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  digits.delete_at(0) if string[0] == '+' || string[0] == '-'
  value = 0
  digits.each { |digit| value = value * 10 + digit }
  value = value * -1 if string[0] == '-'
  value
end
#Launch School Solution
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end
##
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

#Covert a Number to a String!
def integer_to_string(number)
  string = number.digits.reverse.join
end
#Launch School Solution
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
##
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

#Convert a Signed Number to a String
def integer_to_string(number)
  string = number.digits.reverse.join
end

def signed_integer_to_string(number)
  if number < 0
    "-#{integer_to_string(number.abs)}"
  elsif number > 0
    "+#{integer_to_string(number)}"
  else
    integer_to_string(number)
  end
end
#Other Student Solution
def signed_integer_to_string(int)
  return '0' if int == 0
  sign = int > 0 ? '+' : '-'
  sign + integer_to_string(int.abs)
end
##
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'