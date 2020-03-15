print "What's your first name? "
first_name = gets.chomp.capitalize
print "What's your last name? "
last_name = gets.chomp.capitalize
print "What city do you live in? "
city = gets.chomp.capitalize
print "Where is the state? "
state = gets.chomp.upcase
print "How do you feel? "
feel = gets.chomp.upcase
puts "#{first_name} #{last_name} lives in #{city}, #{state}. #{first_name} #{last_name} feel #{feel} right now "
# gets.chomp and .capitalize .up/downcase and put the answer string into the sentence up to your comnination

print "give your lucky Integer: "
user_num = Integer(gets.chomp)
if user_num > 7
  puts "You are ambitious lol!"
elsif user_num < 7
  puts "You are too humble lol"
else
  puts "You are conservative la!"
end
# if, elsif and else application

i = 20
loop do
  i < 20
  i = i - 1
  next if i % 2 == 1
  print "#{i}"
  break if i == 0
end
# loop do ... next if ... break if application


i = 0
while i < 50 do
  i += 1
  print "#{i}"
end
# while do application, a kind of loop method


j = 0
until i == 50 do
  j += 1
  print "#{i}"
end
# until do application, similar like while backward, a kind of loop method


for k in 1..50
  print k
end
# for a in number1..or...number2, .. include number1 and 2, ... exclude number 2


m = 0
loop do
  print "Ruby!"
  m += 1
  break if i == 30
end
# utilize loop do...break if to get repearted strings


30.times { print "Ruby!" }
# untilize number.times to get repeated strings


puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp
words = text.split(" ")
words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end
# make a redact program, if the word is redacted, it shows "REDACTED"


puts "text"
text = gets.chomp
puts "redact"
redact = gets.chomp
words = text.split(" ")
words.each do |word|
  if word != redact
    print word + " "
  else 
    print "redacted"
  end
end
# redacted example


pets = Hash.new
pets["honor"] = "woolong"
pets["Roy"] = "Wu"
pets["Newbie"] = "Programmer"
puts pets
puts pets["Newbie"]
# use Hash.new to create a complete hash


s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each do |sub_array|
  sub_array.each do |y| puts y
  end
end
# make array of arrays, mutidimetional array to spread into single words


secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
secret_identities.each do |movie, name| puts "#{movie}: #{name}"
end
# "key => word" to puts "key: word"


lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}
lunch_order.each {|name, food| puts "#{food}"}
# "key => word" only put "word"


puts "text, please: "
text = gets.chomp
words = text.split(" ")
puts word
frequencies = Hash.new(0)
puts frequencies
words.each {|word| frequencies[word] += 1}
puts frequencies
frequencies = frequencies.sort_by do |word, order|
  order
end
frequencies.reverse!
puts frequencies
frequencies.each do |word, order|
  puts word + " " + order.to_s
end
# to check each words in the sentence with frequency, put word frequency


def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end
what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")
# use * to include all strings at a time


def add(x,y)
  return x+y
end
puts add(1,2)
# return by two arguments


def greeter(name)
  return "good morning" + " " + name
end
puts greeter("Roy")
# return greeting by typing a name


def by_three?(number)
  return number % 3 == 0
end
puts by_three?(5)
# check if the number can be divided exactly by 3, it will shows true or false


1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }
# do...end equals to {...}


# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end
capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"
# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"


# The block, {|i| puts i}, is passed the current
# array item each time it is evaluated. This block
# prints the item. 
[1, 2, 3, 4, 5].each { |i| puts i }

# This block prints the number multiplied by 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts i*5 }



my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].
puts my_array.sort!
# rearrange the order of numbers


# library sorting code
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
books.sort!
puts books
# it also can be rearranged alphabetically


# Combined comparison operator <=>. 
# It returns 0 if the first operand (item to be compared) equals the second.
# It returns 1 if the first operand is greater than the second.
# It returns -1 if the first operand is less than the second.
book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"
puts book_2 <=> book_1 # it puts -1 for this case


books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]
# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }
# Sort your books in descending order, in-place below
books.sort!.reverse! { |firstBook, secondBook| firstBook <=> secondBook }


def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end
books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]
puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"


matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}
matz.each do |key, value| 
  puts "#{key}: #{value}"
end

