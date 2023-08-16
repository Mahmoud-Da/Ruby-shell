#2
# 次のコードを実行するとどうなりますか

hoge = "a".to_a
puts hoge.class
# 選択肢
Stringと表示される

# 選択肢
Arrayと表示される

# 選択肢
Hashと表示される

# 選択肢 #=>  ✅
エラーになる







#8
#次のコードを実行するとどうなりますか

a, = (1..5).partition(&:odd?)
p a
選択
# 選択肢
[[2, 4]]と表示される

# 選択肢
[[1, 3, 5]]と表示される

# 選択肢
[2, 4]と表示される

# 選択肢 #=>  ✅
[1, 3, 5]と表示される


# Memo
a, = 1 , 2
a = 1
  = 2 #=> not assigned






#14
XXXXに記述してもエラーが発生しないコードを選んでください。

hash = Hash.new {|h, k| raise(KeyError, "Key #{k} does not exist in hash #{h}") }

XXXX
# 選択肢
p hash[:a]
# 選択肢 #=>  ✅
hash.default = nil
p hash[:a]
# 選択肢
proc = hash.default_proc
p proc.call(1, 2) 
# 選択肢
hash.default_proc = nil
p hash[:a]



# Memo
# 問題のプログラムではHash#newメソッドの引数にブロックを指定しています。

# ブロックでは、キーが存在しない場合に例外KeyErrorを返すよう設定されています。

# 下記のようにHashに存在しないキー:aを参照しようとすると例外が発生します。

# hash[:a] # => KeyError (Key a does not exist in hash {})
# エラーにならない場合

hash[:a] = 1 # 参照先であるhash[:a]に値が代入されている場合例外は発生しない
hash.default = nil # デフォルト値をnilに更新しているので例外は発生しない
hash.default_proc = nil　# デフォルト値をnilに更新しているので例外は発生しない
エラーが発生する場合

Hash#default_procメソッドはHashオブジェクトに設定されたブロック形式のデフォルト値を返します。

Hash#default_procメソッドがデフォルトのProcを持たない場合はnilを返します。

proc = hash.default_proc # ここでデフォルト値に設定されたブロックの内容を参照しそれを変数procに代入しています

# callメソッドで意図的にブロックを呼び出し設定された例外を発生させています
proc.call(1, 2) # => KeyError (Key 2 does not exist in hash 1)







# 17
# Hashクラスについて適切な記述を選びなさい（複数選択）

# 選択肢 #=>  ✅
member?でハッシュがキーをもつか判断できる

# 選択肢 #=>  ✅
to_aでハッシュから配列を生成できる

# 選択肢 #=>  ✅
updateは破壊的メソッドである

# 選択肢 #=>  ✅
clearの戻り値は空のハッシュ


# Memo
# それぞれの実行結果は以下のようになります。

# member?
hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
p hash.member?("apple")

# <実行結果>
# true
# to_a
hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
p hash.to_a

# <実行結果>
# [["apple", "grate"], ["banana", "ole"], ["orange", "juice"]]
# update
hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
hash.update({"grape" => "juice"})
p hash

# <実行結果>
# {"apple"=>"grate", "banana"=>"ole", "orange"=>"juice", "grape"=>"juice"}
# clear
hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
p hash.clear

# <実行結果>
# {}








#18
# Hashクラスについて適切な記述を選びなさい（複数選択）

# 選択肢 #=>  ✅
Hash({})で空のHashオブジェクトを生成できる

選択 #=>  ✅
# 選択肢
to_hで配列からハッシュを生成できる

選択
# 選択肢
mergeは破壊的メソッドである

# 選択肢
clearは非破壊的メソッドである







# Memo
# merge Method

# selfとothersのハッシュの内容を順番にマージ(統合)した結果を返します。デフォルト値はselfの設定のままです。
# self と others に同じキーがあった場合はブロック付きか否かで判定方法が違います。ブロック付きのときはブロックを呼び出してその返す値を重複キーに対応する値にします。ブロック付きでない場合は常に others の値を使います。
# othersがハッシュではない場合、othersのメソッドto_hashを使って暗黙の変換を試みます。
# ex1:
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 246, "c" => 300 }
h3 = { "b" => 357, "d" => 400 }
h1.merge          #=> {"a"=>100, "b"=>200}
h1.merge(h2)      #=> {"a"=>100, "b"=>246, "c"=>300}
h1.merge(h2, h3)  #=> {"a"=>100, "b"=>357, "c"=>300, "d"=>400}
h1.merge(h2) {|key, oldval, newval| newval - oldval}
                  #=> {"a"=>100, "b"=>46,  "c"=>300}
