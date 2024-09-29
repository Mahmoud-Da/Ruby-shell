# 設計図のことをクラス、「もの」のことをインスタンスと呼びます
# クラスは「class クラス名」とすることで定義できます。
# クラス名は必ず大文字で始めることと、「end」を書く必要があること
# Menuクラスを定義
class Menu

end


# インスタンス変数
class Menu  
  attr_accessor :name
  attr_accessor :price
end


# クラスの呼び方
sushi_menu = Menu.new 

sushi_menu.name = "寿司"
sushi_menu.price = "1000"

puts sushi_menu.name #=> 寿司
puts sushi_menu.price #=> 1000


pizza_menu = Menu.new 
pizza_menu.name = "ピザ"
pizza_menu.price = "800"


# Menuクラスの中身でメソッド定義
class Menu  
  attr_accessor :name
  attr_accessor :price

  def info
    puts "料理名は#{self.name}、値段#{self.price}"
  end
end

pizza_menu = Menu.new 
pizza_menu.name = "ピザ"
pizza_menu.price = "800"
pizza_menu.info

# get_total_priceメソッドを定義
class Menu  
  attr_accessor :name
  attr_accessor :price

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

pizza_menu = Menu.new 
pizza_menu.name = "ピザ"
pizza_menu.price = 800
pizza_menu.get_total_price(4) #=> 3100



# initializeメソッドを定義
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

pizza_menu = Menu.new 
pizza_menu.info #=> 料理名はビザ、値段800


sushi_menu = Menu.new(name:"すし",price:1000)

puts sushi_menu.info #=> 料理名はすし、値段1000

