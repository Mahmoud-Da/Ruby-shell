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
# delete Methodは一致する要素が削除されます。この時、一致する全ての要素が削除されることに注意してください。
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
# abs Method
# self の絶対値を返します。


-12345.abs   # => 12345
12345.abs    # => 12345
-1234567890987654321.abs   # => 1234567890987654321

# abs2 Method
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
# split Method
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
# IO.read Method
# length バイト読み込んで、その文字列を返します。

# Method                      空のファイルに対して

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
# concat Method
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
"Liberty Fish"と表示される #=> ✅

# 選択肢
"Liberty Fish \r"と表示される


#Memo
# strip Method
# 文字列先頭と末尾の空白文字を全て取り除いた文字列を生成して返します。空白文字の定義は " \t\r\n\f\v" です。また、
# 文字列右側からは "\0" も取り除きますが、左側の "\0" は取り除きません。

p "  abc  \r\n".strip    #=> "abc"
p "abc\n".strip          #=> "abc"
p "  abc".strip          #=> "abc"
p "abc".strip            #=> "abc"
p "  \0  abc  \0".strip  # => "\000  abc"   # 右側のみ "\0" も取り除く

str = "\tabc\n"
p str.strip              #=> "abc"
p str                    #=> "\tabc\n" (元の文字列は変化しない)


# strip! Method
# 内容を変更した self を返します。ただし取り除く空白がなかったときは nil を返します。
str = "  abc\r\n"
p str.strip!     #=> "abc"
p str            #=> "abc"

str = "abc"
p str.strip!     #=> nil
p str            #=> "abc"

str = "  \0  abc  \0"
str.strip!
p str            # => "\000  abc"   # 右側の "\0" のみ取り除かれる






# 25
# クラスの定義で正しいものを選んでください。

# 選択肢
class(MyModule) do

end
# 選択肢
class(MyModule) {

}
# 選択肢
module MyModule

end
# 選択肢  => ✅
class MyModule  

end








#26
# 次のプログラムの実行結果として正しいものを選択してください。

class Foo
  attr_accessor :a
end

foo = Foo.new
foo.a = "REx"
puts foo.a
# 選択肢
nilと表示される

# 選択肢 => ✅
RExと表示される

# 選択肢
NoMethodErrorが発生する

# 選択肢
NameErrorが発生する


#Memo
attr_accessor
# インスタンス変数 name に対する読み取りメソッドと書き込みメソッドの両方を定義します。

class User
  attr_accessor :name # => [:name, :name=]
  # 複数の名前を渡すこともできる
  attr_accessor :id, :age # => [:id, :id=, :age, :age=]
end

# このメソッドで定義されるメソッドの定義は以下の通りです。
def name
  @name
end
def name=(val)
  @name = val
end

# Rubyでは、以下のコードのように記述してクラス外部からインスタンス変数にアクセスしようとすると、「インスタンス変数にアクセスするためのメソッドが定義されていない」というエラーが発生します。

# これにより、クラス外部からのインスタンス変数の参照や変更が出来ません。
class User
  def initialize(name, age)
    @name = name
    @age = age
  end
end

tanaka = User.new('田中太郎', 18)
tanaka.name
# => undefined method `name' for #<User:0x00007fd0f5880658 @name="田中太郎", @age=18> (NoMethodError)

tanaka.age = 33
# => undefined method `age=' for #<User:0x00007fc289084730 @name="田中太郎", @age=18> (NoMethodError)

# しかし、以下のコードのようにattr_accessorメソッドを使うと、クラス外部からインスタンス変数へのアクセスが可能になります。
class User
  # 以下の記述でクラス外部から@name,@ageにアクセスが可能になる
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

tanaka = User.new('田中太郎', 18)
p tanaka.age #=> 18

tanaka.age = 33
p tanaka.age # => 33

# このように、attr_accessorメソッドはインスタンス変数にアクセスするためのメソッドを裏側で定義してくれます。
# そして、attr_accessorメソッドに指定されたインスタンス変数は、クラス外部から参照と変更の両方を行う事が出来ます。