h1.merge(h2, h3) {|key, oldval, newval| newval - oldval}
                  #=> {"a"=>100, "b"=>311, "c"=>300, "d"=>400}
h1                #=> {"a"=>100, "b"=>200}


# ex2:
foo = {1 => 'a', 2 => 'b', 3 => 'c'}
bar = {2 => 'B', 3 => 'C', 4 => 'D'}

p foo.merge(bar)
       # => {1=>"a", 2=>"B", 3=>"C", 4=>"D"}
p foo  # => {1=>"a", 2=>"b", 3=>"c"}

p foo.merge!(bar) {|key, foo_val, bar_val| foo_val + bar_val }
       # => {1=>"a", 2=>"bB", 3=>"cC", 4=>"D"}
p foo  # => {1=>"a", 2=>"bB", 3=>"cC", 4=>"D"}






# 23
# 次のプログラムを実行して同じ結果が得られるプログラムを選んでください。

klass = Class.new

hash = {klass => 100}

puts hash[klass]


# 選択
# 選択肢
klass = Class.new

hash = {klass: 100}

puts hash[klass]
# 選択肢 #=>  ✅
klass = Class.new

hash = {}
hash.store(klass, 100)

puts hash[klass]
# 選択肢
klass = Class.new

hash = {}
hash.store(:klass, 100)

puts hash[klass]
# 選択肢 #=>  ✅
klass = Class.new

hash = Hash[klass, 100]

puts hash[klass]




# Memo
# ハッシュのキーにオブジェクトを指定する問題です。

# ハッシュはキーにシンボルと文字列以外を指定して値を格納することもできます。
# 問題では、Classクラスのオブジェクトをキーに100を格納しています。

klass = Class.new

hash = {klass => 100}

puts hash #=> {#<Class:0x007f9a3f0a7068>=>100}
また、選択肢のうちキーを:klassとする、または{klass: 100}と記述するとキーがシンボルになります。
変数klassに格納されたClassクラスのオブジェクトをキーに指定していることにはなりません。

よって、次の選択肢が解答になります。

klass = Class.new

hash = {}
hash.store(klass, 100)

puts hash[klass]
klass = Class.new

hash = Hash[klass, 100]

puts hash[klass]






























# 28
次のプログラムの説明で正しい選択肢を選んでください。

str = <<EOS
よりニッチに。よりユニークに。
  IT市場はもちろん、ヘルスケア・医療・介護など
    次世代市場における企業や生活者のユーザビリティを向上させる
      サービス、ソフトウェアを開発しています。
    #{1 + 1}
EOS
puts str
選択
# 選択肢 #=>  ✅
# 式展開が行われ、スペース及び改行は正しく評価される。

よりニッチに。よりユニークに。
  IT市場はもちろん、ヘルスケア・医療・介護など
    次世代市場における企業や生活者のユーザビリティを向上させる
      サービス、ソフトウェアを開発しています。
    2
# 選択肢
# 式展開が行われず、スペース及び改行は正しく評価される。

よりニッチに。よりユニークに。
  IT市場はもちろん、ヘルスケア・医療・介護など
    次世代市場における企業や生活者のユーザビリティを向上させる
      サービス、ソフトウェアを開発しています。
    #{1 + 1}
# 選択肢
# 式展開が行われるが、スペース及び改行は評価されない。

よりニッチに。よりユニークに。IT市場はもちろん、ヘルスケア・医療・介護など次世代市場における企業や生活者のユーザビリティを向上させるサービス、ソフトウェアを開発しています。2
# 選択肢
# 式展開が行われず、スペース及び改行は評価されない。

よりニッチに。よりユニークに。IT市場はもちろん、ヘルスケア・医療・介護など次世代市場における企業や生活者のユーザビリティを向上させるサービス、ソフトウェアを開発しています。#{1 + 1}


