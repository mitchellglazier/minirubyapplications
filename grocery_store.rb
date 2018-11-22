@cart = []
@item = [
  { name: "Apples", price: 1.99 },
  { name: "Cupcakes", price: 2.20 },
  { name: "Bread", price: 5.00 },
  { name: "Ribs", price: 12.99 },
  { name: "Jerkey", price: 3.99 }
]
@card_balance = 15.25
@sales_tax = 0.07

def menu
  puts "Welcome to The Grocery Store"
  puts "1) Fill Up Your Cart"
  puts "2) View Your Cart"
  puts "3) Take Things Out Of Cart"
  puts "4) Check Out"
  puts "5) Exit"
end

#defining a method for clicking the options
def user_selection
  menu
  choice = gets.to_i
  case choice
  when 1
    add_items
  when 2
    view_cart
  when 3
    remove_items
  when 4
    check_out
  when 5
    puts "Thank you, come again!"
    exit
  else
    puts "Invalid Choice Try Again"
    sleep(2)
  end
end

def add_items
  puts "What Would You Like to Buy?"
  @item.each_with_index do |item, i|
    puts "#{i + 1}) #{item[:name]} - $#{item[:price]}"
  end
  choice = gets.to_i
  @cart << @item[choice -1]
  puts "Your Item Has Been Added To The Cart!"
end

def view_cart
  puts "Here's Whats In Your Cart!"
  @cart.each_with_index do |item, i|
    puts "#{i + 1}) #{item[:name]} - $#{item[:price]}"
  end
    def current_total
      @total = @cart.inject(0) {|sum, hash| sum + hash[:price]}
      puts "Your current total is #{@total}, before tax!"
    end
    current_total
end

def remove_items
  puts "What Would You Like to Remove?"
  @cart.each_with_index do |item, i|
    puts "#{i + 1}) #{item[:name]} - $#{item[:price]}"
  end
  choice = gets.to_i
  @cart.delete(@cart[choice -1])
end
#This is working right
def check_out
  @cart.each_with_index do |item, i|
    puts "#{i + 1}) #{item[:name]} - $#{item[:price]}"
  end
    def tally_up
      @total = @cart.inject(0) {|sum, hash| sum + hash[:price]}
      @totalWithTax = @total * @sales_tax
      puts "You owe us #{@totalWithTax}!"
      sleep(2)
    end
    def payment
      if TotalWithTax >= @card_balance
        puts "Your transaction has been declined"
        remove_items
      else
        puts "Thank you for shopping at The Grocery Store"
        exit
    end
  end
  tally_up
  payment
end

while true
  user_selection
end
