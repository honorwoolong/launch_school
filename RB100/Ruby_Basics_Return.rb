#Breakfast, Lunch, or Dinner? (Part 1)
Breakfast #every method returns the evaluated result, or return value, of the last line that is executed.

#Breakfast, Lunch, or Dinner? (Part 2)
Evening #It's the only line in the method

#Breakfast, Lunch, or Dinner? (Part 3)
Breakfast #return exits the method
#when return is executed, it tells the method to end, which means anything after that line won't be processed.

#Breakfast, Lunch, or Dinner? (Part 4)
Dinner #About puts, the printed value and the return value are not the same.
Breakfast #there are two #puts which means there will be more than one value printed.

#Breakfast, Lunch, or Dinner? (Part 5)
Dinner
Nil #return value of #puts is always nil
#we use #p so that nil is visible in the output

#Breakfast, Lunch, or Dinner? (Part 6)
Breakfast #return exits the method
#return immediately exits the method and returns the provided value.

#Counting Sheep (Part 1)
0 #from #times block
1 #from #times block
2 #from #times block
3 #from #times block
4 #from #times block
5 #return value which is also the last line evaluated, which was called by outer #puts

#Counting Sheep (Part 2)
0 #from #times block
1 #from #times block
2 #from #times block
3 #from #times block
4 #from #times block
10 #Integer#times is no longer the last line in count_sheep. Instead, 10 is the return value of count_sheep because it's the last line evaluated.

#Counting Sheep (Part 3)
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return #nothing behind return so the value >= 2 will return nil
    end
  end
end

p count_sheep #nil is visible for #p

#answer
0
1
2
nil

#Tricky Number
def tricky_number
  if true #below variable assignment must be executed due to it is true
    number = 1 #It still returns => 1
  else
    2
  end
end

puts tricky_number

#answer
1 #ignore else and variable assginment still returns value so the answer is 1