# Memo
# str = <<EOS: This starts a "here document" with the delimiter EOS. It allows you to create a multi-line string
#  where the text enclosed between 
# <<EOS and the ending EOS delimiter is treated as the content of the string.








#33
# Fileクラスのクラスメソッドではないものを選択してください。

# 選択
# 選択肢  #=>  ✅
File.dirname
# 選択肢
File.close
# 選択肢
File.home
# 選択肢
File.pwd

# Memo
# File.dirnameは引数に指定した文字列の一番後ろの/より前の文字列を返します。

# /を含まない文字列の場合"."を返します。

# File.dirname("text.txt") # => "."
# File.dirname("REx/text.txt") # => "REx"
# File.dirname("Desktop/REx/text.txt") # => "Desktop/REx"
# File.closeメソッド, File.homeメソッド, File.pwdメソッドはFileクラスのクラスメソッドではありません。






#35
# 次のコードを実行するとどうなりますか

h = {a: 100, b: 100, c:100}
puts h.invert
# 選択肢
{100=>:a}#と表示される

# 選択肢  #=>  ✅
{100=>:b}#と表示される

# 選択肢
[[100, :a],[100, :b]]#と表示される

# 選択肢
[[100, :b]]#と表示される


# Memo
{a: 100, b: 100, c:100}.invert #=> {100=>:c}
# with invert when the value is the same 
# it returns the last value 










#37
# Dirクラスのクラスメソッドを選択してください。

# 選択肢  #=>  ✅
Dir.delete
# 選択肢
Dir.dirname
# 選択肢
Dir.chmod
# 選択肢  #=>  ✅
Dir.rmdir





#42
# 実行結果にある結果を得るようにXXXXに適したコードを選べ

arr = XXXX
arr.each do |i|
  puts i
end
# 実行結果
apple
banana
orange
# 選択肢
["apple", "banana", "orange"].flatten!

# 選択肢
[["apple"],["banana"],["orange"]].flatten

# 選択肢
["apple", "banana", "orange"].reverse

# 選択肢 #=>  ✅
%|apple banana orange|



# Memo
Array#flattenはselfを再帰的に平坦化します(3次元配列を1次元配列の配列を返す)。
Array#flatten!は破壊的にselfを再帰的に平坦化します。平坦化が行われない場合は、nilを返します。

String#reverseはselfを逆順にした配列を返します。

# %||は%記法といいます。文字列リテラル等を定義することができます。
# 詳しい説明は%記法を参照してください。













#44
実行結果がRExと表示されるプログラムを選択してください。

# 選択肢
CONST = "REx"

def foo
  CONST
end

puts foo
選択
# 選択肢
def foo
  CONST = "REx"
end

puts foo
# 選択肢 #=>  ✅
def foo
  var = "REx"
end

puts foo
# 選択肢
var = "REx"

def foo
  var
end

puts foo






# Memo
# in ruby we can't define a constant within a method
def foo
    CONST = "REx"
end







# 50
# 次のプログラムの実行結果として正しいものを選択してください。

class Foo
  attr_writer :a
end

foo = Foo.new
foo.a = "REx"
puts foo.a
# 選択
# 選択肢
RExと表示される

# 選択肢
nilと表示される

# 選択肢
NoMethodErrorが発生する

# 選択肢
NameErrorが発生する



# Memo
# attr_writerメソッドは引数に指定した名前のインスタンス変数に対して書き込み用メソッド(setterメソッド)を定義します。

# 引数にはStringクラスかSymbolクラスのリテラルを指定ます。複数指定することも可能です。

# クラス内で例1のようにattr_writer :aと記述すると例2のようにインスタンス変数@aに対して書き込み用のメソッドを定義したことになります。

# 例1, 例2のFooクラスはそれぞれインスタンス変数@aに対しての書き込み用メソッドを持ちます。

# 書き込み用のメソッドなので、読み取りはできません。読み取り用のメソッドが定義されていないインスタンス変数を参照しようとするとNoMethodErrorが発生します。

# 例1

class Foo
  attr_writer :a
end

foo = Foo.new
foo.a = "value" # => オブジェクトfooが保持するインスタンス変数@aに文字列"value"が代入される
p foo.a         # => インスタンス変数@aに対して読み取り用のメソッドが定義されていないためNoMethodErrorが発生
# 例2

class Foo
  def a=(val)
    @a = val
  end
end
