# 1
hoge = "a".to_h
puts hoge.class

# 選択肢
# 選択肢
# Stringと表示される

# 選択肢
# Arrayと表示される

# 選択肢
# Hashと表示される 

# 選択肢
# エラーになる


#Memo
#　to_f  => to_f 
# to_i => integer
# to_s => string
# to_c => Complex      以下の形式を解析できます。i、j は大文字、小文字のどちらでも解析できます。 (実部+虚部(Real part + Imaginary part)i / 実部+虚部j / 絶対値@偏角)
# to_r => Rational  有理数（ゆうりすう、英: rational number）とは、整数の比（英: ratio）として表すことができる実数のことである。 分母・分子ともに整数の分数（分母≠0）として表すことができる実数との説明もされる。 整数は、分母が 1 の分数と考えることにより、有理数の特別な場合となる。
# to_h => Hash

# calling the to_h method on a string will return an empty hash. The to_h method is used to convert an object into a hash data structure. 



# 2
# 次のメタ文字の説明で誤っているものを選択肢の中から選びなさい。

# . 改行以外の任意の1文字にマッチする。ただしオプションmの指定によって複数行モードの場合は改行にもマッチする。
# [] []内のいずれかの1文字
# [^..] どの文字でもない
# a-z aとzにマッチする   => ❌
# \w 英数字とアンダースコアにマッチする
# \W 英数字とアンダースコアではない文字にマッチする。(\w以外の1文字にマッチする)
# \s 空白文字にマッチする。(スペース、タブ、改行、復帰、垂直タブ)
# \S 空白文字ではない文字とマッチする。(\s以外の1文字)
# \d 0から9までの数字1文字にマッチする。
# \D 0から9までの数字ではない文字にマッチする。(\d以外の1文字)
# \A 文字列の先頭にマッチする。^とは違い改行の直後の文字ではない文字にマッチする。
# \z 文字列の末尾にマッチする。(改行含む)
# \Z 文字列の末尾にマッチする。(改行を含まない)



#Memo
# \t           水平タブ            horizontal tab (0x09)
# \v           垂直タブ            vertical tab   (0x0B)
# \n           改行                newline        (0x0A)
# \r           復帰                return         (0x0D)
# \b           バックスペース      back space     (0x08)
# \f           改ページ            form feed      (0x0C)
# \a           ベル                bell           (0x07)
# \e           エスケープ文字      escape         (0x1B)
# \nnn         符号化バイト値の8進数表現 (nnn の8進数3文字で表現)
# \xHH         符号化バイト値の16進数表現 (HH の16進数2文字で表現)
# \cx, \C-x    制御文字 (x は a から z までのいずれかの文字)
# \M-x         メタ (x|0x80)
# \M-\C-x      メタ制御文字
# \uHHHH       ユニコード文字 (HHHH の16進数4桁)
# \u{HHHHHH HHHHHH ....} ユニコード文字列 (HHHHHH は16進数1桁から6桁まで指定可能)









#3
# Hashクラスについて適切な記述を選びなさい（複数選択）

# 選択肢
# Hash({})で空のHashオブジェクトを生成できる 

# 選択肢
# to_hで配列からハッシュを生成できる

# 選択
# 選択肢
# mergeは破壊的メソッドである 

# 選択肢
# clearは非破壊的メソッドである












#4
#次のコードを実行するとどうなりますか

h = {a: 100, b: 200}
h.delete(:a)    
p h
# 選択肢
# {:a=>100, :b=>200}と表示される

# 選択肢
# {:a=>nil, :b=>200}と表示される

# 選択肢
# {:b=>200}と表示される =>　✅

# 選択肢
# エラーが発生する


#Memo 
# Arrayの時
# delete メソッドは一致する要素が削除されます。この時、一致する全ての要素が削除されることに注意してください。
fruits = ["apple", "orange", "banana", "kiwi","banana"]
p fruits
# bananaを指定して削除
fruits.delete("banana")
p fruits
# 実行結果は以下の通りです。

["apple", "orange", "banana", "kiwi", "banana"]
["apple", "orange", "kiwi"]

#Hashの時
h = {:ab => "some" , :cd => "all"}

p h.delete(:ab) #=> "some"
p h.delete(:ef) #=> nil
p h.delete(:ef){|key|"#{key} Nothing"} #=> "ef Nothing"

