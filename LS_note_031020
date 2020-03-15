# Lanuch School 3/10/2020
# methods are listed out with either a :: or a # to indicate two different kinds of publicly accessible methods.
# Methods denoted by :: are considered class methods, while methods denoted by # are considered instance methods
# Their use here in Ruby documentation is completely different from their use in actual code.

# Using commands to manage files and folders at the command line (or terminal).
# Running Ruby commands in irb.
# Running Ruby code from a .rb file at the command line.

# gem install <gem name>
# The gem command allows you to use RubyGems. When combined with the install command, one can download and install gems with their dependencies and any relevant documentation. 

# Pry is a nifty library that doubles as an alternative to irb with a host of awesome features.
# gem install pry
# This gives you the pry command which when entered in your terminal will open a new session just like you would with irb.
# Next, when you want to use pry for debugging you'll have to require "pry" and insert a binding.pry in your file like so:
# preparation.rb
require "pry"

a = [1, 2, 3]
a << 4
binding.pry     # execution will pause here, allowing you to inspect all objects
puts a
# binding.pry pause execution to inspect the state of all variables and objects at that line of code.
# After you're done looking at your variables, you can continue the program execution with Ctrl + D

# STRING
# A string is a list of characters in a specific sequence.
# Strings are surrounded by either single quotes ('hi there') or double quotes ("hi there").
# Ex. 1: with double quotes
# If you'd like to include single quotes within your string then you have two options. You can either use the double quote method or the single quote method with escaping:
"The man said, 'Hi there!'"
# Ex 2: with single quotes and escaping
'The man said, \'Hi there!\''
# The backslash, or escape (\) character, tells the computer that the quotes that follow it are not meant as Ruby syntax but only as simple quote characters to be included in the string.
# String interpolation i.e #{a} is a handy way to merge Ruby code with strings. The basic syntax is: #{ruby expression goes here}, and the returned expression will be concatenated with the surrounding string. String interpolation only works within double quotes. You'll get quite familiar with this technique over time.


# Symbols
# Ruby symbols are created by placing a colon (:) before a word.
:name
:a_symbol
:"surprisingly, this is also a symbol"
# Symbol is often referred to as an immutable (i.e. unchangeable) string. 


# Numbers
# Integer is represented by the whole number only, with no decimal point
# Float is a number that contains a decimal.


# nil
# nil provides a way to express "nothing"
# A variable with a value of nil could be described as having 'nothing' or being 'completely empty', or even just simply 'not any specific type'.
# It is possible to check if something is a nil type by using .nil?
irb :001 > "Hello, World".nil?
=> false
# Just like
irb :001 > if nil
irb :002 > puts "Hello, World!"
irb :003 > end
=> nil
# Since 1 is not "nothing" or a false value, the code within the if is run and we see the output. 
irb :001 > if 1
irb :002 > puts "Hello, World!"
irb :003 > end
Hello, World!
=> nil
# remember that nil can be used within a conditional statement, and will be treated as false.
irb :001 > false == nil
=> false
# While both false and nil are both treated as negative when evaluated in an expression, they are not equivalent


# Operations
# +: adding, -: subtraction *: multiply /: divide %: modulo
# When dividing integers, you will only receive an integer in return. We need a different data type if we want more precision. That's where floats come in.
# In order to get a more accurate calculation of the above division problem, we can use floats.
irb :001 > 15.0 / 4
=> 3.75
# You can also multiply floats to do more complex multiplication.
irb :001 > 9.75 * 4.32
=> 42.120000000000005
# Equality Comparison: ==
# String Concatenaton: "a" + "b"
irb :001 > '1' + '1'
=> '11'
# cannot add a Integer and String together.
irb :001 > 'one' + 1
=> TypeError: no implicit conversion of Integer into String
   from (irb):1:in `+'
   from (irb):1
   from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
Looks like we have an error message! The interpreter is complaining that it can't implicitly


# Type Conversion: to_i; to_f: to_s; to_sym; 
irb :001 > '4'.to_i
=> 4
irb :002 > '4 hi there'.to_i
=> 4
irb :003 > 'hi there 4'.to_i
=> 0
irb :004 > '4'.to_f
=> 4.0
irb :005 > '4 hi there'.to_f
=> 4.0
irb :006 > 'hi there 4'.to_f
=> 0.0


# Basic Data Structures
# Arrays: [ index0, index1, index2,... ]
# An array is used to organize information into an ordered list. The list can be made up of strings, integers, floats, booleans, or any other data type.
# Hashes: { :key => value }, a key-value pair
# hash rocket: => followed by wahtever your Ruby expression returns
# Ruby expressions always return a value, even if that value is nil or an error.

# puts vs return
# When we call the puts method, we're telling Ruby to print something to the screen.
# However, puts does not return what is printed to the screen. 
# Expressions do something, but they also return something. The value returned is not necessarily the action that was performed. 


# Launch School excercise 2
def thousands(a)
  return a / 1000
end
puts thousands(4936)
def hundreds(b)
  return b % 1000 / 100
end
puts hundreds(4936)
def tens(c)
  return c % 100 / 10
end
puts tens(4936)
def ones(d)
  return d % 10
end
puts ones(4936)


# excercise 3
movie_year = { :titanic => 1975, :the_lion_king => 2004, :iron_man => 2013, :spider_man => 2001, :captain_america => 1981 }
movie_year.each { |movie, year| puts year }
# excercise 4
year_array = [ 1975, 2004, 2013, 2001, 1981 ]
year_array.each { |a| puts a }
puts[0]
puts[1]
puts[2]
puts[3]
puts[4]

#excercise 5
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

#excercise 6
puts 3.14 ** 2

#excercise 7
# without a closing bracket and it may have happened when creating a hash
