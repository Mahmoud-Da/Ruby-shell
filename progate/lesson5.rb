#################
# 継承
#################
# requireを使ってmenu.rbを読み込んでください
require './menu'

# Menuクラスを継承したFoodクラスをつくってください
class Food < Menu
end

# requireを使ってfood.rbとdrink.rbを読み込んでください
require './food'
require './drink'

# Foodクラスのインスタンスを生成して変数food1に代入してください
food1 = Food.new(name: 'ピザ', price: 800)
drink1 = Drink.new(name: 'コーラ', price: 300)
# food1に対してinfoメソッドを呼び出して戻り値を出力してください
puts food1.info

# Drinkクラスのインスタンスを生成して変数drink1に代入してください
drink1 = Drink.new(name: 'コーラ', price: 300)

# drink1に対してinfoメソッドを呼び出して戻り値を出力してください
puts drink1.info

# food1.calorieに「700」を代入してください
food1.calorie = 700

# food1.calorieを出力してください
puts food1.calorie

# drink1.amountに「500」を代入してください
drink1.amount = 500

# drink1.amountを出力してください
puts drink1.amount