p h #=> {:cd=>"all"} 






# 5
# 次のコードを実行するとどうなりますか

s = ["one", "two", "three"]
s.shift
s.shift
s.unshift
s.push "four"
p s
# 選択肢
# ["three", "four"]と表示される　 =>　✅

# 選択肢
# [nil, "three", "four"]と表示される

# 選択肢
# ["one", "two", "three"]と表示される

# 選択肢
# ["one", "two", "three", "four"]と表示される



# Memo
#shift
a = [0, 1, 2, 3, 4]
p a.shift            #=> 0
p a                  #=> [1, 2, 3, 4]

p [].shift           #=> nil
p [].shift(1)        #=> []

#unshift
arr = [1,2,3]
arr.unshift #=> #引数がないとそのまま何もしない
p arr  #=> [1, 2, 3]
arr.unshift 0
p arr             #=> [0, 1, 2, 3]
arr.unshift [0]
p arr             #=> [[0], 0, 1, 2, 3]
arr.unshift 1, 2
p arr             #=> [1, 2, [0], 0, 1, 2, 3]









#6
# 以下の変数についての説明のうち、間違っているものをすべて選択してください

# 選択肢
# グローバル変数は$から始まる

# 選択肢
# クラス変数は@@から始まる

# 選択肢
# インスタンス変数は@から始まる

# 選択肢
# 定数は、アルファベット大文字を含んでればよい => ❌




# Memo
# ローカル変数
# 小文字または`_'で始まる識別子はローカル変数またはメソッド呼び出しです。
# ローカル変数スコープ(クラス、モジュール、メソッド定義の本体)における小文字で始まる識別子への最初の代入はそのスコープに属するローカル変数の宣言になります。
# 宣言されていない識別子の参照は引数の無いメソッド呼び出しとみなされます。
foobar

# インスタンス変数
# `@'で始まる変数はインスタンス変数であり、特定のオブジェクトに所属しています。インスタンス変数はそのクラスまたはサブクラスのメソッドから参照できます。
# 初期化されていないインスタンス変数を参照した時の値はnilです。
@foobar 

# クラス変数
# @@で始まる変数はクラス変数です。クラス変数はクラス定義の中で定義され、クラスの特異メソッド、インスタンスメソッドなどから参照／代入ができます。

# クラス変数と定数の違いは以下の通りです。

# 再代入可能(定数は警告を出す)
# クラスの外から直接参照できない(継承されたクラスからは参照／代入可能)
# クラス変数はクラス自身のインスタンス変数とは以下の点で異なります。

# サブクラスから参照／代入が可能
# インスタンスメソッドから参照／代入が可能
@@foobar

# グローバル変数
# $'で始まる変数はグローバル変数で、プログラムのどこからでも参照できます(その分、利用には注意が必要です)。
# グローバル変数には宣言は必要ありません。初期化されていないグローバル変数を参照した時の値はnilです。
$foobar

#擬似変数
# 通常の変数以外に擬似変数と呼ばれる特殊な変数があります。

self
# 現在のメソッドの実行主体。

nil
# NilClassクラスの唯一のインスタンス。 Object#frozen? は true を返します。

true
# TrueClassクラスの唯一のインスタンス。真の代表値。 Object#frozen? は true を返します。

false
# FalseClassクラスの唯一のインスタンス。nilとfalseは偽を表します。 Object#frozen? は true を返します。

__FILE__
# 現在のソースファイル名

# フルパスとは限らないため、フルパスが必要な場合は File.expand_path(__FILE__) とする必要があります。

__LINE__
# 現在のソースファイル中の行番号

__ENCODING__
# 現在のソースファイルのスクリプトエンコーディング

# 擬似変数の値を変更することはできません。擬似変数へ代入すると文法エラーになります。

# 定数
FOOBAR
ＦＯＯＢＡＲ

# アルファベット大文字 ([A-Z]) で始まる識別子は定数です。他にも、ソースエンコーディングが Unicode の時は Unicode の大文字またはタイトルケース文字から始まる識別子も定数です。
#  Unicode 以外の時は小文字に変換できる文字から始まる識別子が定数です。定数の定義 (と初期化) は代入によって行われますが、メソッドの中では定義できません。
# 一度定義された定数に再び代入を行おうとすると警告メッセージが出ます。定義されていない定数にアクセスすると例外 NameError が発生します。

