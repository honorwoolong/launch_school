#New Pet
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2]
puts "I have a pet #{my_pet}"

#More Than One
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2, 3]
puts "I have a pet #{my_pet[0]} and a pet #{my_pet[1]}"

#Free the Lizard
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2, 3]
my_pet.pop
puts "I have a pet #{my_pet[0]}!"

#One Isn't Enough
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2, 3]
my_pet.pop
my_pet << pets[1] #or use my_pets.push(pets[1])
puts "I have a pet #{my_pet[0]} and a pet #{my_pet[1]}!"

#What Color Are You?
colors = ['red', 'yellow', 'purple', 'green']
colors.each do |color| #Array#each to iterate over an array and print each element. 
  puts "I'm the color #{color}!"
end

#Doubled
numbers = [1, 2, 3, 4, 5]
double_numbers = numbers.map { |num| num * 2 }
#Array#map which iterates over an array and returns a new array with each element transformed based on the block's return value. This means we can assign the return value of #map to a variable to use at a later time.
p double_numbers

#Divisible by Three
numbers = [5, 9, 21, 26, 39]
divisible_by_three = numbers.select do |number|
                       number % 3 == 0
                     end

p divisible_by_three
#the main difference between #map and #select is the way the new element's value is chosen. 
##map returns a new array with each element transformed based on the block's return value.
##select returns a new array containing elements selected only if the block's return value evaluates to true.

#Favorite Number (Part 1)
list = [["Dave", 7], ["Miranda", 3], ["Jason", 11]]
list[0][1] #If we wanted to print 7 in the first array of nested array.

#Favorite Number (Part 2)
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
flat_favorite = favorites.flatten #apply with no matter how many levels of nested array

p flat_favorite

#Are We The Same?
array1 = [1, 5, 9]
array2 = [1, 9, 5]

p array1.eql?(array2)
p array1 == array2
#Note that == treats two Arrays as equal if they contain the same number of elements, and each element in one Array is equal to the corresponding element in the second Array.