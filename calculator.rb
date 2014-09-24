def get_user_input
  puts "*******************************************"
  puts "    Type  in expression to be evaluated,"
  puts "        enter 'end' when finished:"
  puts "              INPUT EXAMPLE:"
  puts " 1 'enter' + 'enter' 5 'enter' end 'enter' "
  puts "*******************************************"
  input_array = Array.new
  while (entry = gets.chomp) != "end"
    input_array << entry
  end
  return input_array
  # puts input_array
end

def add(first_number, second_number)
  first_number + second_number
end

def subtract(first_number, second_number)
  first_number - second_number
end

def multiply(first_number, second_number)
  first_number * second_number
end

def divide(first_number, second_number)
  first_number / second_number
end

def calculate_output(input_array)
  puts "\nCalculations start:"
  running_total = input_array[0].to_f

  for i in (1..(input_array.length - 1)/2)
    n = 2*i - 1
    operator = input_array[n]
    number = input_array[n + 1].to_f
    puts operator
    puts number

    if operator == "+"
      running_total = add(running_total, number)
    elsif operator == "-"
      running_total = subtract(running_total, number)
    elsif operator == "*"
      running_total = multiply(running_total, number)
    elsif operator == "/"
      running_total = divide(running_total, number)
    end
    puts "running total: " + running_total.to_s + "\n-----"
  end
  puts "\n"
  return running_total
end

user_input = get_user_input
result = calculate_output(user_input)

puts "RESULT: " + result.to_s
