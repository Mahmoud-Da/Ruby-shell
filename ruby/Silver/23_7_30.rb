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
# エラーになる　　=>　✅　#　to_f  => to_f 
                        # to_i => integer
                        # to_s => string
                        # to_c => Complex      以下の形式を解析できます。i、j は大文字、小文字のどちらでも解析できます。 (実部+虚部(Real part + Imaginary part)i / 実部+虚部j / 絶対値@偏角)
                        # to_r => Rational  有理数（ゆうりすう、英: rational number）とは、整数の比（英: ratio）として表すことができる実数のことである。 分母・分子ともに整数の分数（分母≠0）として表すことができる実数との説明もされる。 整数は、分母が 1 の分数と考えることにより、有理数の特別な場合となる。










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
arr.unshift => #引数がないとそのまま何もしない
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
次のコードを実行するとどうなりますか

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
Date.today.strftime('%y-%m-%d') => ✅

#選択肢
Date.today.strftime("%Y/%m/%d")

#選択肢
Date.today.strftime("%Y-%m-%d")






#Memo
Date.today.to_s => "2023-07-30"

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
  nil.eql?(NilClass),
  String.new.equal?(String.new),
  1.equal?(1)
]

p arr.collect { |a| a ? 1 : 2 }.inject(:+)
# 選択肢
# 実行時エラーになる

# 選択肢
# 6と表示される

# 選択肢
# 5と表示される

# 選択肢
# 7と表示される