# 定数はその定数が定義されたクラス/モジュール定義の中(メソッド本体やネストしたクラス/モジュール定義中を含みます)、
# クラスを継承しているクラス、モジュールをインクルードしているクラスまたはモジュールから参照することができます。
# クラス定義の外(トップレベル)で定義された定数は Object に所属することになります。






#7
# 次のコードを実行するとどうなりますか

arr = [1,2].zip([3,4])
p arr
# 選択肢
# [[1, 3], [1, 4], [2, 3], [2, 4]]と表示される

# 選択肢
# [[1, 3], [2, 4]]と表示される =>　✅

# 選択肢
# [1, 2]と表示される

# 選択肢
# [[1, 1, 2, 2], [3, 4, 3, 4]]と表示される



#Memo
p [1,2,3].zip([4,5,6], [7,8,9])
# => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]

p [1,2].zip([:a,:b,:c], [:A,:B,:C,:D])
# => [[1, :a, :A], [2, :b, :B]]

p [1,2,3,4,5].zip([:a,:b,:c], [:A,:B,:C,:D])
# => [[1, :a, :A], [2, :b, :B],
#     [3, :c, :C], [4, nil, :D], [5, nil, nil]]

p [1,2,3].zip([4,5,6], [7,8,9]) { |ary| p ary }
# => [1, 4, 7]
#    [2, 5, 8]
#    [3, 6, 9]
#    nil








#8
# 次のコードを実行するとどうなりますか

h = {a: 100, b: 200}
h.clear
p h
# 選択肢
# nilと表示される

# 選択肢
# {:a => nil, :b => nil}と表示される

# 選択肢
# {}と表示される =>　✅

# 選択肢
# エラーが発生する

#Memo
# 配列の要素をすべて削除して空にします。

ary = [1, 2]
ary.clear
p ary     #=> []






#9
Date.today.to_s#と同じ動作をするコードを選びなさい

#選択肢
Date.today.strftime("%y/%m/%d")

#選択肢
Date.today.strftime('%y-%m-%d') #=> ✅

#選択肢
Date.today.strftime("%Y/%m/%d")

#選択肢
Date.today.strftime("%Y-%m-%d")






#Memo
Date.today.to_s #=> "2023-07-30"

# strftime(format) -> String[permalink][rdoc][edit]
# 時刻を format 文字列に従って文字列に変換した結果を返します。
p t.strftime("%Y%m%d")           # => 20010203                  Calendar date (basic)
p t.strftime("%F")               # => 2001-02-03                Calendar date (extended)
p t.strftime("%Y-%m")            # => 2001-02                   Calendar date, reduced accuracy, specific month
p t.strftime("%Y")               # => 2001                      Calendar date, reduced accuracy, specific year
p t.strftime("%C")               # => 20 




#10
# 次のプログラムの実行結果として正しいものを選択してください。

arr = [
  true.equal?(true),
  nil.eql?(NilClass),   #=> false
  String.new.equal?(String.new), #=> false
  1.equal?(1)
]

p arr.collect { |a| a ? 1 : 2 }.inject(:+)
# 選択肢
# 実行時エラーになる

# 選択肢
# 6と表示される　#=> ✅

# 選択肢
# 5と表示される

# 選択肢
# 7と表示される


#Memo
# equalメソッド
# 二つのオブジェクトが同一のものかどうか調べる時に使用します。
# other が self 自身の時、真を返します。[PARAM] other:
# 比較するオブジェクトです。
# method is used to determine if two objects refer to the same memory location, i.e., 
# if they are the exact same object in memory. It is different from the == operator,
# which checks for the equality of the values of two objects.

p("foo".equal?("bar")) #=> false
p("foo".equal?("foo")) #=> false

p(4.equal?(4)) #=> true
p(4.equal?(4.0)) #=> false

p(:foo.equal? :foo) #=> true


#eqlメソッド
#オブジェクトと other が等しければ真を返します。Hash で二つのキーが等しいかどうかを判定するのに使われます。
# The eql? method is used for comparing the content or values of objects rather than their memory locations.
#  It is implemented differently by different classes.
#  For built-in Ruby classes like String, Array, Hash, etc., eql? behaves the same as the == operator.
p("foo".eql?("bar")) #=> false
p("foo".eql?("foo")) #=> true

