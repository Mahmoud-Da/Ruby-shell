require './menu'

class Food < Menu
  attr_accessor :calorie

  def initialize(name:, price:, calorie:)
    super(name: name, price: price)
    self.calorie = calorie
  end

  def info
    "#{name} #{price}円 (#{calorie}kcal)"
  end

  def calorie_info
    "#{name}は#{calorie}kcalです"
  end
end
