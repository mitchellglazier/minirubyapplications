

#first_number
def first_num
  puts "what number should we start with?"
  @first = gets.to_f
  operator_operation
end
# operator
def operator
  puts "What operator should we use? (+ - * / %)"
    puts "1) +"
    puts "2) -"
    puts "3) *"
    puts "4) /"
    puts "5) %"
end

def operator_operation
    operator
    choice = gets.to_i
    case choice
    when 1
      add_number
    when 2
      subtract_number
    when 3
      multiply_number
    when 4
      divide_number
    when 5
      get_remainder
    else
      puts "Invalid operator"
      operator_operation
    end

end
# second number
def add_number
  puts "What is the next number?"
  @proximo = gets.to_f
  puts "calculating..."
  sleep(2)
  puts @first + @proximo
  @first = @first + @proximo
end

def subtract_number
  puts "What is the next number?"
  @proximo = gets.to_f
  puts "calculating..."
  sleep(2)
  puts @first - @proximo
  @first = @first - @proximo
end

def multiply_number
  puts "What is the next number?"
  @proximo = gets.to_f
  puts "calculating..."
  sleep(2)
  puts @first * @proximo
  @first = @first * @proximo
end

def divide_number
  puts "What is the next number?"
  @proximo = gets.to_f
  puts "calculating..."
  sleep(2)
  puts @first / @proximo
  @first = @first / @proximo

end

def get_remainder
  puts "What is the next number?"
  @proximo = gets.to_f
  puts "calculating..."
  sleep(2)
  puts @first % @proximo
  @first = @first * @proximo
end

first_num

while true
  operator_operation
end
