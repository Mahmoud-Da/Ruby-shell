# メソッドの書き方
# 方法１
def add(a, b)
  puts a + b
end
 
add(1, 3) #=> 4


# 方法2
def mutiple a, b 
  puts a * b
end

mutiple 2, 3 #=> 6


# p メソッド　表示（デバッグ）
# puts メソッド 表示 (画面）
# 例
p "test" #=> "test"
puts "test" #=> test

class Hoge
  def test
    p "test"
  end
end

hoge = Hoge.new
hoge.test #=> "test"

# 変数の命名
# ローカル変数の先頭が
# 1- アンダースコア「_」=> _name
# 2- 英文字 => hoge
#

# 変数の種類
# "ローカル変数"
# 命名原則: 先頭: 英文字または_      (name, _name)
#         構造文字: 英文字または_   (full_name)
#         
# スコープ: 最初に代入式が使用された位置から、その代入を含め
# 　　　　　プロックまたはメソッド終わるまでに
#　 
# 初期されてない時に紹介した場合の動作:
# *参照箇所より前に、代入文字が記述してあるか実行されなかった場合
# *nil または代入文字が記述されていない場合は例外発生 「(NameError)」
# 
#"グローバル変数"
# 命名原則: 先頭: $ ($API)    
# 構造文字: 英文字または_

# スコープ: どちらも参照可能（メソッド外でも内でも）

# 初期されてない時に紹介した場合の動作:
# *nil
# 
# "クラス変数"
# 命名原則: 先頭: @@    (@@first_name) 
#         構造文字: 英文字または_

# スコープ: そのクラス全てインスタンスから参照可能

# 初期されてない時に紹介した場合の動作:
# *例外発生「(NameError)」
# "インスタンス変数"
# 命名原則: 先頭: @  (@first_name)     
#         構造文字: 英文字または_

# スコープ:そのクラスの全インスタンスから参照可能 

# 初期されてない時に紹介した場合の動作:
# *nil
# 
# "定数"
# 命名原則: 先頭: 英大文字  (APP_NAME)
#         構造文字: 英文字または_

# スコープ:定数が定義されたクラス・モジュール内、そのクラス、モジュール内側で定義されたクラス・モジュール
# ない、およびそのクラス・モジュールを継承またはインクレードしているモジュール内
# クラス名やモジュール名修飾すれば、外部からアクセス可能

# 初期されてない時に紹介した場合の動作:
# *例外発生「(NameError)」

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


# 定数のスコープ
module MyModule
  # 定数：このモジュール内で定義されている
  CONST = "This is a constant"

  class MyClass
    # クラス内で定数にアクセス
    def show_constant
      CONST
    end
  end
end

# クラス内から定数にアクセス
puts MyModule::MyClass.new.show_constant  # 出力: This is a constant

# モジュール名を使って外部から定数にアクセス
puts MyModule::CONST  # 出力: This is a constant
