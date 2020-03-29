#Print Me (Part 1)
def print_me
  puts "I'm printing withing the method!"
end

print_me

#Print Me (Part 2)
def print_me
  return "I'm printing withing the return value!" #return can be omiited
end

puts print_me

#Greeting Through Methods (Part 1)
def hello
  "Hello"
end

def world
  "World"
end

puts hello + " " + world
puts "#{hello} #{world}" #We can utilize #{} to print method

#Greeting Through Methods (Part 2)
def hello
  "Hello"
end

def world
  "World"
end

def greeting
  hello + ' ' + world #You can define a new method by old method you defined previously
end

puts greeting

#Make and Model
def car(a, b)
  puts a + " " + b #Or you can use puts "#{a} #{b} which is only available when using puts"
end

car('Toyota', 'Corolla')

#Day or Night?
def time_of_day
  daylight = [true, false].sample
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day
#Launch School Solution
def time_of_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)

#Naming Animals
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

#Name Not Found
def assign_name(name = 'Bob')
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

#Multiply the Sum
def add(a, b)
  a + b
end

def multiply(a, b)
  a * b
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

#Random Sentence
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(a, b)
  a + " went " + b + " today!"
end

puts sentence(name(names), activity(activities))

