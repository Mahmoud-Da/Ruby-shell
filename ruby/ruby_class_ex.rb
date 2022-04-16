class VendingMachine
  def initialize
    @drinks = ["Coke", "Water", "Orange Juice", "Tea"]
  end

  def choose_drink(wanted_drink)
    drink_is_available = false
    @drinks.each do | drink |
      drink_is_available = true if wanted_drink == drink
    end

    if drink_is_available
      puts "You chose #{wanted_drink}"
    else
      puts "#{wanted_drink} is unavailable"
    end
  end

  def purchase
    "Purchased"
  end

  def show_available_drinks
    puts "The available drinks are:"
    @drinks.each do | drink |
      puts drink
    end
  end
end

vending_machine = VendingMachine.new
vending_machine.choose_drink("Water")
vending_machine.choose_drink("Apple Juice")
vending_machine.purchase
vending_machine.show_available_drinks
