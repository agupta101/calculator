def add(num1, num2)
  return num1.to_i + num2.to_i
end

def subtract(num1, num2)
  return num1.to_i-num2.to_i
end

def multiply(num1, num2)
  return num1.to_i*num2.to_i
end

def divide(num1, num2)
  return num1.to_i/num2.to_i
end

def square(num1)
  return num1.to_i*num1.to_i
end

def exponent(base, exponent)
  return base.to_i**exponent.to_i
end

def sqrt(num1)
  return Math.sqrt(num1.to_i)
end

def log(num1, base)
  return Math::log(num1.to_i)/Math::log(base.to_i)
end

def which_operation
  puts "What operation would you like to perform: addition, subtraction, multiplication, division, squaring, raising to an exponent, square root, or logarithm?"
  operation = gets.chomp
  if operation == "addition"
    puts "What is one number you would like to add?"
    num1 = gets.chomp
    puts "What is the other number you would like to add?"
    num2 = gets.chomp
    if num1.to_i.to_s == num1 && num2.to_i.to_s == num2
      puts add(num1, num2)
    else 
      puts "Sorry. Please try again with valid numeric entries."
    end
  elsif operation == "subtraction"
    puts "What is the number you would like to subtract from (e.g. x in x-y)?"
    num1 = gets.chomp
    puts "What is the number you would like to subtract (e.g. y in x-y)?"
    num2 = gets.chomp
    if num1.to_i.to_s == num1 && num2.to_i.to_s == num2
      puts subtract(num1, num2)
    else 
      puts "Sorry. Please try again with valid numeric entries."
    end
  elsif operation == "multiplication"
    puts "What is one number you would like to multiply?"
    num1 = gets.chomp
    puts "What is the other number you would like to multiply?"
    num2 = gets.chomp
    if num1.to_i.to_s == num1 && num2.to_i.to_s == num2
      puts multiply(num1, num2)
    else 
      puts "Sorry. Please try again with valid numeric entries."
    end
  elsif operation == "division"
    puts "What is the dividend of the equation you would like to divide?"
    num1 = gets.chomp
    puts "What is the divisor of the equation you would like to divide?"
    num2 = gets.chomp
    if num1.to_i.to_s == num1 && num2.to_i.to_s == num2
      puts divide(num1, num2)
    else 
      puts "Sorry. Please try again with valid numeric entries."
    end
  elsif operation == "squaring"
    puts "What number would you like to square?"
    num1 = gets.chomp
    if num1.to_i.to_s == num1
      puts square(num1)
    else
      puts "Sorry. Please try again with a valid numeric entry."
    end
  elsif operation == "logarithm"
    puts "What number would you like to take a logarithm of?"
    num1 = gets.chomp
    puts "What number would you like to use as the base for the logarithm?"
    base = gets.chomp
    if num1.to_i < 0 || base.to_i < 0 
      puts "Sorry. Please try again with numbers you can ACTUALLY use for logarithms. How about positive ones? That would be great, thanks."
    elsif num1.to_i.to_s == num1 && base.to_i.to_s == base
      puts log(num1, base)
    else
      puts "Sorry. Please try again with valid numeric entries."
    end
  elsif operation == "square root"
    puts "What number would you like to square root?"
    num1 = gets.chomp
    if num1.to_i < 0
      puts "Sorry. Please try again with a number you can ACTUALLY SQUARE ROOT. How about a positive one? That would be great, thanks."
    elsif num1.to_i.to_s == num1
      puts sqrt(num1)
    else
      puts "Sorry. Please try again with a valid numeric entry."
    end
  elsif operation == "raising to an exponent"
    puts "What number would you like to raise to the exponent (the base of the exponent)?"
    base = gets.chomp
    puts "What number would you like the exponent to be?"
    power = gets.chomp 
    if base.to_i.to_s == base && power.to_i.to_s == power
      puts exponent(base, power)
    else 
      puts "Sorry. Please try again with valid numeric entries."
    end
  else 
    puts "Not a valid operation."
  end
end

puts which_operation