# .object_id is to indentify if these two objects are exactly the same
puts "string".object_id
puts "string".object_id
# above result shows these two strings are different objects
puts :symbol.object_id
puts :symbol.object_id
# if you add a colon before, these two became the same object


symbol_hash = {
  :one => 1,
  :two => 2,
  :three => 3,
}
# symbols are primarily used either as hash keys or for referencing method names.
# They’re immutable, meaning they can’t be changed once they’re created;
# Only one copy of any symbol exists at a given time, so they save memory;
# Symbol-as-keys are faster than strings-as-keys because of the above two reasons.


strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []
strings.each {
  |s|
  symbols.push(s.to_sym)
}
print symbols
# transform strings into symbols


strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []
strings.each {
  |s|
  symbols.push(s.intern)
}
print symbols
# .intern is the same function of .to_sym, to transform strings to symbols


movies = {
  :big_shark => "it's the love story about people and shark",
  :honorwoolong => "a guy wants to be happier so decide to be a code newbie",
  :MIT => "about the product was made in Taiwan"
}
puts movies
# old version of Ruby for symbols appearance


movies = {
  big_shark: "it's the love story about people and shark",
  honorwoolong: "a guy wants to be happier so decide to be a code newbie",
  MIT: "about the product was made in Taiwan"
}
puts movies
# old version of Ruby after 1.9 for symbols appearance
# The two changes are:
# 1. You put the colon at the end of the symbol, not at the beginning;
# 2. You don't need the hash rocket anymore.
# It's important to note that even though these keys have colons at the end instead of the beginning, they're still symbols!


require 'benchmark'
string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]
string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end
symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end
puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."
# it is a test about the data process speed between strings and symbols


movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
good_movies = movie_ratings.select {|name, rating| rating > 3}
puts good_movies
# select certain key-values from hash by setting conditions


movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
movie_ratings.each_key{ |k| puts k }
movie_ratings.each_value{ |v| puts v }
# puts or print only key or value from the hash


movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end


movies = { the_lion_king: 5, race_and_speed: 4, titanic: 6}
puts "what do you want to do, add/update/display/delete? "
choice = gets.chomp
case choice
  when 'add'
  puts "choose a movie"
  title = gets.chomp
  puts "give a rating(1-6)"
  rating = gets.chomp
  movies[title.to_sym] = rating.to_i
  puts "#{title}: #{rating}"
  end
  # add the reply into hash, use to_sym to make string to symbol and to_i to make number to be integer


movies = { the_lion_king: 5, race_and_speed: 4, titanic: 6}
puts "what do you want to do, add/update/display/delete? "
choice = gets.chomp
case choice
when 'add'
  puts "choose a movie"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "give a rating(1-6)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title}: #{rating}"
  else
    puts "#{title} already exists"
  end
  # add if and else for all the circumstances
when 'update'
  puts "which movie to be updated? "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "#{title} did not exsit!"
  else
    puts "give a new rating"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title}: #{rating}"
  end
# add update conditions
when 'display'
  movies.each do |movie, rating| puts "#{movie}: #{rating}"
  end
when 'delete'
  puts 'choose a movie'
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "#{title} did not exist"
  else
    puts "#{title} is already deleted"
  end
else
  puts "Error!!!"
end 


honor_woolong = true
lazy = false
puts "honorwoolong is not lazy" if honor_woolong
puts "honorwoolong is good enough" if lazy
# "if" only true, it will show up


puts "hello world" unless true
puts "hello guys" unless false
# "unless" only false, it will show up


if 4 > 3
  puts "Correct"
else
  puts "Incorrect"
end
#if/else/end mode

puts 4 > 3 ? "Correct" : "Incorrect"
# if/else ternary conditional expression


puts "Hello there!"
greeting = gets.chomp
case greeting
  when "English" then puts "Hello!" when "French" then puts "Bonjour!" when "German" then puts "Guten Tag!" when "Finnish" then puts"Haloo" else puts "I don't know that language" end
# case..when..case..end can be folded by case..when..then..else..end


favorite_book = nil
puts favorite_book
# favorite_book is set to nil, which is Ruby for “nothing.”
favorite_book ||= "Cat's Cradle"
puts favorite_book
# Now our variable is conditionally set to “Cat’s Cradle.” It will show it because nothing before.
favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book
# try conditional assignment again, this time with “Why’s (Poignant) Guide to Ruby.” however, ariable already has a value, “Cat’s Cradle"
favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book
# use regular old assignment to tell Ruby to reset favorite_book to “Why’s (Poignant) Guide to Ruby,” which it gladly does.


