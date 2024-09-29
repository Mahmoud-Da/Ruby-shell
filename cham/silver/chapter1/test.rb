def add(a, b)
 puts a + b
end

add(1, 3) #=> 4

def mutiple a, b 
  puts a * b
  
end

mutiple 2, 3 #=> 6

p "============1==============="
class Hoge
  def test
    @@name = "lili"
    p "test"
  end

  def test2
   p @@name
  end
end

hoge = Hoge.new
hoge.test

p "============2==============="
# def user_name
#   first_name

#   p first_name
# end  #=> エラー

p "============3==============="
# クラス変数とインスタント変数の違い
class Car
  # クラス変数：すべてのインスタンスで共有される
  @@total_cars = 0
  
  def initialize(make, model)
    # インスタンス変数：各インスタンス固有の変数
    @make = make
    @model = model
    @@total_cars += 1
  end
  
  # インスタンスメソッド：車のメーカーとモデルを取得する
  def details
    "Make: #{@make}, Model: #{@model}"
  end
  
  # クラスメソッド：車の総数を取得する
  def self.total_cars
    @@total_cars
  end
end

# Carクラスのインスタンスを作成
car1 = Car.new("Toyota", "Corolla")
puts car1.details  # 出力: Make: Toyota, Model: Corolla
puts Car.total_cars # 出力: 1


car2 = Car.new("Honda", "Civic")
# インスタンス変数にアクセスして情報を表示
puts car2.details  # 出力: Make: Honda, Model: Civic
# クラス変数にアクセスして総数を表示
puts Car.total_cars # 出力: 2