p(4.eql?(4)) #=> true
p(4.eql?(4.0)) #=> false

#collectメソッド 
# 各要素に対してブロックを評価した結果を全て含む配列を返します。
# In Ruby, map and collect are two different names for the same method
# ブロックを省略した場合は Enumerator を返します。
# すべて 3 倍にした配列を返す
p (1..3).map {|n| n * 3 }  # => [3, 6, 9]
p (1..3).collect { "cat" } # => ["cat", "cat", "cat"]


#injectメソッド
# 合計を計算する。
p [2, 3, 4, 5].inject {|result, item| result + item }        #=> 14

# 自乗和を計算する。初期値をセットする必要がある。
p [2, 3, 4, 5].inject(0) {|result, item| result + item**2 }  #=> 54

result = 0
[1, 2, 3, 4, 5].each {|v| result += v }
p result   # => 15

p [1, 2, 3, 4, 5].inject(:+)                    #=> 15
p ["b", "c", "d"].inject("abbccddde", :squeeze) #=> "abcde"



#11
# 以下のコードを実行するとどうなりますか

X = 10
X = X < 10 ? "C" : "D"
puts X
# 選択肢
# 警告が表示される

# 選択肢
# Dが表示された後、警告が表示される

# 選択肢
# Dが表示される #=> ✅

# 選択肢
# エラーが発生する









#12
# 次のコードを実行するとどうなりますか

hoge = 0 
def hoge
  x = 0
  5.times do |i|
    x += 1
  end
  x
end
puts hoge
# 選択肢
# 4が表示される

# 選択肢
# 5が表示される

# 選択肢
# 例外が発生する

# 選択肢
# 0が表示される #=> ✅　　　 ローカル変数なので 



# 次のコードを実行するとどうなりますか

a = [1]
a[5] = 10
a.compact
p a
# 選択肢
# エラーが発生する

# 選択肢
# [1, 10]と表示される

# 選択肢
# [1, nil, nil, nil, nil, 10]と表示される #=> ⭕️ ✅ ⭕️

# 選択肢
# [1, 10, 10, 10, 10, 10]と表示される


#Memo
#compactメソッド
# compact は自身から nil を取り除いた配列を生成して返します。
#  compact! は自身から破壊的に nil を取り除き、変更が行われた場合は self を、そうでなければ nil を返します。
 
ary = [1, nil, 2, nil, 3, nil]
p ary.compact   #=> [1, 2, 3]
p ary           #=> [1, nil, 2, nil, 3, nil]
ary.compact!
p ary           #=> [1, 2, 3]
p ary.compact!  #=> nil


a = [1]
#result [1]
a[5] = 10
#[1, nil, nil, nil, nil, 10]
a.compact
# [1, 10]
p a
#[1, nil, nil, nil, nil, 10]






#14
# 実行してもエラーにならないコードを選べ

# 選択肢 => ✅
(1..10).each
.reverse_each
.each do |i|
  puts i
end

# 選択肢 => ✅
(1..10).each.
reverse_each.
each do |i|
  puts i
end

# 選択肢 => ✅
(1..10).each \
.reverse_each \
.each do |i|
  puts i
end

# 選択肢  => ✅
(1..10).to_a.each.
reverse_each.
each do |i|
  puts i
end

#Memo
a = [ "a", "b", "c" ]
a.reverse_each {|x| print x, " " }
# => c b a










#15
# 次のコードを実行するとどうなりますか

a1 = "abc"
a2 = 'abc'

print a1.equal? a2   
print a1 == a2
# 選択
# 選択肢
# falsetrueと表示される => ✅

# 選択肢
# truetrueと表示される

# 選択肢
# falsefalseと表示される

# 選択肢
# truefalseと表示される


#Memo
#print a1.equal? a2 => false 





#15
# XXXXに記述した場合に実行結果が30以上になるプログラムを選択してください。

a = [-1, 2, 3, 4, 5]
b = (4..6).to_a

puts XXXX
# 選択肢
a.inject(:+) + b.inject(:+) #=>28

# 選択肢
(a | b).inject(:-).abs + (a & b).inject(:+).abs #=> ✅ 30 

