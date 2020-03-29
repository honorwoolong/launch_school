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