def add(num1, num2)
  return num1+num2
end

def subtract(num1, num2)
  return num1-num2
end

def multiply(num1, num2)
  return num1*num2
end

def divide(num1, num2)
  return num1/num2
end

def square(num1)
  return num1*num1
end

puts "What operation would you like to perform: addition, subtraction, multiplication, division, or squaring?"

def which_operation
  operation = gets.chomp
  if operation == "addition"
    puts "What is the first number you would like to add?"
    num1 = gets.chomp
    puts "What is the second number you would like to add?"
    num2 = gets.chomp
    puts add(num1, num2)
  elsif operation == ""
    