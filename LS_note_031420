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
