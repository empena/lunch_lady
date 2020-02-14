class MainDish
  attr_accessor :name, :cost, :number
  def initialize(name,cost,number)
    @name = name
    @cost = cost
    @number = number
  end
  
  def list_main_dish
    puts "#{number}). #{@name} ----- #{cost}"
  end
end

maindish1 = MainDish.new('Meatloaf',"$9.00",1)
maindish2 = MainDish.new('Veggie Soup',"$6.00",2)
maindish3 = MainDish.new('Barbecue Chicken',"$8.00",3)
