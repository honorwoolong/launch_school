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


# EXERCISE
numbers = []

while numbers.length < 5
    numbers << rand(100)
end
# rand(max) will provide random number < max
puts numbers


numbers = [7, 9, 13, 25, 18]

count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end