#2
# 下記の実行結果になるようにXXXXに当てはまる適切なプログラムを選択してください。

str = "-1234567890-"

XXXX

puts str
# 実行結果

-1234-
# 選択肢 #=> "567890"
str.delete("2-41-")


# 選択肢 #=>  ✅
str.delete!("^2-41-")

# 選択肢 
str.delete!("0^5-9-") #=> "1234"


# 選択肢 #=>  破壊メソッドではない
str.delete("05-9", "^1-4-")





# Memo
# delete Method  (delete!は破壊的)
"123456789".delete("2-8")  #=> "19"
"123456789".delete("^2-8") #=> "2345678"
"-1234567890-".delete!("2-41") #=> "-567890-"
"-1234567890-".delete!("2-41-") #=> "567890"


String#deleteメソッドは、引数に指定した文字を削除します。

# メソッド名に!が付いていると破壊的メソッドになります。

# 引数の先頭の文字が^の場合は指定した文字以外の文字を削除します。

# -は両端に文字がある場合は範囲指定となります。

# ,区切りで引数を複数指定した場合は、全ての引数にマッチした文字が削除対象となります。

例

s = "1234567890"

# 非破壊的
s.delete("^1-5")          # => "12345"
s.delete("1-5")           # => "67890"
s.delete("^1-5", "1-5")   # => "1234567890"
p s                       # => "1234567890"

# 破壊的
s.delete!("1-5")
p s                       # => "67890"






#4
# 次のコードを実行するとどうなりますか

arr = (1..30).to_a
container = []

arr.each_slice(7) do |i|
  container << i
end

p container.length
# 選択肢
24

# 選択肢 #=>  ✅
5

# 選択肢
7

# 選択肢
0


# Memo
# each_slice Method
n 要素ずつブロックに渡して繰り返します。

要素数が n で割り切れないときは、最後の回だけ要素数が減ります。

ブロックを省略した場合は n 要素ずつ繰り返す Enumerator を返します。

区切る要素数を示す整数です。
例

(1..10).each_slice(3) {|a| p a}   ## divid array on n number 
    # => [1, 2, 3]
    #    [4, 5, 6]
    #    [7, 8, 9]
    #    [10]




#6
# 以下の実行結果として正しいものを選択しなさい。

p [1, 2, 3].inject{|x, y| x + y ** 2} rescue p $!
p [1, 2, 3].inject(0){|x, y| x + y ** 2} rescue p $!
p [1, 2, 3].inject([]){|x, y| x << y ** 2} rescue p $!
p [1, 2, 3].inject do|x, y| x + y ** 2 end rescue p $!
# 選択
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
# 選択肢　#=>  ✅
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
# So, the calculations within the block would be as follows:

# First iteration: x is 1 (initial value), and y is 2. Calculation: 1 + 2 ** 2 = 1 + 4 = 5.
# Second iteration: x is 5 (previous result), and y is 3. Calculation: 5 + 3 ** 2 = 5 + 9 = 14.






#9
# 次のプログラムを実行するとどうなりますか

$val = 0

class Count
  def self.up
    $val = $val + 1
    $val == 3 ? true : false
  end
end

[*1..10].select do
  Count.up
end

p $val
# 選択肢
1が表示される

# 選択肢
0が表示される

# 選択肢 #=>  ✅
10が表示される

選択
# 選択肢
3が表示される



# Memo
Enumerable#selectはブロックの戻り値がtrueになる要素を配列にして返します。
レシーバーをすべて走査して繰り返しを終了します。

配列の長さは10ですので、ブロックの戻り値がtrueかを問わず10が表示されます。


# 10
# 次のコードを実行するとどうなりますか

a = [1, 2, 5, 7, 8]
b = [1, 3, 6, 7, 9]
c =  nil || a & b | a && a | b
p c
# 選択
# 選択肢
[1, 3, 6, 7, 9]

# 選択肢
[1, 2, 5, 7, 8, 9]