# 選択肢
(a | b).inject(:*) + b.inject(0) { |x, y| x + y ** 3 } #=> -315 

# 選択肢
((a || b).map(&:succ).inject(:*) * (a && b).inject(:*).abs2 + 29) #=> 29


#Memo
# abs メソッド
# self の絶対値を返します。


-12345.abs   # => 12345
12345.abs    # => 12345
-1234567890987654321.abs   # => 1234567890987654321

# abs2 メソッド
#自身の絶対値の 2 乗を返します。
2.abs2    # => 4
-2.abs2   # => 4
2.0.abs2  # => 4
-2.0.abs2 # => 4


#succ　メソッド
# self の「次の」文字列/数字を返します。
# succ と逆の動作をするメソッドはありません。また、succ という名前の由来は successor です。
p "aa".succ   # => "ab"

# 繰り上がり
p "99".succ   # => "100"
p "a9".succ   # => "b0"
p "Az".succ   # => "Ba"
p "zz".succ   # => "aaa"
p "-9".succ   # => "-10"
p "9".succ    # => "10"
p "09".succ   # => "10"

# アルファベット・数字とそれ以外の混在
p "1.9.9".succ # => # "2.0.0"

# アルファベット・数字以外のみ
p ".".succ     # => "/"
p "\0".succ    # => "\001"
p "\377".succ  # => "\001\000"


(a & b) #=> [4, 5] 共通

(a | b) #=> [-1, 2, 3, 4, 5, 6] unique elements from both arrays,

(a && b) #=> [4, 5, 6] Since a is a non-empty array and therefore truthy, the expression (a && b) will evaluate to the value of b, which is [4, 5, 6].

(a || b) #=> [-1, 2, 3, 4, 5] Since a is a non-empty array and therefore truthy, the expression (a || b) will evaluate to the value of a, which is [-1, 2, 3, 4, 5].







#17
# 次のコードを実行するとどうなりますか

h = {a: 100, b: 200}
p h.to_a
# 選択肢
[[:a, 100], [:b, 200]]#と表示される #=>  ✅

# 選択肢
[[:a, 200], [:b, 100]]#と表示される

# 選択肢
[[100, :a], [200, :b]]#と表示される

# 選択肢
[[100, :b], [200, :a]]#と表示される




#18
# 期待した出力結果になるようにXXXXに適切なコードを選べ

d = Date.new(2015, 1, 5)
puts d.strftime(XXXX)
# 出力結果
01/05/15
# 選択肢
"%x" #=> ✅  "%D"も同じ

# 選択肢
"%m/%d/%Y"

# 選択肢
"%m/%D/%y"

# 選択肢
"%M/%d/%y"









#19
# 次のコードを実行するとどうなりますか

str = "1;2;3;4"
p str.split(";")
# 選択肢
["1", "2", "3", "4"]#と表示される => ✅

# 選択肢
["4", "3", "2", "1"]#と表示される

# 選択肢
["1;2;3;4"]#と表示される

# 選択肢
# エラーが発生する


#Memo
# split メソッド
# 第 1 引数 sep で指定されたセパレータによって文字列を limit 個まで分割し、
# 結果を文字列の配列で返します。ブロックを指定すると、配列を返す代わりに分割した文字列でブロックを呼び出します。
p "   a \t  b \n  c".split(/\s+/) # => ["", "a", "b", "c"]

p "   a \t  b \n  c".split(nil)   # => ["a", "b", "c"]
p "   a \t  b \n  c".split(' ')   # => ["a", "b", "c"]   # split(nil) と同じ
p "   a \t  b \n  c".split        # => ["a", "b", "c"]   # split(nil) と同じ




#20
# 次のコードを実行するとどうなりますか

str = "Liberty Fish   \r\n"
str.chop
p str
# 選択肢
"Liberty Fish \r\n"#と表示される

# 選択肢
"Liberty Fish "#と表示される

# 選択肢
"Liberty Fish"#と表示される => ✅

# 選択肢
"Liberty Fish \r"#と表示される


# Memo
# chopメソッド
# 字列の最後の文字を取り除いた新しい文字列を生成して返します。ただし、文字列の終端が "\r\n" であればその 2 文字を取り除きます。

