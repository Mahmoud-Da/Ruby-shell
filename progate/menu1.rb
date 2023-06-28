class Menu
  attr_accessor :name, :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    "#{name} #{price}円"
  end

  def get_total_price(count)
    total_price = price * count
    total_price -= 100 if count >= 3
    total_price
  end
end