# - attr_readerメソッドは、インスタンス変数を呼び出すメソッドを定義する。    (Read-only)
# - attr_writerメソッドは、インスタンス変数を書き込みメソッドを定義する。 (Write-only)
# - attr_accessorメソッドは、インスタンス変数を読み書きメソッドを定義する。 (Read&Write)







#27
# 実行結果にある結果を得るようにXXXXに適したコードを選べ

arr = XXXX
arr.each do |i|
  puts i
end
# 実行結果
# apple
# banana
# orange

# 選択肢 
["apple", "banana", "orange"].flatten!

# 選択肢 => ✅
[["apple"],["banana"],["orange"]].flatten

# 選択肢
["apple", "banana", "orange"].reverse

# 選択肢
%|apple banana orange|




# Memo
# flatten Method
# flatten は自身を再帰的に平坦化した配列を生成して返します。flatten! は自身を再帰的かつ破壊的に平坦化し、
# 平坦化が行われた場合は self をそうでない場合は nil を返します。 lv が指定された場合、lv の深さまで再帰的に平坦化します。

# 自身を再帰的に平坦化する例。
a = [1, [2, 3, [4], 5]]
p a.flatten                     #=> [1, 2, 3, 4, 5]
p a                             #=> [1, [2, 3, [4], 5]]

# 自身を破壊的に平坦化する例。
a = [[[1, [2, 3]]]]
p a.flatten!                    #=> [1, 2, 3]
p a                             #=> [1, 2, 3]

# 平坦化が行われない場合は nil を返す。
p [1, 2, 3].flatten!            #=> nil

# 平坦化の再帰の深さを指定する例。
a = [ 1, 2, [3, [4, 5] ] ]
a.flatten(1)              #=> [1, 2, 3, [4, 5]]








#27
# 以下の実行結果として正しいものを選択しなさい。

p [1, 2, 3].inject{|x, y| x + y ** 2} rescue p $!
p [1, 2, 3].inject(0){|x, y| x + y ** 2} rescue p $!   
p [1, 2, 3].inject([]){|x, y| x << y ** 2} rescue p $!
p [1, 2, 3].inject do|x, y| x + y ** 2 end rescue p $!   #=> I don't know 
# 選択肢
14
14
[1, 4, 9]
14
# 選択肢
14
0
[]
14
# 選択肢
14
14
[1, 4, 9]
#<LocalJumpError: no block given>
# 選択肢
#<ArgumentError: wrong number of arguments (0 for 1)>
14
[1, 4, 9]
#<LocalJumpError: no block given>


# Memo
begin
  do_something # exception raised
rescue
  # handles error
  retry  # restart from beginning
end


#本体の実行中に例外が発生した場合、rescue 節(複数指定できます)が与えられていれば例外を捕捉できます。発生した例外と一致する rescue 節が存在する時には rescue 節の本体が実行されます。
# 発生した例外は $! を使って参照することができます。また、指定されていれば変数 evar にも $! と同様に発生した例外が格納されます。
begin
  raise "error message"
rescue => evar
  p $!
  p evar
end
# => #<RuntimeError: error message>
#    #<RuntimeError: error message>









#29
# 次のプログラムの実行結果として正しいものを選択してください。

class Foo
  attr_writer :a
end

foo = Foo.new
foo.a = "REx"
puts foo.a
# 選択肢 => ✅
# RExと表示される

# 選択肢
# nilと表示される

# 選択肢
# NoMethodErrorが発生する

# 選択肢
# NameErrorが発生する


# Memo
attr_writer(*name) -> [Symbol][permalink][rdoc][edit]
# インスタンス変数 name への書き込みメソッド (name=) を定義します。

# 例

class User
  attr_writer :name # => [:name=]
  # 複数の名前を渡すこともできる
  attr_writer :id, :age # => [:id=, :age=]
end
class User
  attr_writer :name # => [:name=]
  # 複数の名前を渡すこともできる
  attr_writer :id, :age # => [:id=, :age=]
end

# このメソッドで定義されるメソッドの定義は以下の通りです。

# 例

