def prompt(str)
  puts "=> #{str}"
end

def valid_number?(num)
  num.to_i != 0
end

def op_print(op)
  case op
  when "1"
    "Adding"
  when "2"
    "Substracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

prompt("Welcome to Woolong Calculator!")

  name = nil
  loop do 
    prompt("What's your name?")
    name = gets.chomp
    if name.empty?
      prompt("Hmm...please provide it...")
    else
      break
    end
  end

  prompt("Hi! #{name}!!")

loop do 

  num_1 = nil
  loop do 
    prompt("Give 1st number!")
    num_1 = gets.chomp
    if valid_number?(num_1)
      break
    else
      prompt("It's not a valid number!")
    end
  end

  num_2 = nil
  loop do 
    prompt("Give 2nd number!")
    num_2 = gets.chomp
    if valid_number?(num_2)
      break
    else
      prompt("It's not a valid number!")
    end
  end

  op = nil
  operator_prompt = <<-MSG
  Do you want to add, substract, multiply or divide?
      1) Add
      2) Substract
      3) Multiply
      4) Divide
  MSG

  loop do 
    prompt(operator_prompt)
    op = gets.chomp
    if %w(1 2 3 4).include?(op)
      break
    else
      promp("Please check your option of operator!")
    end
  end

  result =  case op
            when "1"
              num_1.to_i + num_2.to_i
            when "2"
              num_1.to_i - num_2.to_i
            when "3"
              num_1.to_i * num_2.to_i
            when "4"
              num_1.to_f / num_2.to_f
            end

  prompt("#{op_print(op)} the two numbers...")
  prompt("The result is #{result}!!")
  
  prompt("Do you want to continue?(Y to continue calculating)")
  answer = gets.chomp
  if answer.downcase.start_with?('y')
    prompt("Let's keep going!")
  else
    break
  end
end

prompt("Goodbye! My Love!")