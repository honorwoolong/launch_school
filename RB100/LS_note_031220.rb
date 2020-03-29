# Launch School 3/12/2020
# Conditionals: <, >, <=, >= ==, |=, &&, ||; if, else, elsif, end
puts " put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else 
  puts "a is neither 3, nor 4"
end
# We need to convert the input into an integer because gets always gives us a string.


# < - less than; > - greater than; <= - less than or equal to; >= - greater than or equal to; == - is equal to; != not equal to
# && - "and" operator; || - "or" operator; ! - "not operator"

# Boolean logic
# <=, <, >, >= - Comparison
# ==, != - Equality
# && - Logical AND
# !! - Logical OR



# Example 1
if x == 3
  puts "x is 3"
end

# Example 2
if x == 3
  puts "x is 3"
elsif x == 4
  puts "x is 4"
end

# Example 3
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end

# Example 4: must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end

puts "x is 3" if x == 3
puts "x is NOT 3" unless x == 3
# unless acts an opposite of if


#The ternary operator uses a combination of the ? and :.
# Ternary operator example: "True or False ? True : False"
irb :001 > true ? "this is true" : "this is not true"
 => "this is true"

irb :001 > false ? "this is true" : "this is not true"
 => "this is not true"

 
 # Case Statement: case, when, else, and end


 # excercise 2
 def woolong(argu)
  if argu.length.to_i > 10
    argu.upcase!
  else
    argu
  end
end

puts woolong("hello world")
puts woolong("good")

# excercise 3
puts " please put your luck number between 0 and 100"
answer = gets.chomp.to_i
if answer < 0
  puts "no negative, bro!"
elsif answer <= 50
  puts "#{answer} Lucky you, close lol"
elsif answer == 65
  puts "#{answer} BINGO!!!"
elsif answer <= 100
  puts "#{answer} almost there"
else
  puts "Game over!"
end

# Launch School 3/13/2020
# Loops: while; do/while; for
# A loop is the repetitive execution of a piece of code for a given amount of repetitions or until a certain condition is met. 
# A loop will execute any code within the block (again, that's just between the {} or do ... end) until you manually intervene with Ctrl + c or insert a break statement inside the block, which will force the loop to stop and the execution will continue after the loop.
# We use break to exit a loop, we can use the keyword next to skip the rest of the current iteration and start executing the next iteration. 
# break and next are important loop control concepts that can be used with loop or any other loop construct in Ruby
# A while loop is given a parameter that evaluates to a boolean (remember, that's just true or false).
# until loop is simply the opposite of the while loop. You can substitute it in order to phrase the problem in a different way.
# Iterators are methods that naturally loop over a given set of data and allow you to operate on each element in the collection.
# Recursion is another way to create a loop in Ruby. Recursion is the act of calling a method from within itself.

# Recursion example
def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end


# fibonacci sequence basically is a sequence of numbers in which each number is the sum of the previous two numbers in the sequence.
# fibonacci sequence is a good example for recursion application
# Recursion, the ability to call a method inside of itself, can also do some powerful operations when solving problems. 


# Loops & Iterators excercise 1
=> [1, 2, 3, 4, 5] # it will still return the numbers which are in the array
# excercise 2
x = ""
while x != "STOP" do
  puts "How's your day?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp # note that put x in the answer to stop loop
end 

# excercise 3
def countdown(x)
  if x <= 0
    puts x
  else
    puts x
    countdown(x - 1)
  end
end

countdown(10)