def multiple_of_three(n)
  return n % 3 == 0 ? "True" : "False"
end
# "return" can be neglected
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end


def a
  puts "A was evaluated!"
  return true
end
def b
  puts "B was also evaluated!"
  return true
end
# Ruby knows True || is must be true so it only puts a value
puts a || b
puts "------"
puts a && b
# Since it might b is false causing a || b becomes false so it shows both a and b which are both true.


my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each { |x| puts "#{x}" if x % 2 == 0 }
# one-line if example, it puts 2, 4, 6, 8, 10


my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each { |x| puts "#{x}" unless x % 2 == 0 }
# one-line unless example, it puts 1, 3, 5, 7, 9


"L".upto("P") { |alpha| puts alpha }
# .upto, puts L M N O P
100.downto(95) { |num| puts num }
# .downto, puts 100 99 98 97 96 95


age = 26
puts age.respond_to?(:next)
# to check if age variable is a integer or not


alphabet = ["a", "b", "c"]
alphabet.push("d") # use .push to add new value
caption = "A giraffe surrounded by "
caption += "weezards!" # use += into string


alphabet = ["a", "b", "c"]
alphabet << "d" # Update me!
puts alphabet
caption = "A giraffe surrounded by "
caption << "weezards!" # Me, too!
puts caption
# use concatenation operator << can apply in both array and string


favorite_things = ["Ruby", "espresso", "candy"]
puts "A few of my favorite things:"
favorite_things.each do |thing|
  puts "I love " << thing << "!"
end
# using concatenation operator <<

favorite_things = ["Ruby", "espresso", "candy"]
puts "A few of my favorite things:"
favorite_things.each do |thing|
  puts "I love #{thing}!"
end
# using interpolation #{}


for i in (1..3)
  puts "I'm a refactoring master!"
end
# use for to repeat the string
3.times do puts "I'm a refactoring master!" end
# use .times to repeat the string


require 'prime'
def first_n_primes(n)
  puts "n must be an integer." if n.respond_to?(:next)
  puts "n must be greater than 0." unless n <= 0
end
first_n_primes(10)


fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect { |x| x*2 }
puts double_fibs
# my_nums.collect returns a copy of my_nums, but doesn’t change (or mutate) the original my_nums array.
# my_nums.collect! mutates the original array instead of creating a new one.


def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end
block_test { puts ">>> We're in the block!" }
# "We're back in the method!" will show up in the last sentence


def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end
yield_name("Eric") { |n| puts "My name is #{n}." }
yield_name("woolong") {|my_name| puts "My name is #{my_name}"}
# yield is like insert a sentence to the paragraph we appoint.


multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end
print (1..100).to_a.select(&multiples_of_3)
# See proc as a “saved” block: just like you can give a bit of code a name and turn it into a method
# The & is used to convert the proc into a block


floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new { |x| x.floor }
ints = floats.collect(&round_down)
print ints
# The .floor method rounds a float (a number with a decimal) down to the nearest integer. 
# The .collect! and .map! methods do the exact same thing.


# Two advantages of procs
# Procs are full-fledged objects, so they have all the powers and abilities of objects. (Blocks do not.)
# Unlike blocks, procs can be called over and over without rewriting them. This prevents you from having to retype the contents of your block every time you need to execute a particular bit of code.


# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]
# Complete this as a new Proc
over_4_feet = Proc.new { |n| n >= 4 }
# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)
puts can_ride_1
puts can_ride_2
puts can_ride_3


def greeter
  yield
end
phrase = Proc.new { puts "Hello there!" }
puts greeter(&phrase)
# Combine def with block by proc


hi = Proc.new { puts "Hello!" }
hi.call
# call procs directly by using Ruby’s .call


# You can also convert symbols to procs using that handy little &.
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.collect(&:to_s)
puts strings_array
# The reukst will become ["1", "2"...]


# lambda { puts "Hello!" } equals to Proc.new { puts "Hello!" }
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end
lambda_demo(lambda { puts "I'm the lambda!" })
# 1st lambda example


strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
symbolize = lambda { |param| param.to_sym }
symbols = strings.collect(&symbolize)
print symbols
# 2nd lambda example


