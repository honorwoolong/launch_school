#Reading Error Messages
def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

#find_first_nonzero_among(0, 0, 1, 0, 2, 0) 
#input one argument only, but we gave it 6
#example.rb:1:in `find_first_nonzero_among': wrong number of arguments (given 6, expected 1) (ArgumentError)
find_first_nonzero_among([0, 0, 1, 0, 2, 0]) #Correction

#find_first_nonzero_among(1) 
#only 1 argument provided so no such error as above. However, as the program tried to evluate line 2 with given argunment, it raises a NoMethodError
#This is because the method parameter numbers is not bound to the provided argument 1 and tries to evaluate 1.each do...end. Since integers do not have a each method so raises a NoMethodError.
#example.rb:2:in `find_first_nonzero_among': undefined method `each' for 1:Integer (NoMethodError)
find_first_nonzero_among([1]) #Correction

#Wearther Forecast
def predict_weather
  #sunshine = ['true', 'false'].sample 
  #Because Sring is true, it should be Boolean value
  #Corrrection
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end


#Multiply By Five
def multiply_by_five(n)
  n * 5 #No print the value out
end

puts "Hello! Which number would you like to multiply by 5?"
#number = gets.chomp 
#gets will always be string after use input, need to transform it to integer
#Corrrection
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

#Pets
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

#pets[:dog] = 'bowser' 
#It will replace the current key-value, #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}
#Correction, use << or push adding 'bowser' to the array as the last
pets[:dog] << 'bowser' #or pets[:dog].push('bowser')

p pets 

#Even Numbers
numbers = [5, 2, 9, 6, 3, 1, 8]

#even_numbers = numbers.map do |n|
#map is to modify each values in the array and transform it to a new one, so we should use select
even_numbers = numbers.select do |n|
#  n if n.even? #It can be simplified
n.even?
end

p even_numbers # expected output: [2, 6, 8]

#Confucius Says
def get_quote(person)
  if person == 'Yoda'
    #'Do. Or do not. There is no try.' 
    return 'Do. Or do not. There is no try.' #add return to fix
  end

  if person == 'Confucius' #or elsif person == 'Confucious'
    #'I hear and I forget. I see and I remember. I do and I understand.' 
    return 'I hear and I forget. I see and I remember. I do and I understand.' #add return to fix
  end

  if person == 'Einstein' #or elsif person == 'Einstein'
    #'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.' #add return to fix
  end
end
#Since our original code did not have an explicit return statement, the return value is the evaluated result of the last line executed.
puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
p get_quote('Yoda') #=>nil
# When we passed 'Confucius' or 'Yoda' in as the argument, the condition person == 'Einstein' evaluated to false, so the last if statement evaluated to nil.
p get_quote('Einstein') #=> only last line executed so it returns values


#Account Balance
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  #balance = calculate_balance(month)
  #only march will be invoked with no increment balance
  #Correction
  balance += calculate_balance(month)
end

puts balance

#Colorful Things
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  #break if i > colors.length
  #color.length is 8, so it means break when i > 8. However, when i = 7, things already returned nil and report error
  #Correction
  break if i == things.length #or break if i >= color.length - 1 or break if i > things.length - 1
  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end
  i += 1
end

#Further exploration
#break if i == colors.length || i == things.length

#Digit Product
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  #product = 0
  product = 1 #1 multiply each number will be the same value

  digits.each do |digit|
    product *= digit #product = product * digit, so 0 * each number equals 0
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

#Warriors and Wizards
# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

#player.merge(character_classes[input]) 
#user input will be string so it must convert to symbol by #to_sym
#merge is not destructive method, so need to use merge! to mutate the caller
#Correction
player.merge!(character_classes[input.to_sym]) #or re-assign player directly, player = player.merge(character_classes[input.to_sym])

puts 'Your character stats:'
puts player