def name=(val)
  @name = val
end



#30
# 次のコードを実行するとどうなりますか

str = "1;2:3;4"
p str.split(";|:")
# 選択肢
["1", "2", "3", "4"]#と表示される

# 選択肢
["4", "3", "2", "1"]#と表示される

# 選択肢 => ⭕️✅⭕️
["1;2:3;4"]#と表示される

# 選択肢
# エラーが発生する














#31
# 次のコードを実行するとどうなりますか

str = "abcdefghijk"
p str[1..3]
# 選択肢
"bcde"#が表示される

# 選択肢 => ✅
"bcd"#が表示される

# 選択肢
"bc"#が表示される

# 選択肢
"abc"#が表示される











#32
# 次のプログラムの実行結果として正しいものを選択してください。

str = "aaabbcccddd"
p str.scan("c")
# 選択肢
# trueと表示される

# 選択肢 => ✅
["c", "c", "c"]#と表示される

# 選択肢
# 5と表示される

# 選択肢
# NoMethodErrorが発生する



# Memo
# scan Method
# self に対して pattern を繰り返しマッチし、マッチした部分文字列の配列を返します。


p "foobar".scan(/../)               # => ["fo", "ob", "ar"]
p "foobar".scan("o")                # => ["o", "o"]
p "foobarbazfoobarbaz".scan(/ba./)  # => ["bar", "baz", "bar", "baz"]

p "foobar".scan(/(.)/) # => [["f"], ["o"], ["o"], ["b"], ["a"], ["r"]]

p "foobarbazfoobarbaz".scan(/(ba)(.)/) # => [["ba", "r"], ["ba", "z"], ["ba", "r"], ["ba", "z"]]


# pattern が正規表現で括弧を含む場合は、括弧で括られたパターンにマッチした部分文字列の配列の配列を返します。
"foobarbazfoobarbaz".scan(/ba./) {|s| p s }
# "bar"
# "baz"
# "bar"
# "baz"

"foobarbazfoobarbaz".scan("ba") {|s| p s }
# "ba"
# "ba"
# "ba"
# "ba"

"foobarbazfoobarbaz".scan(/(ba)(.)/) {|s| p s }
# ["ba", "r"]
# ["ba", "z"]
# ["ba", "r"]
# ["ba", "z"]






# 33
次のコードを実行するとどうなりますか

str = "abcdefghijk"
p str[2,4]
# 選択肢
"cde"

# 選択肢 => ⭕️✅⭕️
"cdef"

# 選択肢
"cdefg"

# 選択肢
"cd"








#34
# 次のプログラムを実行するとどうなりますか。

x = 1
y = 1.0

print x == y
print x.eql? y
print x.equal? y
print x.equal?(1)
# 選択肢
# truetruetruetrueと表示される

# 選択肢
# falsefalsefalsefalseと表示される

# 選択肢
# truefalsefalsefalseと表示される

# 選択肢 => ✅
# truefalsefalsetrueと表示される





#35
# 次のコードを実行するとどうなりますか

a1 = "abc"
a2 = 'abc'

print a1.eql? a2
print a1 == a2
# 選択肢
# falsetrueと表示される

# 選択肢 => ✅
# truetrueと表示される

# 選択肢
# falsefalseと表示される

# 選択肢
# truefalseと表示される







#36
# 次のコードの実行結果として正しいものを選択してください。

x = %(a b)
y = %W(c d)
z = y << x

p z
# 選択肢
# 実行時エラーになる

# 選択肢
["c", "d", "a", "b"]#と表示される

# 選択肢 => ✅
["c d", "a b"]#と表示される

# 選択肢
["c", "d", "a b"]#と表示される

# Memo

# In Ruby, %() is used to create a string with double-quoted style, and %W() is used to create an array of strings, with elements separated by whitespace. Let's break down the code step-by-step:

# x = %(a b): This creates a string x with the value "a b".

# y = %W(c d): This creates an array y with two string elements: "c" and "d".

