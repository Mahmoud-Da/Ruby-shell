"メソッド"
# 定義
def <メソッド> <パラメーター>
end

# 実行
<メソッド>.<引数>


"例"
# 定義
def foo a, b
  a + b
end

# 実行しかた
# カッコつけなくてもok
foo 1, 2 #=> 3
foo(1, 2) #=> 3

"実引数/実引数"
# 実引数：メソッドを実行する際に利用する引数
# 実引数：デフォルトの引数

def foo (a, b = 100) #=> 100(仮引数)
  a + b
end

foo(2, 3) #=> 5 (3:実引数)
foo(1) #=> 101
foo #=> ArgumentError

"キーワード引数を用いたメソッドの定義"
def foo(a: ,b:100)
  a + b
end

foo(a: 2, b: 3) #=> 5
foo(a: 1) #=> 101
foo #=> ArgumentError
foo(a: 2, c: 100) #=> ArgumentError

"キーワード引数に任意の引数を使用する"
def bar(a:, b:100, **z)
  p z
  a + b
end
bar(a: 2,c: 100, d: 200) #= 102 コンソール表示{:c=>100, :d=>200}

"論理値"
true # 真の代表値
false / nil # 以外のオプジェクトは全て真と見なされる

"条件分岐"
# 書き方(1)
if "条件" then # then キーワードは optional
  "処理"
else
  "処理"
end

# 書き方(2)
if "条件"
  "処理"
else
  "処理"
end

# 書き方(3)
if "条件" ; "処理" ; end

"例"
# 1
if true then
  p 1
end

# 2
if true
  p 1
end

# 3
if true ; p 1; end
"if式を評価した値"
a = if true
  1
end

p a  #=> 1

"if修飾子"
a = 1 if true 
p a #=> 1
a = 2 if false #=> (a= falseまたはnil)
p a #=> 1

"条件が成立しない場合"
nil # 条件成立しない場合
# 1
b = 3 if false
p b #=> nil

# 2
a = 10
p a if a  #=> 10
p @a if @a  #=> nil

"ifとelsif"
a = if false
  1
elsif false 
  2
else
  3
end

p a #=> 3

"unless式"
a = unless false
  1
end

p a #=> 1

"条件演算子"
a = true ? 1 : 2
p a #=> 1

b = false ? 1 : 2
p a #=> 2


"疑似変数"
true # TrueClassのインスタンス
false # FalseClassのインスタンス
nil # NilClassのインスタンス
self # 現在のオプジェクト
__FILE__ # 現在実行しるプログラムのファイル名
__LINE__ # 現在実行しるプログラムの行番号
__FILE__ # 現在実行しるのソースファイルのScriptエンコーデング


"論理演算子"
# 左式の結果が確定されたら、右式の結果が評価しない
if true && true ; 1; end #=> 1
if nil && 10 ; 1; end #=> nil
if false || true ; 1; end #=> 1
if true || nil ; 1; end #=> 1
if !true ; 1; end #=> nil

"論理演算子を適用した式の評価値"
a = nil && 1 #=> nil
a = nil || 1 #=> 1
a = 1 || 2 #=> 1


"論理演算子の自己代入"
b = b && 1 #=> nil (bは代入されてないから)
b = b || 1 #=> 1
c ||=  1 #=> 1

"andの優先度"
p 1 && 2 # 出力2
#結果 => 2
p 1 and 2
# 出力 1
#結果 => 2

