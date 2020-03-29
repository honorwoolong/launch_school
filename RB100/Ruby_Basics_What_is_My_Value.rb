#Part 1
7 
#reassinment operators like +=, does not mutate a variable; instead, it bind the variable to a new object
#numbers in Ruby are immutable

#Part 2
7
# In def method, a is not the same as outside local variables a which is self-contained with respect to local variables.
# Thus, it is identical to part 1

#Part 3
7
# the local variable a at the top level is not visible inside my_value because method definitions are self-contained with respect to local variables.

#Part 4
"Xy-zy"
# strings are mutable and String#[]= is a mutating method

# Part 5
"Xyzzy"
#"=" is assigning directly which never changes the value of an object; instead, it creates a new object and stores a reference
#So, at the end of my_value, b references the string 'yzzyX', while a remains unchanged: it still references "Xyzzy".

#Part 6
error
#No define a in the def method, it can not find local variable a
#a is defined before my_value is defined, but it is not visible inside my_value
#Local variables initialized inside the method definition are not visible outside the method definition, and local variables initialized outside the method definition are not visible inside the method definition.
#Note that local variables will be visible (via closures) inside blocks, procs and lambdas.

#Part 7
3
#Outside local variables are visible to blocks, so a can be modified by block

#Part 8
error
# No local variable a was defined
# There is no local variable named a initialized in a scope external to the scope of that block, the expression a = element on line 4 is initialization and not reassignment.

#Part 9
7
#Shadowing demonstration, occurs when a block argument hide a local variable that is defined outside the block
#Outer a is a shadowed, the a += 1 has no effect on it.

#Part 10
error
# No defined local variables a inside my_value. a at the top level is not visible to the method