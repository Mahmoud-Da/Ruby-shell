class Menu  
  attr_accessor :name
  attr_accessor :price

  def initialize(name: "ビザ", price: "800") 
    self.name = name
    self.price = price
  end

  def info
    "料理名は#{self.name}、値段#{self.price}"
  end

  def get_total_price(count)
    total_price = self.price * count

    # 3 以上item以上購入すると100引き
    if count >= 3
      total_price -= 100
    end
    

    total_price
  end
end