# two main difference between proc and lambda
# a lambda checks the number of arguments passed to it, while a proc does not.
# when a lambda returns, it passes control back to the calling method; when a proc returns, it does so immediately, without going back to the calling method.
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end
# it puts "Batman will win!"
puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end
# it puts "Iron Man will win!"
puts batman_ironman_lambda


# The word Symbol has to be capitalized when you’re doing an .is_a? check!
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
symbol_filter = lambda { |n| n.is_a? Symbol }
symbols = my_array.select(&symbol_filter)
puts symbols
#.is_a? method returns true if an object is the type of object named and false otherwise


# blocks, procs and lambdas
# A block is just a bit of code between do..end or {}. It’s not an object on its own, but it can be passed to methods like .each or .select.
# A proc is a saved block we can use over and over.
# A lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.


# puts the exactly same result from below three examples
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
honor = lambda { |n| n.is_a? Integer }
ints = odds_n_ends.select(&honor)
puts ints

woolong = Proc.new { |h| h.is_a? Integer }
inta = odds_n_ends.select(&woolong)
puts inta

intb = odds_n_ends.select{ |w| w.is_a? Integer}
puts intb


crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
first_half = lambda { |key, value| value < "M" }
a_to_m = crew.select(&first_half)
puts a_to_m


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


# Launch school 3/14/2020
# Array, you can define an array by placing a list of elements between brackets
# array[index 0(first), index 1, index 2, index 3(last)]
# array.first => index 0, array.last => index 3
irb :002 > array = [1, 'Bob', 4.33, 'another string']
irb :007 > array.pop
=> "another string"
irb :008 > array
=> [1, "Bob", 4.33]
# .pop: take the last item off of an array permanently
irb :009 > array.push("another string")
=> [1, "Bob", 4.33, "another string"]
# .push: add that item back to the array permanently
irb :010 > array.pop
=> "another string"
irb :011 > array << "another string"
=> [1, "Bob", 4.33, "another string"]
# Another way to do the above would be with the shovel operator (<<).
# Both the push and the << methods mutate the caller, so the original array is modified.

# map method iterates over an array applying a block to each element of the array and returns a new array with those results
# The collect method is an alias to map
irb :001 > a = [1, 2, 3, 4]
=> [1, 2, 3, 4]
irb :002 > a.map { |num| num**2 }
=> [1, 4, 9, 16]
irb :003 > a.collect { |num| num**2 }
=> [1, 4, 9, 16]
irb :004 > a
=> [1, 2, 3, 4]
# These methods are not destructive (i.e., they don't mutate the caller).

# Destructive "delete_at" method can be helpful if you'd like to eliminate the value at a certain index from your array.
irb :005 > a.delete_at(1)
=> 2
irb :006 > a
=> [1, 3, 4]
#As a side note, sometimes you will know the value that you want to delete, but not the index. In these situations you will want to use the delete method.
irb(main):013:0> a.delete(3)
=> 3
irb(main):014:0> a
=> [1, 4]

# if there are 2 values which are the same
irb :007 > my_pets = ["cat", "dog", "bird", "cat", "snake"]
=> ["cat", "dog", "bird", "cat", "snake"]
irb :008 > my_pets.delete("cat")
=> "cat"
irb :009 > my_pets
=> ["dog", "bird", "snake"]
# .uniq can delete any duplicate values that exist, then returns the result as a new array.
irb(main):015:0> b = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6]
=> [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6]
irb(main):016:0> b.uniq
=> [1, 2, 3, 4, 5, 6]
irb(main):017:0> b
=> [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6]
# add suffix ! after .uniq!, this method became destructive
irb(main):018:0> b.uniq!
=> [1, 2, 3, 4, 5, 6]
irb(main):019:0> b
=> [1, 2, 3, 4, 5, 6]
# uniq and uniq! are two different methods for Ruby Arrays. You cannot simply append a ! onto any method and achieve a destructive operation.


# select method iterates over an array and returns a new array that includes any items that return true to the expression provided.
irb(main):020:0> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb(main):021:0> numbers.select { |number| number > 4 }
=> [5, 6, 7, 8, 9, 10]
irb(main):022:0> numbers
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# if no ! typing behind .select, it will not destroy the original array
# the word "destructive" here just means mutating the caller
# The bang suffix (!) at the end of the method name usually indicates that the method will change (or mutate) the caller permanently.
# Mutate the caller without "!" : pop and push that are also destructive

