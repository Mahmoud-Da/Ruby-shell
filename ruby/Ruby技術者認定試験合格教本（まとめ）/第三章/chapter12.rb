"プロックとProc"
# プロックはメソッドを呼び出すときのみ記述でき、メソッドの内部で、
# yieldという式を使用することでプロックの内部で記述した処理を呼び出すことができます。
def func x
  x + yield # プロックの実行結果を取得。ここは２
end

p func(1) # no block given (yield) (LocalJumpError)

"呼び方"
"{} => 一行の場合"
p func(1) { 2 } # 3 {x = 1, yield = 2}

"do end => 2行の場合"
func(1) do
  2
end # 3

"クロージャとしてのプロック"
# プロック内に変数を利用することが可能 （値ではなく変数そのもの[バインド変数 / bind variable]）
def func y
  y + yield
end

x = 2

p func(1) { x += 2} # => 5

p x # 4

"プロックと引数の指定"
def func a, b
  a + yield(b, 3)
end

p func(1, 2) {|x, y| x + y} #=> 6

"プロックの判定"
*block_given? # プロックが指定さらたかどうか判定する方法

def func
  return 1 if block_given?
  2
end
p func() {} #=> 1
p func #=> 2


"Proc"
# Procは、プロックをオプジェクト化したもの
proc = Proc.new{|x| p x}
proc.call(1) #=> 1


def get_counter start
  Proc.new{ |up| start += up}
end

count_up = get_counter(1) # 初期設定として１を設定。count_upはProcオプジェクトを参照

count_up.call(1) #=> 2 count_upの参照するプロックを実行

count_up.call(3) #=> 5 count_upの参照するプロックを実行

count_up.call(4) #=> 9 count_upの参照するプロックを実行

"Procからプロックへの変換"
def func x
  x + yield
end

proc = Proc.new{2}

func(1, &proc) # => 3 {「&」安全のためです。つまり、パラメータが存在しているなら} 

"プロックからProcへの変換"
def func x, &proc
  x + proc.call
end

func(1) do
  2
end #=> 3
