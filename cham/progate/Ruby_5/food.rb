require "./menu.rb"

class Food < Menu
  # Menuのインスタンスに加えてcalorieを追加
  attr_accessor :calorie

  def initialize(name:, price:, calorie:)
    super(name: name, price: price)
    self.calorie = calorie
  end

  def info
    "#{self.name} #{self.price}円 (#{self.calorie}kcal)"
  end
  
  def calorie_info
    "#{self.name}は#{self.calorie}kcalです"
  end
end