# z = y << x: This appends the string x ("a b") as a new element to the array y. So, after this operation, the array y will have three elements: "c", "d", and "a b". The variable z will also refer to the modified array y as << (shovel operator)
# modifies the original array and returns the modified array.

# result
# x = "a b"
# y = ["c", "d"]
# z = ["c", "d", "a b"]


#37
# 次のプログラムを実行するとどうなりますか

$val = 0

class Count
  def self.up
    $val = $val + 1
    $val == 3 ? true : false
  end
end

[*1..10].any? do
  Count.up
end

p $val
# 選択肢
# 10が表示される

# 選択肢
# 1が表示される

# 選択肢
# 0が表示される

# 選択肢 => ✅
# 3が表示される


# Memo
[*1..10] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# any Method
# すべての要素が偽である場合に false を返します。真である要素があれば、ただちに true を返します。
require 'set'
p Set[1, 2, 3].any? {|v| v > 3 }         # => false
p Set[1, 2, 3].any? {|v| v > 1 }         # => true
p Set[].any? {|v| v > 0 }                # => false
p Set['ant', 'bear', 'cat'].any?(/d/)    # => false
p Set[nil, true, 99].any?(Integer)       # => true
p Set[nil, true, 99].any?                # => true
p Set[].any?                             # => false

# How the code is working
# Now, let's follow the iterations:

# Iteration 1: 
# $val was 0, and the up method increments it to 1. The method returns false.

# Iteration 2: 
# $val was 1, and the up method increments it to 2. The method returns false.

# Iteration 3: 
# $val was 2, and the up method increments it to 3. The method returns true.

# After the third iteration, the any? method stops iterating because it has found a true value, so the final result is that $val is equal to 3.

# Therefore, when you execute p $val, it will output 3.



# OtherMemo
# why we initialize a value

# In many programming scenarios, it's essential to initialize variables before using them.
#  Initializing a variable means assigning it an initial value before any operations are performed on it.
#  Here are a few reasons why initializing variables is important:

# Avoiding Unpredictable Behavior: If a variable is not initialized,
#  its initial value could be whatever happened to be stored in that memory location.
#  This can lead to unpredictable behavior in the program and cause bugs that are hard to trace.

# Preventing Garbage Values: If a variable is not explicitly initialized, 
# it may contain garbage values (leftover data from the memory location used for that variable).
#  Using variables with garbage values can produce incorrect or unexpected results.

# Ensuring Consistency: By initializing a variable,
# you set a known and consistent starting point for its value.
#  This makes it easier to reason about the program's behavior and expected outcomes.

# Safer Operations: Depending on the programming language,
# some operations on uninitialized variables may result in runtime errors or exceptions.
#  Initializing variables ensures that these operations can be safely performed.

# Explicit Intent: Initializing variables clearly communicates 
# the programmer's intention to use that variable and gives a specific starting value,
#  which can make the code more readable and maintainable.

# Default Values: In some cases, initializing variables to default values is necessary to ensure correct behavior, 
# especially in languages that don't automatically set default values for variables.

# In the given code, $val = 0 initializes the global variable $val with the value 0.
#  This is important because the subsequent code relies on this variable to be initialized 
# before the Count.up method is called multiple times in the any? method. If $val were not initialized, its value could be anything, leading to unpredictable behavior and possibly incorrect results. Initializing $val with 0 ensures that it starts with a known value
#  before any further operations are performed on it.






#38
# 次のコードを実行するとどうなりますか

a = [1,2,3,4]
p a.slice(2,1)
# 選択肢
[1]#と表示される

# 選択肢
[2]#と表示される

# 選択肢 => ✅
[3]#と表示される

# 選択肢
[4]#と表示される

# Memo
# slice Method
# 指定された自身の要素を返します。Array#[] と同じです。

# 要素のインデックスを整数で指定します。Array#[] と同じです。
p [0, 1, 2].slice(1)    #=> 1
p [0, 1, 2].slice(2)    #=> 2
p [0, 1, 2].slice(10)   #=> nil


