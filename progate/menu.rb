require 'date'

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

    total_price -= 100 if count >= 1 && Menu.is_discount_day?

    total_price
  end

  def self.is_discount_day?
    today = Date.today
    today.sunday?
  end
end

#########################
# Dateクラスとクラスメソッド
########################

# requireを用いて、Dateクラスを読み込んでください
require 'date'

# 変数birthdayに、Dateクラスのインスタンスを代入してください
birthday = Date.new(2001, 0o3, 13)

# 変数birthdayをputsしてください
puts birthday

# 変数birthdayにsunday?メソッドを用いた結果をputsしてください
puts birthday.sunday?

# 変数todayに、Date.todayの戻り値を代入してください
today = Date.today

# 変数todayをputsしてください
puts today

# 変数todayに対してsunday?メソッドを用いた結果をputsしてください
puts today.sunday?