#Nested Array
irb(main):001:0> team = [['George', 'Mary'], ['Roy', 'Gary'], ['John', 'Johnny']]
=> [["George", "Mary"], ["Roy", "Gary"], ["John", "Johnny"]]
irb(main):002:0> team[1]
=> ["Roy", "Gary"]
irb(main):003:0> team[0]
=> ["George", "Mary"]

# Comparing Array
irb(main):004:0> a = [1, 2 ,3]
=> [1, 2, 3]
irb(main):005:0> b = [2, 3, 4]
=> [2, 3, 4]
irb(main):006:0> a == b
=> false
irb(main):007:0> b.pop
=> 4
irb(main):008:0> b.unshift(1)
=> [1, 2, 3]
irb(main):009:0> a == b
=> true
# .unshift is just like the opposite of .pop, adding the arguments that you specify to the front of the list

# to_s, adding array into string
irb(main):010:0> a = [1, 2, 3]
=> [1, 2, 3]
irb(main):011:0> "Hey, #{a}"
=> "Hey, [1, 2, 3]"


# include? method checks to see if the argument given is included in the array.
# It has a question mark at the end of it which usually means that it will return a boolean value.
irb(main):012:0> a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb(main):013:0> a.include?(3)
=> true
irb(main):014:0> a.include?(6)
=> false

# flatten method can be used to take an array that contains nested arrays and create a one-dimensional array
irb(main):015:0> a = [1, 2, [3, 4, 5], [6, 7]]
=> [1, 2, [3, 4, 5], [6, 7]]
irb(main):016:0> a.flatten
=> [1, 2, 3, 4, 5, 6, 7]
irb(main):017:0> a
=> [1, 2, [3, 4, 5], [6, 7]]

#each_index method iterates through the array much like the each method, however the variable represents the index number as opposed to the value at each index.
irb(main):001:0> a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb(main):002:0> a.each_index { |i| puts " this is index #{i}!" }
 this is index 0!
 this is index 1!
 this is index 2!
 this is index 3!
 this is index 4!
=> [1, 2, 3, 4, 5]

# each_with_index gives us the ability to manipulate both the value and the index by passing in two parameters to the block of code.
# The first is the value and the second is the index.
irb(main):001:0> a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]
irb(main):002:0> a.each_with_index { |val, idx| puts "#{idx}. #{val}" }
0. 1
1. 2
2. 3
3. 4
4. 5
=> [1, 2, 3, 4, 5]

# .sort, to order an array
irb(main):004:0> a = [ 3, 5, 1 ,8, 4, 7, 2, 6]
=> [3, 5, 1, 8, 4, 7, 2, 6]
irb(main):005:0> a.sort
=> [1, 2, 3, 4, 5, 6, 7, 8]
irb(main):006:0> a
=> [3, 5, 1, 8, 4, 7, 2, 6]

# .product returns an array that is a combination of all elements from all arrays.
irb(main):007:0> [1, 2, 3].product([4, 5])
=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]


# .each examples
# If no block is given, it returns an Enumerator
irb(main):008:0> a = [1, 2, 3]
=> [1, 2, 3]
irb(main):009:0> a.each
=> #<Enumerator: [1, 2, 3]:each>
irb(main):010:0> a.each{ |n| puts n }
1
2
3
=> [1, 2, 3]
irb(main):011:0> a.each { |n| puts n+2 }
3
4
5
=> [1, 2, 3]

# .map examples
# it returns "nil" after puts, but .each will keep return original array after puts
irb(main):012:0> a = [1, 2, 3]
=> [1, 2, 3]
irb(main):013:0> a.map
=> #<Enumerator: [1, 2, 3]:map>
irb(main):014:0> a.map { |n| puts n }
1
2
3
=> [nil, nil, nil]
irb(main):015:0> a.map { |n| puts n+2 }
3
4
5
=> [nil, nil, nil]
# it returns the modified value
irb(main):016:0> a.map { |n| n**2 }
=> [1, 4, 9]
# use each for iteration and map for transformation.


# Arrays excercise 1
arr = [1, 3, 5, 7, 9, 11]
number = 3
arr.each do |num|
  if num == number
    puts "#{number} is in the array"
  end
end
if arr.include?(number)
  puts "#{number} is indeed in the array"