# 指定された自身の部分配列を返します。Array#[] と同じです。 (first paramete:starting-index, second: length)
p [0, 1, 2].slice(0, 2)    #=> [0, 1]
p [0, 1, 2].slice(2, 1)    #=> [2]
p [0, 1, 2].slice(2..3)    #=> [2]
p [0, 1, 2].slice(10, 1)   #=> nil


# The slice method is used to extract a portion of an array based on a given starting index and length. 
# In this case, a.slice(2, 1) is called, which means we want to extract a portion of the array a starting from
#  index 2 and with a length of 1.

# Let's break it down:
  
# Index 2 corresponds to the element 3 in the array because arrays are zero-indexed (i.e., the first element has an index of 0).
  
# The length specified is 1, so we want to extract a single element starting from index 2.








#39
# 次のコードを実行するとどうなりますか

str = "1;2:3;4"
p str.split(/;|:/)
# 選択
# 選択肢 => ✅
["1", "2", "3", "4"]#と表示される

# 選択肢
["4", "3", "2", "1"]#と表示される

# 選択肢
["1;2:3;4"]#と表示される

# 選択肢
# エラーが発生する













#40
# のコードの実行結果として正しいものを選択してください。

class Foo
  attr_accessor :foo

  def initialize
    @foo = 0
  end
end

foo1 = Foo.new
foo1.foo += 1
foo2 = Foo.new
foo2.foo += 2

puts "#{foo1.foo}/#{foo2.foo}"
# 選択肢
3/3#と表示される

# 選択肢
NoMethodErrorが発生する

# 選択肢 => ✅
1/2#と表示される

# 選択肢
1/3#と表示される













#41
# 以下の変数についての説明のうち、⭕️間違っているもの⭕️をすべて選択してください

# 選択肢 => ❌
# グローバル変数は@@から始まる

# 選択肢 => ❌
# クラス変数は$から始まる

# 選択肢
# インスタンス変数は@から始まる

# 選択肢
# 定数は、アルファベット大文字で始まる









#42

# Hashクラスについて適切な記述を選びなさい（複数選択）

# 選択肢  => ✅
# Hash[]で空のHashオブジェクトを生成できる

# 選択肢
# Hash()で空のHashオブジェクトを生成できる

# 選択肢
# revertでキーと値を入れ替えることができる

# 選択肢  => ✅
# fetchでキーにマッチした値を取得できる


# Memo
# revert Method
# reverse は自身の要素を逆順に並べた新しい配列を生成して返します。 reverse! は自身を破壊的に並べ替えます。 reverse! は self を返します。

a = ["a", 2, true]
p a.reverse         #=> [true, 2, "a"]
p a                 #=> ["a", 2, true] (変化なし)

a = ["a", 2, true]
p a.reverse!        #=> [true, 2, "a"]
p a                 #=> [true, 2, "a"]


# fetch Method
# key に関連づけられた値を返します。該当するキーが登録されていない時には、
# 引数 default が与えられていればその値を、ブロックが与えられていればそのブロックを評価した値を返します。
# fetchはハッシュ自身にデフォルト値が設定されていても単に無視します（挙動に変化がありません）。


h = {one: nil}
p h[:one],h[:two]                        #=> nil,nil これではキーが存在するのか判別できない。
p h.fetch(:one)                          #=> nil
p h.fetch(:two)                          # エラー key not found (KeyError)
p h.fetch(:two,"error")                  #=> "error"
p h.fetch(:two){|key|"#{key} not exist"} #=> "two not exist"
p h.fetch(:two, "error"){|key|           #=> "two not exist"
    "#{key} not exist"                   #  warning: block supersedes default value argument
  }                                      #  警告が表示される。

h.default = "default"
p h.fetch(:two)



#43
# Arrayクラスでfind_allと同じ動作をするメソッドを選びなさい

# 選択肢 => ✅
# select

# 選択肢
# detect

# 選択肢
# collect

# 選択肢
# map


#Memo
# detect Method
find(ifnone = nil) -> Enumerator[permalink][rdoc][edit]
detect(ifnone = nil) -> Enumerator
find(ifnone = nil) {|item| ... } -> object
detect(ifnone = nil) {|item| ... } -> object