p "string\n".chop    # => "string"
p "string\r\n".chop  # => "string"
p "string".chop      # => "strin"
p "strin".chop       # => "stri"
p "".chop            # => ""










#21
# 次のコードの実行結果として正しいものを選択してください。

IO.read("text.txt", 3, offset = 1)
# [text.txtの内容]

# REx
# Silver
# REx
# Gold

# 選択肢
"REx\nSilver\nREx\n"#と表示される

# 選択肢
"Ex\n"#と表示される　　　=> ✅

# 選択肢
"REx"#と表示される

# 選択肢
"Silver\nREx\nGold\n"#と表示される



# Memo
# IO.read メソッド
# length バイト読み込んで、その文字列を返します。

# メソッド                      空のファイルに対して

IO.read(空ファイル)           ""
IO.read(空ファイル, length)   nil
IO.readlines(空ファイル)      []
IO.foreach(空ファイル)        何もしない


# "text.txt": This is the filename or path to the file you want to read from. In this case, 
# it's "text.txt", assuming there is a file named "text.txt" in the current working directory or the specified path.

# 3: This is the number of bytes to read from the file. In this case, it's 3, which means the method will read 3 bytes from the file.
  
# offset = 1: This is an optional argument that specifies the starting position from where the reading should begin.
# The default value is 0, but in this case, it's specified as 1, which means the reading will start from the second byte (since arrays in Ruby are zero-indexed).






# 22
# 以下のコード実行後の正しい表示結果を選べ。

a = [1, 2, 3, 5, 8]
b = [1, 3, 6, 7, 8]
c = false || true ? true && false ? a | b : a & b : b ;
p c
# 選択肢
エラーが発生する

# 選択肢
[1, 3, 8] => ✅

# 選択肢
[1, 3, 6, 7, 8]

# 選択肢
[1, 2, 3, 5, 8, 6, 7]

# Memo
# - false || true evaluates to true. This is because in a logical OR (||) operation, 
# if the left operand is true, there's no need to evaluate the right operand because the overall result will always be true.

# Next, we have true && false. This evaluates to false. In a logical AND (&&) operation,
#  if the left operand is false, there's no need to evaluate the right operand because the overall result will always be false.

# So, the ternary expression becomes: true ? false ? a | b : a & b : b. Since the condition true is true,
#  the result will be false ? a | b : a & b.

# Now, we have false ? a | b : a & b. Since the condition false is false, the result will be a & b.

# Finally, we have a & b, which performs the set intersection operation on arrays a and b.
#  It returns a new array containing elements that appear in both a and b.









# 23
# 次のコードを実行するとどうなりますか

def hoge(n)
  if n % 3 == 0
    "hello"
  elsif n % 5 == 0
    "world"
  end
end

str = ''
str.concat hoge(3)
str.concat hoge(5)

puts str
# 選択肢
# エラーが発生する

# 選択肢
"helloworld"# と表示される => ✅

# 選択肢
"worldhello"# と表示される

# 選択肢
""# と表示される


# Memo
# concat メソッド
# 配列 other を自身の末尾に破壊的に連結します。
array = [1, 2]
a     = [3, 4]
array.concat a
p array          # => [1, 2, 3, 4]
p a              # => [3, 4]       # こちらは変わらない


# other_arrays の要素を自身の末尾に破壊的に連結します。

# [PARAM] other_arrays:
# 自身と連結したい配列を指定します。

[ "a", "b" ].concat( ["c", "d"] ) #=> [ "a", "b", "c", "d" ]
[ "a" ].concat( ["b"], ["c", "d"] ) #=> [ "a", "b", "c", "d" ]
[ "a" ].concat #=> [ "a" ]

a = [ 1, 2, 3 ]
a.concat( [ 4, 5 ] )
a                                 #=> [ 1, 2, 3, 4, 5 ]

a = [ 1, 2 ]
a.concat(a, a)                    #=> [1, 2, 1, 2, 1, 2]








#24
# 次のコードを実行するとどうなりますか

str = "Liberty Fish   \r\n"
str.strip!
p str
# 選択肢
"Liberty Fish \r\n"と表示される

# 選択肢
"Liberty Fish "と表示される

# 選択肢
"Liberty Fish"と表示される

# 選択肢
"Liberty Fish \r"と表示される