# RubyはWEBアプリケーションの「システム」をつくるためのプログラミング言語です。
#  似たような言語として、PHPやPythonといったものがあります。

# まずは、Rubyのコードを実行してみましょう。コンソールという部分に文字を出力（表示）します。
# 「puts "○○"」というRubyのコードを書くと、putsの後の○○という文字がコンソールに出力されます。
puts("Hello World")  #=> Hello World
puts "Hello World"   #=> Hello World
puts 'Hello World'   #=> Hello World

# コメントの書き方
# puts 'Hello World'


########################################
# 数値の扱い
puts 2 #=> 2
puts 2 + 3 #=> 5
puts 7 - 4 #=> 3

# 文字列と数値の違い
puts 5 + 2   #=> 7
puts "5 + 2" #=> "5 + 2"

# 掛け算は「*」(アスタリスク)、割り算は「/」(スラッシュ)という記号を用います。
# また「%」を用いると、割り算の余りを計算できます。
puts 5 * 3  #=> 15
puts 6 / 2  #=> 3
puts 9 % 2  #=> 1


# 文字列同士に「+」記号を用いると、文字列同士を連結することができます。
puts "にんちゃ" + "わんこ" #=> にんちゃわんこ
puts "3" + "5" #=> 35
puts 3 + 5 #=> 8

a = "3" + "5" #=> 35
a.class #=> String

# 変数とは、値を入れておく箱のようなものです。
# 「変数名 = 値」で定義します。
name = "john"

puts name #=> john
puts "name" #=> name

# プログラムが上から順に実行されます。
puts color
color = "Red" #=>　Main.rb:2:in `<main>': undefined local variable or method `color' for main:Object

# 変数を呼び出すと代入した値に「置き換わる」ので、文字列が入った変数は文字列とまったく同じように扱うことができます。
# 例えば文字列の連結であれば、文字列の入った変数と文字列の連結も、変数同士の連結も可能です。
text = "プログラミングを学ぼう"

# 文字列「Progateで」と変数textを連結して、出力してください
puts "Progateで" + text #=> Progateでプログラミングを学ぼう

length = 8
width = 9

# 変数lengthと変数widthを掛けて出力してください
puts length*width #=> 72

# なぜ変数を使うのか：
# 同じ要素を繰り返し使える
# 変更に対応しやす
# 何の要素がわかりやすい

# 変数textに「をマスターしよう」を代入してください
text = "をマスターしよう"

# 下記の文字列に変数textを連結してください
puts "HTML" + text
puts "CSS" + text
puts "Ruby" + text

# 変数は、一度代入した値を変更することもできます
number = 7 
puts number #=> 7
number = 9 
puts number #=> 9


# 「numberに3を足して、再びnumberに代入することで実現できます。「=」の右側のnumberは値に置き換わり、
# 計算された結果が、左のnumberに代入されています。
number = 1
number = number + 3 #=> 4

# 「number = number + 3」といった書き方には、省略した書き方もあります。
number = 1 
number += 3 #=> 4

#   基本形　　　　          省略形
# x = x + 10            x += 10
# x = x - 10            x -= 10
# x = x * 10            x *= 10
# x = x / 10            x /= 10
# x = x % 10            x %= 10

# #{変数名}とすることで、変数を代入している値に置き換えて、文字列に含めることができます。
age = 13
puts "年齢は#{age}です" #=> 年齢は13です


# 変数展開をする際は注意点があります。
# 実はダブルクォーテーションを使った文字列の場合しか変数展開はされません。
# シングルクォーテーションの場合は、変数展開が行われず、そのまま文字列として出力されてしまうので注意しましょう。
age = 13
puts '年齢は#{age}です' #=> 年齢は#{age}です


=begin
if 分岐の書き方

if 条件式
  処理
end
=end

# 条件は成り立ち、処理が実行されています。
score = 81

if score > 80
  puts "よくできました"
end

#=> よくできました
# 条件は成り立たなかったら、何も処理されないです。

score = 12

if score > 80
  puts "よくできました"
end
#=> 何も出力しません

# 先ほどのif文の条件式の部分を出力してみると、「true」が出力されています。
score = 81

puts score > 80 #=> true  (条件は成り立ち)
puts score < 80 #=> false (条件は成り立たない)

if true
  puts "よくできました"
end
#=> よくできました
#
# 大小比較
# a < b  「a」の方が「b」より小さいとき「true」
# a =< b　「a」の方が「b」小さいまた等しいとき「true」
# a > b　「b」の方が「a」より小さいとき「true」
# a => b　「b」の方が「a」よ小さいまた等しいとき「true」
# a == b 「a」 と　「b」 が等しいとき「true」
# a != b 　「a」 と　「b」 が異なるとき「true」

score = 100

# scoreの値が100の場合、「満点です」と出力してください
if score == 100
  puts "満点です"
end
#=> 満点です
# scoreの値が100でない場合、「満点ではありません」と出力してください
if score != 100
  puts "満点ではありません"
end
#=> 何も出力しません

# if文の条件がfalseの場合、elseの処理が実行されます。
=begin
if / else 分岐の書き方

if 条件式
  処理 <----- 条件式が「true」の場合は実行
else
  処理 <----- 条件式が「false」の場合は実行
end
=end

score = 60

# 条件式が成り立たない場合に「がんばりましょう」と出力されるように書き換えてください
if score > 80
  puts "よくできました"
else
  puts "がんばりましょう"
end

#=> がんばりましょう


=begin
if / elsif / else 分岐の書き方

if 条件式
  処理 <----- 条件式1が「true」の場合は実行
elsif 条件式
  処理 <----- 条件式1が「false」で、
             条件式2が「true」の場合は実行
else
  処理 <----- 条件式が「false」の場合は実行
end
=end

score = 73

# scoreの値が60より大きい場合に「まずまずです」と出力されるように書き換えてください
if score > 80
  puts "よくできました"
elsif score >60
  puts "まずまずです"
else
  puts "がんばりましょう"
end

#=> まずまずです

# かつ - &&
# true && true  ----------> true
# true && false ----------> false
# false && true  ---------> false
# false && false ---------> false

# true || true  ----------> true
# true || false ----------> true
# false || true  ---------> true
# false || false ---------> false
score = 96

if score >= 95 && score <= 99
  puts "高得点です！次は満点を目指いしましょう"
end

#=> 高得点です！次は満点を目指いしましょう


# 課題
# 　3の倍数かつ5の倍数（= 15の倍数）結果： 15の倍数です
# ・5の倍数　結果： 5の倍数です
# ・3の倍数 結果： 3の倍数です