# 要素に対してブロックを評価した値が真になった最初の要素を返します。

# 真になる要素が見つからず、ifnone も指定されていないときは nil を返します。
# 真になる要素が見つからず、ifnone が指定されているときは ifnone を call した結果を返します。

# 最初の 3 の倍数を探す
p [1, 2, 3, 4, 5].find {|i| i % 3 == 0 }   # => 3
p [2, 2, 2, 2, 2].find {|i| i % 3 == 0 }   # => nil

# ifnone の使用例
ifnone = proc { raise ArgumentError, "item not found" }
p [1, 2, 3, 4, 5].find(ifnone) {|i| i % 7 == 0 }
    # ArgumentError: item not found


#select Method
select -> Enumerator[permalink][rdoc][edit]
filter -> Enumerator
select {|item| ... } -> [object]
filter {|item| ... } -> [object]
# 各要素に対してブロックを評価した値が真であった要素を全て含む配列を返します。真になる要素がひとつもなかった場合は空の配列を返します。

# ブロックを省略した場合は Enumerator を返します。

例

[1,2,3,4,5].select                      # => #<Enumerator: [1, 2, 3, 4, 5]:select>
[1,2,3,4,5].select { |num| num.even? }  # => [2, 4]



# Enumerator, specifically, is a class in Ruby that allows both types of iterations – external and internal.
#  Internal iteration refers to the form of iteration which is controlled by the class in question, 
# while external iteration means that the environment or the client controls the way iteration is performed
# for better understanding
# https://bootrails.com/blog/ruby-enumerator-what-why-how/




#44
# 次のプログラムの期待値を得られるように正しいメソッドを選択肢から選んでください。

hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}

p hash.__(1)__
# 期待値

[100, 0.8]
# 選択肢
key(:price, :tax)
# 選択肢
values(:price, :tax)
# 選択肢 => ✅
values_at(:price, :tax)
# 選択肢
[](:price, :tax)




# Memo
# key Method
# 全キーの配列を返します。


h1 = { "a" => 100, 2 => ["some"], :c => "c" }
p h1.keys 


#value Method
# ハッシュの全値の配列を返します。

h1 = { "a" => 100, 2 => ["some"], :c => "c" }
p h1.values  


#value_at Method
# 引数で指定されたキーに対応する値の配列を返します。

# キーに対応する要素がなければデフォルト値が使用されます。
 

h = {1=>"a", 2=>"b", 3=>"c"}

p h.values_at(1,3,4)               #=> ["a", "c", nil]
# [h[1], h[3] ,h[4]] と同じ












# 45
# 次のコードを実行するとどうなりますか
h = {a: 100}
h.each {|p|
  p p.class
}
# 選択肢
Arrayと表示される

# 選択肢
Hashと表示される

# 選択肢
Symbolと表示される

# 選択肢
Fixnumと表示される


# Memo
# IDk know the class of the key of hash


# Fixnum Class:
# In Ruby versions before 2.4, Fixnum was a class representing integer numbers.
#  It was used to represent integers within a specific range.
  # Integers that fell within this range were instances of the Fixnum class,
  # while integers outside this range were represented by the Bignum class.

# However, starting from Ruby 2.4, the Fixnum and Bignum classes were unified into a single class called Integer.
#  This change was made to improve memory efficiency and simplify the handling of integers in Ruby.

# Here's a brief overview of Fixnum (before Ruby 2.4):

# Fixnum is a subclass of Integer.
# Fixnum holds Integer values that can be represented in a native machine word (minus 1 bit).
#  If any operation on a Fixnum exceeds this range, the value is automatically converted to a Bignum.
# Fixnum objects have immediate value. This means that when they are assigned or passed as parameters,
#  the actual object is passed, rather than a reference to that object. Assignment does not alias Fixnum objects.
#   There is effectively only one Fixnum object instance for any given integer value, so, for example, you cannot add a singleton method to a Fixnum.