# 選択肢
[1, 7, 2, 5, 8]

# 選択肢 #=>  ✅
[1, 2, 5, 7, 8, 3, 6, 9]


# Memo 
nil || a & b | a && a | b
# first 
nill or (a & b | a && a | b)

# second
(a & b | a) and (a | b)

#third
a | b










#11
# 次のプログラムの実行結果として正しいものを選んでください。

def foo
  self + 2
end

p 1.foo
# 選択肢 
1と表示される

# 選択肢 #=>  ✅
3と表示される

# 選択肢 
SyntaxErrorが発生する

# 選択肢
fooと表示される


# Memo
selfは自分自身を返すオブジェクトです。使われる場所によって返す値が異なります。

クラス内で使用される場合はそのクラスを、メソッド内で使用される場合はそのメソッドを実行するオブジェクト(レシーバ)を返します。

問題では、メソッドfooが「実行されるオブジェクト1」 + 2を返しています。

メソッドfooが実行されるオブジェクトは1なので、メソッドfoo内のselfは1になります。

class Foo
  self # => <Foo:0x00007ff58e1d7690> 自身を返す
end

def to_upcase
  self.upcase
end

"a".to_upcase # => "A"


#12 
# 次のコードを実行するとどうなりますか

hoge = *"a"
puts hoge.class
# 選択肢
Stringと表示される

# 選択肢 #=>  ✅
Arrayと表示される

# 選択肢
Hashと表示される

# 選択肢
エラーになる





#13
# 次のコードのXXXXに記述するとエラーが発生するコードはどれですか

puts XXXX
# 選択肢
"0x90".hex

# 選択肢
'90'

# 選択肢 #=>  ✅
0b2

# 選択肢
'80'.oct


# Memo
# we can't write value that contains number and string without ""

# hex Method
# 文字列に 16 進数で数値が表現されていると解釈して整数に変換します。接頭辞 "0x", "0X" とアンダースコアは無視されます。文字列が [_0-9a-fA-F] 以外の文字を含むときはその文字以降を無視します。

# self が空文字列のときは 0 を返します。

例

p "10".hex    # => 16
p "ff".hex    # => 255
p "0x10".hex  # => 16
p "-0x10".hex # => -16

p "xyz".hex   # => 0
p "10z".hex   # => 16
p "1_0".hex   # => 16

p "".hex      # => 0



# oct Method
# 文字列を 8 進文字列であると解釈して、整数に変換します。

# 例

p "10".oct  # => 8
p "010".oct # => 8
p "8".oct   # => 0
p "10".oct  # => 8
p "010".oct # => 8
p "8".oct   # => 0

# oct は文字列の接頭辞 ("0", "0b", "0B", "0x", "0X") に応じて 8 進以外の変換も行います。

# 例

p "0b10".oct  # => 2
p "10".oct    # => 8
p "010".oct   # => 8
p "0x10".oct  # => 16
p "0b10".oct  # => 2
p "10".oct    # => 8
p "010".oct   # => 8
p "0x10".oct  # => 16

# 整数とみなせない文字があればそこまでを変換対象とします。変換対象が空文字列であれば 0 を返します。

# 符号や _ が含まれる場合も変換対象になります。

# 例

p "-010".oct     # => -8
p "-0x10".oct    # => -16
p "-0b10".oct    # => -2

p "1_0_1x".oct   # => 65






# 23
# 次のコードを実行するとどうなりますか

def hoge
  x = 0
  1.step(5,1) do |i|
    x += 1
  end
  puts x
end
hoge
# 選択肢
4が表示される

# 選択肢 #=>  ✅
5が表示される

# 選択肢
例外が発生する

# 選択肢
0が表示される



# Memo
# step Method
self からはじめ step を足しながら limit を越える前までブロックを繰り返します。step は負の数も指定できます。また、limit や step には Float なども指定できます。