end

# excercise 2
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
   arr.first.delete(arr.first.last)
   => 1
   arr = [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   => [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
   arr.first.delete(arr.first.last)
   => [1, 2, 3]
   arr = [["b"], ["a", [1, 2, 3]]]

# exercise 3
arr = [["test", "hello", "world"], ["example", "mem"]]
arr.last.first
=> "example"

# exercise 4
arr = [15, 7, 18, 5, 12, 8, 5, 1]
1. arr.index(5)
   => 3
   # to return index of number 5
2. arr.index[5]
   => undefined method '[]'
3. arr[5]
   => 8
   # to return the number of 5th index

# exercise 5
string = "Welcome to America!"
a = string[6]
=> "e" 
b = string[11]
=> "A" 
c = string[19]
=> nil

# exercise 6
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
=> "jody"
names = ["bob", "joe", "susan", "jody"]

# exercise 7
things = ["pencil", "cell phone", "speaker", "glue gel"]
things.each_with_index { |val, idx| puts "#{idx+1}: #{val}"}

# exercise 8
arr1 = [2, 4, 6, 8, 10]
arr2 = arr1.map do |n|
  n + 2
end
p arr1
p arr2
# ex 8 answer
arr = [1, 2, 3, 4, 5]
new_arr = []
arr.each do |n|
  new_arr << n + 2
end

p arr
p arr_new


# Hash,a data structure that stores items by associated keys
# a key-value pair, using symbols as keys and any data types as values by curly braces {}
irb(main):057:0> person = { height: '6 ft', weight: '160 lbs' }
=> {:height=>"6 ft", :weight=>"160 lbs"}
irb(main):058:0> person[:hair] = 'brown'
=> "brown"
irb(main):059:0> person
=> {:height=>"6 ft", :weight=>"160 lbs", :hair=>"brown"}
irb(main):060:0> person[:age] = 62
=> 62
irb(main):061:0> person
=> {:height=>"6 ft", :weight=>"160 lbs", :hair=>"brown", :age=>62}
irb(main):062:0> person.delete(:age)
=> 62
irb(main):063:0> person
=> {:height=>"6 ft", :weight=>"160 lbs", :hair=>"brown"}
irb(main):064:0> person[:weight]
=> "160 lbs"
irb(main):065:0> new_hash = {name: 'roy'}
=> {:name=>"roy"}
irb(main):066:0> person.merge!(new_hash)
=> {:height=>"6 ft", :weight=>"160 lbs", :hair=>"brown", :name=>"roy"}
irb(main):067:0> person.each { |key, value| puts "Roy's #{key} is #{value}" }
Roy's height is 6 ft
Roy's weight is 160 lbs
Roy's hair is brown
Roy's name is roy
=> {:height=>"6 ft", :weight=>"160 lbs", :hair=>"brown", :name=>"roy"}


# When deciding whether to use a hash or an array, ask yourself a few questions:
# Does this data need to be associated with a specific label? If yes, use a hash. If the data doesn't have a natural label, then typically an array will work fine.
# Does order matter? If yes, then use an array. As of Ruby 1.9, hashes also maintain order, but usually ordered items are stored in an array.
# Do I need a "stack" or a "queue" structure? Arrays are good at mimicking simple "first-in-first-out" queues, or "last-in-first-out" stacks.
irb :001 > {"height" => "6 ft"}     # string as key
=> {"height"=>"6 ft"}
irb :002 > {["height"] => "6 ft"}   # array as key
=> {["height"]=>"6 ft"}
irb :003 > {1 => "one"}             # integer as key
=> {1=>"one"}
irb :004 > {45.324 => "forty-five point something"}  # float as key
=> {45.324=>"forty-five point something"}
irb :005 > {{key: "key"} => "hash as a key"}  # hash as key
=> {{:key=>"key"}=>"hash as a key"}

# .has_key? example
irb :001 > name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
=> {"Bob"=>42, "Steve"=>31, "Joe"=>19}
irb :002 > name_and_age.has_key?("Steve")
=> true
irb :003 > name_and_age.has_key?("Larry")
=> false
# .select for hash example
irb :004 > name_and_age.select { |k,v| k == "Bob" }
=> {"Bob"=>42}
irb :005 > name_and_age.select { |k,v| (k == "Bob") || (v == 19) }
=> {"Bob"=>42, "Joe"=>19}
# .fetch example
irb(main):013:0> name_and_age.fetch("Steve")
=> 31
irb(main):014:0> name_and_age.fetch("Larry")
KeyError: key not found: "Larry"
	from (irb):14:in fetch
	from (irb):14
  from /usr/bin/irb:11:in <main>

# .to_a(returns an array version of your hash when called.) example
irb(main):015:0> name_and_age.to_a
=> [["Bob", 42], ["Steve", 31], ["Joe", 19]]
irb(main):016:0> name_and_age
=> {"Bob"=>42, "Steve"=>31, "Joe"=>19}
# only want keys or values only
irb(main):017:0> name_and_age.keys
=> ["Bob", "Steve", "Joe"]
irb(main):018:0> name_and_age.values
=> [42, 31, 19]

# Hashes exercise 1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
immediate = family.select { |k,v| k == :sisters || k == :brothers }
new_array = immediate.values.flatten

# exercise 2
hash_1 = {one: 1, two: 2, three: 3}
hash_2 = {four: 4, five: 5, six: 6}
puts hash_1.merge(hash_2) # both hash_1 and hash_2 keep its original hash
puts hash_1
puts hash_2
puts hash_2.merge!(hash_1) # hash_2 merged with hash_1, hash_1 has no change
puts hash_1
puts hash_2


# exercise 3
opposites = {positive: "negative", up: "down", right: "left"}
opposites.each_keys { |key| puts key }
opposites.each_values { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

opposites.keys.each { |key| puts key }
opposites.values.each { |value| puts value }


# exercise 4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

# exercise 5
person.has_value?("painting") # => True
if person.has_value?("painting")
  puts "Good Job!"
else
  puts "Sad!"
end

# exercise 6
x = "hi there"
my_hash = {x: "some value"} # => key is symbol
my_hash2 = {x => "some value"} # => key is a variable of the string

# exercise 7
# NoMethodError: undefined method `keys' for Array
# B: no method called keys for array objects

# exercise 8
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {} 
words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else 
    result[key] = [word]
  end

  result.each_value do |v|
    puts "-------"
    p v
  end



# Launch School 3/15/2020
# Regex
# the =~ operator to see if we have a match in our regular expression.
irb :001 > "powerball" =~ /b/
=> 5 # the letter "b" locate at 5th index in a string "powerball"
# Since 5 is a truty value(i.e., in Ruby, 5 evaluates to true), we can use it as a boolean to check for matches. (ref: boolean_regex.rb)

# =~ operator also can use the match method to perform regex compararison
irb(main):001:0> /b/.match("powerball")
=> #<MatchData "b">
irb(main):002:0> /b/.match("hockey")
=> nil


# Ruby standard classes
# Math
irb(main):001:0> Math.sqrt(400)
=> 20.0 
irb(main):003:0> Math::PI
=> 3.141592653589793

# Use Time class to calculate what specific day July 4th occurred in 2008
irb(main):004:0> t = Time.new(2008, 7, 4)
=> 2008-07-04 00:00:00 +0800
irb(main):006:0> t.monday?
=> false
irb(main):007:0> t.friday?
=> true


# Variables as pointers
# To understand the difference in the above two code snippets, you need to understand that variables are pointers to physical space in memory. 
# Variables are essentially labels we create to refer to some physical memory address in your computer
irb(main):001:0> a = "hi there"
=> "hi there"
irb(main):002:0> b = a
=> "hi there"
irb(main):003:0> a = "not here"
=> "not here"
irb(main):004:0> b
=> "hi there"
# "not here" is a completely different memory address we reassigned to a, so b is not influented.

irb(main):005:0> a = "hi there"
=> "hi there"
irb(main):006:0> b = a
=> "hi there"
irb(main):007:0> a << ", Bob"
=> "hi there, Bob"
irb(main):008:0> b
=> "hi there, Bob"
# a << ", Bob" did not result in reassigning a to a new string.
# It mutated the caller and modified the existing string which is also pointed to b.
# It mutate the actual addess space in memory

#If you call a method that mutates the caller, it will change the value in that address space, and any variables also pointing there will be affected.


irb(main):013:0> a = [1, 2, 3, 3]
=> [1, 2, 3, 3]
irb(main):014:0> b = a
=> [1, 2, 3, 3]
irb(main):015:0> c = a.uniq
=> [1, 2, 3]
irb(main):004:0> a
=> [1, 2, 3, 3]
irb(main):005:0> b
=> [1, 2, 3, 3]
irb(main):006:0> c
=> [1, 2, 3]
# No change for a, b, c
irb(main):007:0> c = a.uniq!
=> [1, 2, 3]
irb(main):008:0> a
=> [1, 2, 3]
irb(main):009:0> b
=> [1, 2, 3]
irb(main):010:0> c
=> [1, 2, 3]
# a, b, c were all changed

irb(main):001:0> def test(a) 
irb(main):002:1> a.map{|letter| "I like the letter: #{letter}"}
irb(main):003:1> end
=> :test
irb(main):004:0> b = ['a', 'b', 'c']
=> ["a", "b", "c"]
irb(main):005:0> c = b
=> ["a", "b", "c"]
irb(main):006:0> test(b)
=> ["I like the letter: a", "I like the letter: b", "I like the letter: c"]
irb(main):007:0> b 
=> ["a", "b", "c"]
irb(main):008:0> c 
=> ["a", "b", "c"]
# .map will not change the variables
irb(main):001:0> def test(a) a.map!{|letter| "I like the letter: #{letter}"} end
=> :test
irb(main):002:0> b = ["a", "b", "c"]
=> ["a", "b", "c"]
irb(main):003:0> c = b
=> ["a", "b", "c"]
irb(main):004:0> test(b)
=> ["I like the letter: a", "I like the letter: b", "I like the letter: c"]
irb(main):005:0> b
=> ["I like the letter: a", "I like the letter: b", "I like the letter: c"]
irb(main):006:0> c
=> ["I like the letter: a", "I like the letter: b", "I like the letter: c"]
#.map! change the variables


# Blocks and Procs
# Blocks, like parameters, can be passed into a method just like normal variables. 
# The ampersand (&) in the method definition tells us that the argument is a block. (ref: passing_block.rb)
# Procs are blocks that are wrapped in a proc object (ref: proc_example.rb)
# Ruby has an Exception class that makes handling these errors much easier. It also has a syntactic structure using the reserved words begin, rescue, and end to signify exception handling. (ref: exception_example.rb)
# Rescue reserved word in-line (ref: inline_exception_example.rb)
# We can also rescue pre-existing errors when we are writing our code. (ref: divide.rb)

# Some other common built-in error types you may encounter are:
StandardError
TypeError
ArgumentError
NoMethodError
RuntimeError
SystemCallError
ZeroDivisionError
RegexpError
IOError
EOFError
ThreadError
ScriptError
SyntaxError
LoadError
NotImplementedError
SecurityError
# ref: greeting.rb


# More stuff exercise 1
def test(a)
  puts a if a =~ /lab/
end

test("laboratory")
test("experiment")
test("Pans Labyrinth")
test("elaborate")
test("polar bear")

# exercise 2
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
=> #<Proc:0x00007fb31884af58@(irb):4>
# Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object.

# exercise 3
=> solve the program is halted by errors 
# It is a way of handling the error by changing the flow of control without exiting the program entirely.

# exercise 4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


# exercise 5
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
# lack of & => (&block)


#EXERCISE
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


# EXERCISE
irb(main):001:0> arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
=> ["snow", "winter", "ice", "slippery", "salted roads", "white trees"]
irb(main):002:0> arr.delete_if {|word| word.start_with?("s", "w")}
=> ["ice"]
irb(main):003:0> arr
=> ["ice"]

#EXERCISE
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a.map {|word| word.split}.flatten 
=> ["white", "snow", "winter", "wonderland", "melting", "ice", "slippery", "sidewalk", "salted", "roads", "white", "trees"]

#EXERCISE
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

contact_item = [:email, :address, :phone]

loop do 
    contacts["Joe Smith"][contact_item.first] = [contact_data.first]
    contact_item.shift
    contact_data.shift
    break if contact_data == [] || contact_item == []
end

p contacts

# better solution
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

items = [:email, :address, :phone]
contacts.each do |string, hash|
  items.each do |item|
    hash[item] = contact_data.shift
  end
end

p contacts

# advanced exercise
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

items = [:email, :address, :phone]
contacts.each_with_index do |(string, hash), idx|
  items.each do |item|
    hash[item] = contact_data[idx].shift
  end
end 

p contacts