# besides
# It represents integer numbers within a specific range that can be efficiently stored in memory.
# In older versions of Ruby (before 2.4), integers within the range -2^30 to 2^30-1 were represented as Fixnum.
# Operations on Fixnum objects are generally faster and use less memory compared to Bignum objects.
# If a mathematical operation exceeds the range of Fixnum, the result will be automatically promoted to a Bignum object.
# However, as of Ruby 2.4 and later versions, Fixnum and Bignum are no longer separate classes,
# and all integer numbers are now represented by the unified Integer class. This change means that Ruby automatically manages the internal representation of integers,
# and developers do not need to be concerned about the internal class distinction.

# Here's an example of using Fixnum (before Ruby 2.4):

x = 42
puts x.class  # Output: Fixnum
# And in Ruby 2.4 and later versions:

x = 42
puts x.class  # Output: Integer
# In modern Ruby versions, the class will be Integer instead of Fixnum.







#46
# 次のコード実行するとどうなりますか

puts Time.now + 3600
# 選択肢 
# 3600分後の時間を出力する

# 選択肢
# 36秒後の時間を出力する

# 選択肢 => ✅
# 60分後の時間を出力する

# 選択肢
# 6分後の時間を出力する











#47
# 実行結果にある結果を得るように選択肢からコードを選べ

#実行結果
["A", "a", "a"]
# 選択肢
arr = Array(3){"a"}
arr.first.upcase
p arr
# 選択肢
arr = Array(3){"a"}
arr.first.upcase!
p arr
# 選択肢
arr = Array.new(3){"a"}
arr.first.upcase
p arr
# 選択肢
arr = Array.new(3){"a"}
arr.first.upcase!
p arr














#48
# 次のコードを実行するとどうなりますか

arr = [1,2].product([3,4])
p arr
# 選択
# 選択肢  => ✅
[[1, 3], [1, 4], [2, 3], [2, 4]]と表示される

# 選択肢
[[1, 3], [2, 4]]と表示される

# 選択肢
[1, 2]と表示される

# 選択肢
[[1, 1, 2, 2], [3, 4, 3, 4]]と表示される


#Memo
#product Method
# レシーバの配列と引数で与えられた配列（複数可）のそれぞれから要素を1 個ずつとって配列とし，それらのすべての配列を要素とする配列を返します。

# 返される配列の長さは，レシーバと引数で与えられた配列の長さのすべての積になります。
[1,2,3].product([4,5])     # => [[1,4],[1,5],[2,4],[2,5],[3,4],[3,5]]
[1,2].product([1,2])       # => [[1,1],[1,2],[2,1],[2,2]]
[1,2].product([3,4],[5,6]) # => [[1,3,5],[1,3,6],[1,4,5],[1,4,6],
                           #     [2,3,5],[2,3,6],[2,4,5],[2,4,6]]
[1,2].product()            # => [[1],[2]]
[1,2].product([])          # => []






#49
# 次のプログラムを#実行して同じ結果が得られるプログラムを選んでください。

klass = Class.new

hash = {klass => 100}

puts hash[klass]

# 選択肢
klass = Class.new

hash = {klass: 100}

puts hash[klass]

# 選択肢 => ✅
klass = Class.new

hash = {}
hash.store(klass, 100)

puts hash[klass]

# 選択肢
klass = Class.new

hash = {}
hash.store(:klass, 100)

puts hash[klass]

# 選択肢 => ✅
klass = Class.new

hash = Hash[klass, 100]

puts hash[klass]

#Memo
# store Method
# self[key] = value[permalink][rdoc][edit]
# store(key, value) -> object
# key に対して value を関連づけます。value を返します。

# [PARAM] key:
# キーを指定します。
# [PARAM] value:
# 値を指定します。
# 例
#1
h = {}

h[:key] = "value"
p h #=>{:key => "value"}

#2
h = {}
h.store(:key, "value")
p h #=> {:key=>"value"}



#50
a = [1, 2, 3, 4]
p a[1..2]
# 選択肢
[1, 2]#と表示される

# 選択肢
[1, 2, 3]#と表示される

# 選択肢
[2, 3, 4]#と表示される

# 選択肢  => ✅
[2, 3]#と表示される
