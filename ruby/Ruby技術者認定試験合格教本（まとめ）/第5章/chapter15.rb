"Proc"
# Procクラスは、プロックを実行時にのローカル変数のスクープなどのコンテクストと共にオプジェクト化した、
# 手続きオブジェクトを扱うクラスです。
# この手続きオプジェクトは、命名のない関数（無名関数）のように使うことができる。
# この手続きを実行するには、callメソッドを使う

"手続きオプジェット"
*call # 続きを実行する
f = Proc.new { puts "ok" }
# => #<Proc:0x000000010136dce0 (irb):1>
f.call
# ok
#=> nil

"引数をとる手続きオプジェクト"
*arity # 生成された手続きオプジェクトの引数の数を取得
f = Proc.new {|str| puts str } #=> #<Proc:0x000000010140d9e8 (irb):3>
f.arity #=> 1
f.call("NG") # NG 

"実行時のコンテキスト"
i = 30
j = 40
f = Proc.new { puts i + j } #=> #<Proc:0x0000000104277ea0 (irb):11>
f.call #70
i = 100
f.call #140

"プロック付きのメソッドの引数として利用する"
# プロック付きのメソッドの引数を渡すために、変数名の前に「&」を指定して渡します。
f = Proc.new {|i| puts i } #=> #<Proc:0x00000001044318e0 (irb):15>

3.times(&f)
# 0
# 1
# 2
# => 3

"手続きオプジェクトの中での処理の中断"
# 手続きオプジェクトの中での処理の中断して、呼び出し元へ値を戻すには、「break、return」ではなく、「next」を利用する
f = Proc.new {
  next "next"
  "last"
} #=> #<Proc:0x00000001042bd798 (irb):17>


f.call #=> "next"

"Proc以外の手続きオプジェクト生成"
# 手続きオプジェクトするには、Proc.new以外にはkarnelモジュールのlambdaメソッドとprocメソッドがあります。
# これらは同じような振る隣いの手続きオプジェクトを生成しますが、
# いくつかの場面で振る隣いが異なります。

1* # 手続き右オブジェクトにおける引数の数
# lambdaメソッドやprocメソッド： 引数の数がいなるとArgumentErrorが発生します。
# Proc.new： 引数の数がいなるとの多重代入のようになるため、エラーとはなりません

f = Proc.new { |a, b, c| p a, b, c }
f.call(1, 9)
# 1
# 9
# nil
# => [1, 9, nil]
g = lambda { |a, b, c| p a, b, c }
g.call(1, 9) # `block in <top (required)>': wrong number of arguments (given 2, expected 3) (ArgumentError)

2* # 手続きオプジェクトの中でジャンプ構文(1)
# lambdaメソッドやprocメソッド： break利用すると手続きオプジェクトから抜けます。
# Proc.new： break利用すると「Local Jump error 」

f = Proc.new { break }
f.call #`block in <top (required)>': break from proc-closure (LocalJumpError)

g = lambda { break }
g.call #=> nil

3* # 手続きオプジェクトの中でジャンプ構文(2)
# lambdaメソッドやprocメソッド： return利用すると手続きオプジェクトから抜けます。
# Proc.new： return利用すると「Local Jump error 」
f = Proc.new { return }
f.call #`block in <top (required)>': unexpected return (LocalJumpError)

def foo
  Proc.new {
    return 1
  }.call
  return 2
end #=> :foo

foo #=> 1

g = lambda { return }
g.call #=> nil