[PARAM] limit:
ループの上限あるいは下限を数値で指定します。step に負の数が指定された場合は、下限として解釈されます。
[PARAM] step:
各ステップの大きさを数値で指定します。負の数を指定することもできます。
[PARAM] to:
引数limitと同じですが、省略した場合はキーワード引数byが正の数であれば Float::INFINITY、負の数であれば -Float::INFINITYを指定したとみなされます。
[PARAM] by:
引数 step と同じです。
[RETURN]
ブロックが指定された時は self を返します。
[RETURN]
ブロックが指定されなかった時は Enumerator を返します。
[RETURN]
特に limit (または to) と step の両方が Numeric または nil の時は Enumerator::ArithmeticSequence を返します。
[EXCEPTION] ArgumentError:
step に 0 を指定した場合に発生します。


# EX:
2.step(5){|n| p n}
2
3
4
5

1.1.step(1.5, 0.1) {|n| p n}
1.1
1.2
1.3
1.4
1.5

10.step(6, -1){|n| p n}
10
9
8
7
6

3.step(by:2, to:10){|n| p n}
3
5
7
9

# 注：浮動小数点数の 0.1 は 2進数では正確な表現ができない(2進数で 0.1は 0.00011001100....となる)ので、以下のようなループでは誤差が生じて意図した回数ループしないことがある。step はこの誤差を考慮して実装されている。

# 例

i = 1.1
while i <= 1.5
  p i
  i += 0.1
end
# => 1.1
#    1.2
#    1.3
#    1.4   <- 1.5 が表示されない

# 31
# 実行後の textfile.txt 内容になるようにXXXXに適切なコードを選べ。
# ただし、空ファイルは作成済みである。

File.open('testfile.txt', XXXX) do |f|
  f.write("recode 1\n")
  f.seek(0, IO::SEEK_SET)
  f.write("recode 2\n")
end
# 実行後の textfile.txt 内容

recode 1
recode 2
# 選択肢
'w+'

# 選択肢
'w'

選択
# 選択肢 #=>  ✅
'a+'

# 選択肢
'a'





# Memo
# "a+"
# "r+"と同様、ファイルの読み込み位置は先頭にセットされますが、書き込みは常にファイル末尾に行われます。
# 書き込みは IO#seek などの影響を受けません。



# 33
Threadクラスのオブジェクトを生成するメソッドとして正しいものをすべて選択してください。

選択肢 #=>  ✅
Thread.new
選択肢 #=>  ✅
Thread.start
選択肢
Thread.join
選択肢 #=>  ✅
Thread.fork



# Memo
# Thread
# Thread.new, Thread.start, Thread.forkはスレッドオブジェクトを生成します。
# スレッドを生成して、ブロックの評価を開始します。生成したスレッドを返します。
for i in 1..5
  Thread.new(i) {|t| p t }
end



#34
# 次のコードを実行するとどうなりますか。

v1 = 1 - 1 == 0
v2 = v1 || raise RuntimeError
puts v2 && false
# 選択肢 #=>  ✅
シンタックスエラーとなる

# 選択肢
実行時にエラーとなる

# 選択肢
true と表示される

# 選択肢
false と表示される







# Memo
v1 = 1 - 1 == 0
v2 = v1 || raise{ RuntimeError } #=> with raise we should use {} or , RuntimeError, "This is a custom error message"
puts v2 && false







# 36
# 次のコードを実行するとどうなりますか

def hoge(step = 1)
  current = 0
  Proc.new {
    current += step
  }
end

p1 = hoge
p2 = hoge(2)

p1.call
p1.call
p1.call
p2.call
p2.call

p p2.call
# 選択肢
9と表示される

# 選択肢
7と表示される

# 選択肢 #=>  ✅
6と表示される

# 選択肢
5と表示される

# Memo
# The code you provided defines a method hoge that takes an optional argument step (defaulting to 1). The method returns a Proc object, which is essentially an anonymous function or a block of code that can be saved and executed later.

# Let's break down the code step by step:

# ruby
# Copy code
# def hoge(step = 1)
#   current = 0
#   Proc.new {
#     current += step
#   }
# end
# def hoge(step = 1): Defines a method named hoge that accepts an optional argument step with a default value of 1.

# current = 0: Initializes a local variable current with a value of 0. This variable will be captured by the Proc object and can be accessed and modified within the Proc's scope.

# Proc.new { ... }: Creates a new Proc object. Inside the block, there's a code snippet that increments the current variable by the specified step.

# So, when you call the hoge method, it returns a Proc that you can later execute. This Proc increments the current variable by the value of step each time it's executed.

# Here's an example of how you might use this:

# ruby
# Copy code
# my_proc = hoge(2)  # Create a Proc with a step of 2
# puts my_proc.call  # Increments current by 2, so the output is 2
# puts my_proc.call  # Increments current by 2 again, so the output is 4

# another_proc = hoge  # Create a Proc with the default step of 1
# puts another_proc.call  # Increments current by 1, so the output is 5
# In the above example, the hoge method creates Proc objects that increment the current variable by the specified step or the default step each time they are called using .call().





# 47
次のコードを実行するとどうなりますか

# list.txt
1
2
3
4
io = File.open('list.txt')

while not io.eof?
  io.readlines
  io.seek(0, IO::SEEK_CUR)
  p io.readlines
end
# 選択肢
["1\n", "2\n", "3\n", "4\n"]と表示される

# 選択肢
["4\n", "3\n", "2\n", "1\n"]と表示される

# 選択肢 #=>  ✅
[]

# 選択肢
エラーが発生する






# Memo
# ストリームがファイルの終端に達した場合、true を返します。そうでない場合、false を返します。

f = File.new("testfile")
dummy = f.readlines
f.eof   #=> true





# 48
次のプログラムを実行するとどうなりますか

hash = {a: 100, b: 200}

def splat_hash(a, b)
  p a
  p b
end

splat_hash(*hash)
# 選択
# 選択肢
次の内容が出力される。

{a: 100, b: 200}
{a: 100, b: 200}
# 選択肢
次の内容が出力される。

[100, :a]
[200, :b]
# 選択肢
次の内容が出力される。

{a: 100}
{b: 200}
 
# 選択肢 #=>  ✅
次の内容が出力される。

[:a, 100]
[:b, 200]

# Memo
splat_hash(*hash)
#=> これは[a: 100] [b: 200]で受け取られる

# 49
# 次のプログラムを実行するとどうなりますか

chars = "I love apple, banana and grape"

5.times do
  chars = chars.sub("a", "@")
end

p chars
# 選択肢
例外が発生する

# 選択肢 #=>  ✅
"I love @pple, b@n@n@ @nd grape"と表示される

選択
# 選択肢
"I love @pple, b@n@n@ @nd gr@pe"と表示される

# 選択肢
"I love apple, banana and grape"と表示される






# Memo
# sub Method
# 文字列中で pattern にマッチした最初の部分を文字列 replace で置き換えた文字列を生成して返します。
p 'abcdefg'.sub(/def/, '!!')          # => "abc!!g"
p 'abcabc'.sub(/b/, '<<\&>>')         # => "a<<b>>cabc"
p 'xxbbxbb'.sub(/x+(b+)/, 'X<<\1>>')  # => "X<<bb>>xbb"

# subは第一引数の検索対象のパターンと、第二引数の置換後の文字列を使って１回だけレシーバーの文字列を置換します。

# p "Hi, I love Ruby.".sub(/[A-Z]/, "*") # "*i, I love Ruby."と表示される
# p "Hi, I love Ruby.".sub("Ruby", "Elm") # "Hi, I love Elm."と表示される
# 置換した結果はレシーバーと異なるオブジェクトIDで得ることが出来ます。

# chars = "I love programming language."
# sub_chars = chars.sub("language", "Language")

# p chars.__id__     # 70265002736720
# p sub_chars.__id__ # 70265002716020
# 問題では置換を５回していますので、"I love @pple, b@n@n@ @nd grape"が正解です。