require_relative 'class_side_dishes'
require_relative 'class_main_dishes'
require_relative 'class_user'

class LunchLady
  def initialize()
    @main_dishes = [
      { dish: "Meatloaf", price: "$5.00" },
      { dish: "Veggie Soup", price: "$5.00" },
      { dish: "Barbecue Chicken", price: "$5.00" }]
    @side_dishes1 = [
      { dish: "Carrots", price: "$5.00" },
      { dish: "Peas", price: "$5.00" },
      { dish: "Rice", price: "$5.00" }]
    @side_dishes2 = [
      { dish: "Salad", price: "$5.00" },
      { dish: "Mashed Potatoes", price: "$5.00" },
      { dish: "Chips", price: "$5.00" }]
    @dishes_ordered = []
    @total_ordered = []
    @user_name = []
    @user_money = []
    puts "Welcome to Ruby Diner, press S to start ordering."
    input = gets.strip
    if input == 's'
      puts "First let's get some info about you."
    else
      puts "Try again"
      exit
    end
    user_info
  end

  def user_info
    puts "-----------------------------------"
    puts "What is your name?"
      name = gets.chomp
      @user_name.push(name)
      @user_name.each do |name| puts "\nThanks #{name}!"
      end
      puts "-----------------------------------"
      puts "How much money do you have?"
      money = gets.strip.to_i
      @user_money.push(money)
      @user_money.each do |amount| puts "\n$#{amount} it is."
      end
      puts "-----------------------------------"
      puts "Now let's order some food."
    order_main_dish
  end

  def order_main_dish
    puts "-----------------------------------------"
    puts "Main Dishes - Choose ONE of the following"
    puts "-----------------------------------------"
    @main_dishes.each do |food| puts "#{food[:dish]} --- #{food[:price]}"
    end
    mdish = gets.chomp
    @dishes_ordered = [mdish]
    order_side_dish1
    end
  end
  
    def order_side_dish1
      puts "-----------------------------------------"
      puts "Side Dishes - Choose ONE of the following"
      puts "-----------------------------------------"
      @side_dishes1.each do |food| puts "#{food[:dish]} --- #{food[:price]}"
      end
      sdish1 = gets.chomp
      @dishes_ordered.push(sdish1)
      order_side_dish2
    end

    def order_side_dish2
      puts "-----------------------------------------"
      puts "Side Dishes - Choose ONE of the following"
      puts "-----------------------------------------"
      @side_dishes2.each do |food| puts "#{food[:dish]} --- #{food[:price]}"
      end
      sdish2 = gets.chomp
      @dishes_ordered.push(sdish2)
      order_total
    end

    def order_total
      puts "-------------------------"
      puts "Your final order includes:"
      puts "-------------------------"
      @dishes_ordered.each do |dishes| puts @dishes_ordered
      puts "-------------------------"
      puts "Total price $15.00"
      puts "-------------------------"
      puts "Thanks for ordering!"
      exit
    end
      LunchLady
end
LunchLady
LunchLady.new()