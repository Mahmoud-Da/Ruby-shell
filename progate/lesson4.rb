######################
# クラスとインスタンス
######################
# Menuクラスを定義してください
class Menu1
end

# Ruby method that is used to define getter and setter methods for instance variables of a class. It automatically generates the methods for reading
# (getter) and writing (setter) the values of the specified instance variables.
class Menu
  # nameとpriceというインスタンス変数を用意してください
  # attr_accessor
  attr_accessor :name
  attr_accessor :price
end
# rubocop:disable all
# without using attr_accessor
class Menu2
  def name
    @name
  end

  def name=(value)
    @name = value
  end

  def price
    @price
  end

  def price=(value)
    @price = value
  end
end
# rubocop:enable all
# Menuクラスのインスタンスを生成して変数menu1に代入してください
menu1 = Menu.new

menu1.name = 'ピザ'
puts menu1.name

# menu1のpriceに「800」を代入してください
menu1.price = 800

# menu1のpriceを出力してください
puts menu1.price

# Menuクラスのインスタンスを生成して変数menu2に代入してください
menu2 = Menu.new

# menu2のnameに「すし」を代入してください
menu2.name = 'すし'

# menu2のnameを出力してください
puts menu2.name

# menu2のpriceに「1000」を代入してください
menu2.price = 1000

# menu2のpriceを出力してください
puts menu2.price

###################
# インスタンスメソッド
###################
class Menu2
  attr_accessor :name1, :price1

  # initializeメソッドを定義してください
  def initialize
    self.name = 'ピザ'
    self.price = 800
  end

  # infoメソッドを定義してください
  def info
    puts '料理名と値段が表示されます'
  end

  def info2
    # 文字列「料理名と値段が表示されます」をreturnしてください
    '料理名と値段が表示されます'
  end

  def info3
    # 「#{}」の中身を埋めてください
    "#{name} #{price}円"
  end

  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    total_price = price * count
    total_price -= 100 if count >= 3
    total_price
  end
end

menu1 = Menu2.new
menu1.name1 = 'トマト'
menu1.price1 = 700

# menu1に対してinfoメソッドを呼び出してください
menu1.info

# menu1に対してinfo2メソッドを呼び出して戻り値を出力してください
puts menu1.info2

# menu1に対してinfo3メソッドを呼び出して戻り値を出力してください
puts menu1.info3

# menu1に対してget_total_priceメソッドを呼び出してください
puts menu1.get_total_price(3)

menu2 = Menu.new
# menu1に対してinfoメソッドを呼び出して戻り値を出力してください
puts menu2.info

# initialize self parameter
class Menu4
  attr_accessor :name, :price

  # initializeメソッドを書き換えてください
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
end

# 引数を渡してインスタンスを生成してください
menu1 = Menu4.new(name: 'すし', price: 1000)

puts menu1.info

########################
# 「料理注文システム」を作ろう
#########################

require './menu1'

menu1 = Menu.new(name: 'ピザ', price: 800)
menu2 = Menu.new(name: 'すし', price: 1000)
menu3 = Menu.new(name: 'コーラ', price: 300)
menu4 = Menu.new(name: 'お茶', price: 200)

menus = [menu1, menu2, menu3, menu4]

index = 0
menus.each do |menu|
  puts "#{index}. #{menu.info}"
  index += 1
end

puts '--------------'
puts 'メニューの番号を選択してください'
order = gets.chomp.to_i

selected_menu = menus[order]
puts "選択されたメニュー: #{selected_menu.name}"

puts '個数を入力してください(3つ以上で100円割引)'
count = gets.chomp.to_i

puts "お会計は#{selected_menu.get_total_price(count)}円です"
