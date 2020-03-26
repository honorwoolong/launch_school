# Launch School 3/11/2020
#Variables
# used to store information to be referenced and manipulated in a computer program.
# assignment operator: = ; equality operator: ==
# gets stands for "get string"
irb :001 > name = gets
Bob
=> "Bob\n"
# The \n at the end is the "newline" character and represents the enter key.
# We'll use chomp chained to gets to get rid of that - you can put .chomp after any string to remove the carriage return characters at the end.
irb :001 > name = gets.chomp
Bob
=> "Bob"

# Variable Scope
# A variable's scope determines where in a program a variable is available for use. 
# defined by where the variable is initialized or created. in Ruby, variable scope is defined by a block. 
# A block is a piece of code following a method invocation, usually delimited by either curly braces {} or do/end(not all).
# Inner scope can access variables initialized in an outer scope, but not vice versa.

# scope.rb
a = 5             # variable is initialized in the outer scope

3.times do |n|    # method invocation with a block
  a = 3           # is a accessible here, in an inner scope?
end
# The value of a is 3. This is because a is available to the inner scope created by 3.times do ... end, which allowed the code to re-assign the value of a.
puts a


# scope.rb
a = 5

3.times do |n|    # method invocation with a block
  a = 3
  b = 5           # b is initialized in the inner scope
end

puts a
puts b            # is b accessible here, in the outer scope?
# undefined local varable or method 'b' for main:Object (NameError)
# This is because the variable b is not available outside of the method invocation with a block where it is initialized. 


# Note: the key distinguishing factor for deciding whether code delimited by {} or do/end is considered a block (and thereby creates a new scope for variables), is seeing if the {} or do/end immediately follows a method invocation. 
arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a       # is it accessible here?
# a is accessible, because the for...do/end code did not create a new inner scope, since for is part of Ruby language and not a method invocation. 


# Five types of variables: Constants, Global Variables, Class Variables, Instance Variables and Local Variables
# Constants are declared by capitalizing every letter in the variable's name, per Ruby convention used for storing data that never needs to change.
MY_CONSTANT = 'I am available throughout your app.'
# Global variables are declared by starting the variable name with the dollar sign ($). These variables are available throughout your entire app, overriding all scope boundaries.
$var = 'I am also available throughout your app.'
# Class variables are declared by starting the variable name with two @ signs. These variables are accessible by instances of your class, as well as the class itself. 
@@instances = 0
# Instance variables are declared by starting the variable name with one @ sign. These variables are available throughout the current instance of the parent class.
@var = 'I am available throughout the current instance of this class.'
# Local variables are the most common variables you will come across and obey all scope boundaries. These variables are declared by starting the variable name with neither $ nor @, as well as not capitalizing the entire variable name.
var = 'I must be passed around to cross scope boundaries.'


# Methods: def method(parameter)
# Instead of writing that piece of code over and over, there's a feature in most programming languages called a procedure, which allows you to extract the common code to one place. In Ruby, we call it a method.
# Arguments are pieces of information that are sent to a method invocation to be modified or used to return a specific result.

# assign a default parameter in case the caller doesn't send any arguments.
def say(words='hello')
  puts words + "."
end
# we called words a parameter, which are used when you have data outside of a method definition's scope.
say()
say("hi")
say("how are you")
say("I'm fine")


# Make sure don't mix up method invocation with a block and method definition
# Method invocation with a block
[1, 2, 3].each do |num|
  puts num
end

# Method definition
def print_num(num)
  puts num
end


# some_method(obj); explicit caller: a_caller.some_method(obj)

a = [1, 2, 3]
# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end
# pop is a method in the Array class that removes the last element of an array and returns it.
p "Before mutate method: #{a} "
mutate(a)
p " after mutate method: #{a}"
# We have permanently modified the local variable a by passing it to the mutate method, even though a is outside the method definition's scope. This is because the pop method mutates the caller

b = [4, 5, 6]
# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before mutate method: #{b}"
no_mutate(a)
p " after mutate method: #{b}"
# we have the same output before and after the method invocation, so we know that a was not modified in any way. This is because the last method does not mutate the caller.


#Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it.
def add_three(number)
  return number + 3
  number + 4
end
# When you place a return in the middle of the add_three method definition, it just returns the evaluated result of number + 3, which is 7, without executing the next line.
returned_value = add_three(4)
puts returned_value
# chains method example 1
add_three(4).times { puts "it should print 7 times" }
# Because we know for certain that every method call returns something, we can chain methods together
# chains method example 2
"hi there".length.to_s   # returns "8" which is a string
# length method returns an integer, and we can call to_s on integers to convert them into strings.


def add_five(m)
  puts m + 4
end
# due to return "nil" by using puts method, so get an error
add_five(3).times { puts "will it worl" }
# if use puts in def method, return will become nil
# if anywhere along the chain, there's a nil or an exception is thrown, the entire chained call will break down. 

# make this fix
def add_six(p)
  new_value = p + 6
  puts new_value #puts the value out
  new_value #retrun the value
end


# Methods excercise 1
def greeting(name)
  return "hello, " + name
end
puts greeting(Roy)

# excercise 2
1. x = 2    # => 2
2. puts x = 2    # nil
3. p name = "Joe"    # => "Joe"
4. four = "four"    # => "four"
5. print something = "nothing"    # => nil

#excercise 3
def multiply(a, b)
  a * b
end
puts multiply(133, 234)

#excercise 4
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
# it returns "nil" and puts nothing


# excercise 5
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")
# it still returns "nil" and puts "Yippeee!!!!"
