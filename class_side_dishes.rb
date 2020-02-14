class SideDish
  attr_accessor :name, :cost, :number
  def initialize(name,cost,number)
    @name = name
    @cost = cost
    @number = number
  end
  
  def list_side_dish
    puts "#{number}). #{@name} ----- #{cost}"
  end
end


sidedish1 = SideDish.new('Peas',"$1.00",1)
sidedish2 = SideDish.new('Carrots',"$2.00",2)
sidedish3 = SideDish.new('Salad',"$3.00",3)
sidedish4 = SideDish.new('Chocolate',"$5.00",4)
sidedish5 = SideDish.new('Rice',"$1.00",5)
sidedish6 = SideDish.new('Mashed Potatoes',"$2.00",6)
