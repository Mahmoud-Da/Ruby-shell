#1
# 期待した出力結果になるようにXXXXに適切なコードを選べ

d = Date.new(2015, 1, 5)
puts d.strftime(XXXX)
# 出力結果
01/05/15
# 選択
# 選択肢
"%x"

# 選択肢
"%m/%d/%Y"

# 選択肢
"%m/%D/%y"

# 選択肢
"%M/%d/%y"




#Memo
t = Time.new(2001,2,3,4,5,6,"+09:00")
p t.strftime("%Y%m%d")           # => 20010203                  Calendar date (basic)
p t.strftime("F")               # => 2001-02-03                Calendar date (extended)
p t.strftime("%Y-%m")            # => 2001-02                   Calendar date, reduced accuracy, specific month
p t.strftime("%Y")               # => 2001                      Calendar date, reduced accuracy, specific year
p t.strftime("%C")               # => 20                        Calendar date, reduced accuracy, specific century
p t.strftime("%Y%j")             # => 2001034                   Ordinal date (basic)
p t.strftime("%Y-%j")            # => 2001-034                  Ordinal date (extended)
p t.strftime("%GW%V%u")          # => 2001W056                  Week date (basic)
p t.strftime("%G-W%V-%u")        # => 2001-W05-6                Week date (extended)
p t.strftime("%GW%V")            # => 2001W05                   Week date, reduced accuracy, specific week (basic)
p t.strftime("%G-W%V")           # => 2001-W05                  Week date, reduced accuracy, specific week (extended)
p t.strftime("%H%M%S")           # => 040506                    Local time (basic)
p t.strftime("%T")               # => 04:05:06                  Local time (extended)
p t.strftime("%H%M")             # => 0405                      Local time, reduced accuracy, specific minute (basic)
p t.strftime("%H:%M")            # => 04:05                     Local time, reduced accuracy, specific minute (extended)
p t.strftime("%H")               # => 04                        Local time, reduced accuracy, specific hour
p t.strftime("%H%M%S,%L")        # => 040506,000                Local time with decimal fraction, comma as decimal sign (basic)
p t.strftime("%T,%L")            # => 04:05:06,000              Local time with decimal fraction, comma as decimal sign (extended)
p t.strftime("%H%M%S.%L")        # => 040506.000                Local time with decimal fraction, full stop as decimal sign (basic)
p t.strftime("%T.%L")            # => 04:05:06.000              Local time with decimal fraction, full stop as decimal sign (extended)
p t.strftime("%H%M%S%z")         # => 040506+0900               Local time and the difference from UTC (basic)
p t.strftime("%T%:z")            # => 04:05:06+09:00            Local time and the difference from UTC (extended)
p t.strftime("%Y%m%dT%H%M%S%z")  # => 20010203T040506+0900      Date and time of day for calendar date (basic)
p t.strftime("%FT%T%:z")         # => 2001-02-03T04:05:06+09:00 Date and time of day for calendar date (extended)
p t.strftime("%Y%jT%H%M%S%z")    # => 2001034T040506+0900       Date and time of day for ordinal date (basic)
p t.strftime("%Y-%jT%T%:z")      # => 2001-034T04:05:06+09:00   Date and time of day for ordinal date (extended)
p t.strftime("%GW%V%uT%H%M%S%z") # => 2001W056T040506+0900      Date and time of day for week date (basic)
p t.strftime("%G-W%V-%uT%T%:z")  # => 2001-W05-6T04:05:06+09:00 Date and time of day for week date (extended)
p t.strftime("%Y%m%dT%H%M")      # => 20010203T0405             Calendar date and local time (basic)
p t.strftime("%FT%R")            # => 2001-02-03T04:05          Calendar date and local time (extended)
p t.strftime("%Y%jT%H%MZ")       # => 2001034T0405Z             Ordinal date and UTC of day (basic)
p t.strftime("%Y-%jT%RZ")        # => 2001-034T04:05Z           Ordinal date and UTC of day (extended)
p t.strftime("%GW%V%uT%H%M%z")   # => 2001W056T0405+0900        Week date and local time and difference from UTC (basic)
p t.strftime("%G-W%V-%uT%R%:z")  # => 2001-W05-6T04:05+09:00    Week date and local time and difference from UTC (extended)





#2
# 次のコードを実行するとどうなりますか

begin
  raise StandardError.new
rescue => e
  puts e.class
end
# 選択肢
エラーが発生する

# 選択肢
StandardErrorと表示される

# 選択肢
RuntimeErrorと表示される

# 選択肢
Exceptionと表示される




#Memo

# raise(error_type, message, traceback) -> ()[permalink][rdoc][edit]
# 自身が表すスレッドで強制的に例外を発生させます。

# [PARAM] error_type:
# Kernel.#raise を参照してください。
# [PARAM] message:
# Kernel.#raise を参照してください。
# [PARAM] traceback:
# Kernel.#raise を参照してください。
Thread.new {
  sleep 1
  Thread.main.raise "foobar"
}

begin
  sleep
rescue
  p $!, $@
end

=> #<RuntimeError: foobar>
   ["-:3"]


# example 2
# 基本文法
# 例外処理の基本は以下の様な形式になります。

begin 
  # エラーを発生させる可能性のあるコード。
rescue => e # 例外オブジェクトを代入した変数。
  # begin~rescueの間でエラーが発生した場合に実行されるコード。
end
コード例
begin 
  raise # エラーを発生させます。
rescue => e
  p e #=> RuntimeError
end



コード例
begin 
  raise StandardError.new("Message")
rescue => e
  p e.class #=> StandardError
  p e.message #=> "Message"
  p e.backtrace #=> ["(repl):4:in `<main>'", "/run_dir/repl.rb:41:in `eval'", "/run_dir/repl.rb:41:in `run'", "/run_dir/repl.rb:57:in `handle_eval'", "/run_dir/repl.rb:170:in `start'", "/run_dir/repl.rb:177:in `start'", "/run_dir/repl.rb:181:in `<main>'"]
end



Ensure
ensureを使用する事でエラーの有無に関わらず処理を実行する事ができます。

コード例1(エラーがない場合)
begin 
  "no Error"
rescue => e
  p e.message # エラーはないので実行されません。
ensure 
  p "絶対実行" #=> 絶対実行
end
コード例2(エラーが発生した場合)
begin 
  raise StandardError.new('error')
rescue => e
  p e.message #=> error
ensure 
  p "絶対実行" #=> 絶対実行
end



Retry
文字通り処理を再実行します。

コード例
file = ARGV[0]

begin
  io = File.open( file )
rescue
  # ファイルを開く際にエラーが発生した場合は処理が行われる。
  sleep( 10 )
  # begin ~ rescue内の処理を再び実行します。
  retry
end






Rescue修飾子
if修飾子のように rescueを修飾子として使用する事ができます。

コード例
raise "Error" rescue p "rescued" #=> rescued





メソッド内の例外
メソッド内ではbeginとendを省略して以下のように書く事ができます。

def method
  # エラーを発生させる可能性のあるコード。
 rescue => e 
  # エラー発生時の処理。
end




コード例
def method
 raise 'error'
 rescue => e 
  p e.message #=> error
 ensure
  p 'ensured' #=> ensured
end
method #=> "error"




複数の例外処理
以下のように対応するエラー毎に複数のrescueを記載する事で、各エラー毎に別の対応をする事ができます。

begin 
  rescue Exception1, Exception2 => e
  # Exception1 か Exception2が発生した際に処理が実行される。
  rescue Exception3 => e
  # Exception3が発生した際に処理が実行される。
  rescue => e
   # Exception1,2,3以外の例外が発生した際に処理が実行される。
end




コード例
begin 
  raise StandardError
  rescue StandardError, RangeError   
    p 'Standard or Range Error'
  rescue RuntimeError
    p 'Runtime Error'
  rescue => e
    p 'some other error'
end

#=> "Standard or Range Error"
#引用　https://qiita.com/k-penguin-sato/items/1a6c8096effccb19565a






#3
# 次のプログラムと同じ結果になる選択肢を選んでください。

p [1,2,3,4,5].partition(&:odd?)
# 選択肢
p [1,2,3,4,5].partition(!&:even?) #=> Error
# 選択肢
p [1,2,3,4,5].partition(!:even?)
# 選択肢
p [1,2,3,4,5].partition { |value| value.odd? }
# 選択肢
p [1,2,3,4,5].partition(:odd?)



#Memo
# partition Method
# The partition method divides the elements of an array into two arrays based on a condition specified in a block.
#  The elements that satisfy the condition specified in the block are placed in the first array,
#  and the elements that do not satisfy the condition are placed in the second array. 
# The partition method returns an array containing both of these arrays.


# 各要素を、ブロックの条件を満たす要素と満たさない要素に分割します。各要素に対してブロックを評価して、その値が真であった要素の配列と、偽であった要素の配列の 2 つを配列に入れて返します。

# ブロックを省略した場合は Enumerator を返します。

例

[10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0].partition {|i| i % 3 == 0 }
 #=> [[9, 6, 3, 0], [10, 8, 7, 5, 4, 2, 1]]










#4
# 次のコードを実行するとどうなりますか

h = {a: 100, b: 200}
h.clear
p h
# 選択肢
nilと表示される

# 選択肢
{:a => nil, :b => nil}と表示される

# 選択肢
{}と表示される

# 選択肢
エラーが発生する









#5
# Arrayクラスでdelete_ifと同じ動作をするメソッドを選びなさい

# 選択肢
reject

# 選択肢
reject_if

# 選択肢
reject!

# 選択肢
delete




#Memo
delete_if -> Enumerator
reject! -> Enumerator
# 要素を順番にブロックに渡して評価し、その結果が真になった要素をすべて削除します。 delete_if は常に self を返しますが、reject! は要素が 1 つ以上削除されれば self を、 1 つも削除されなければ nil を返します。

# ブロックが与えられなかった場合は、自身と reject! から生成した Enumerator オブジェクトを返します。返された Enumerator オブジェクトの each メソッドには、もとの配列に対して副作用があることに注意してください。

# 例

a = [0, 1, 2, 3, 4, 5]
a.delete_if{|x| x % 2 == 0}
p a #=> [1, 3, 5]

a = [0, 1, 2, 3, 4, 5]
e = a.reject!
e.each{|i| i % 2 == 0}
p a 











#6
# 次のコードを実行するとどうなりますか

hoge = "a".to_h
puts hoge.class
# 選択肢
Stringと表示される

# 選択肢
Arrayと表示される

# 選択肢
Hashと表示される

# 選択肢
エラーになる














#7
# 実行してもエラーにならないコードを選べ

# 選択肢 #=>  ✅
def bar(n)
  puts n
end

bar 5
# 選択肢 #=>  ✅
def bar(n)
  puts n
end

bar (10)
選択
# 選択肢 #=>  ✅
def bar(*n1, n2)
  puts n1
  puts n2
end

bar 5, 6, 7, 8
# 選択肢
def bar(*n1, n2, *n3)
  puts n1
  puts n2
end

bar 5, 6, 7, 8  #=> unexpected * (SyntaxError) 








#Memo
# Splat parameter
# which allows the method to accept a variable number of arguments as an array.
def method(*args)
    args
  end
  
p method('Ruby', name: 'yamada') # => ["Ruby", {:name=>"yamada"}]








#8
# 次のコードを実行するとどうなりますか

h = {a: 100, b: 200}
p h.invert
# 選択肢
{100=>:a, 200=>:b}と表示される

# 選択肢
{200=>:a, 100=>:b}と表示される

# 選択肢
{:a=>100, :b=>200}と表示される

# 選択肢
{:a=>200, :b=>100}と表示される











#9
Hashクラスについて適切な記述を選びなさい（複数選択）

# 選択肢
Hash({})で空のHashオブジェクトを生成できる

# 選択肢
to_hで配列からハッシュを生成できる

# 選択肢
mergeは破壊的メソッドである

# 選択肢
clearは非破壊的メソッドである








#10
# 次のコードを実行するとどうなりますか

arr = [1,2].product([3,4]).transpose
p arr
# 選択肢
[[1, 3], [1, 4], [2, 3], [2, 4]]と表示される

# 選択肢
[[1, 3], [2, 4]]と表示される

# 選択肢
[1, 2]と表示される

# 選択肢
[[1, 1, 2, 2], [3, 4, 3, 4]]と表示される




# Memo
# transpose Method
# 自身を行列と見立てて、行列の転置(行と列の入れ換え)を行います。転置した配列を生成して返します。空の配列に対しては空の配列を生成して返します。

# それ以外の一次元の配列に対しては、例外 TypeError が発生します。各要素のサイズが不揃いな配列に対しては、例外 IndexError が発生します。

例

p [[1,2],
   [3,4],
   [5,6]].transpose
# => [[1, 3, 5], [2, 4, 6]]

p [].transpose
# => []

p [1,2,3].transpose

# => -:1:in `transpose': cannot convert Fixnum into Array (TypeError)
#       from -:1

p [[1,2],
   [3,4,5],
   [6,7]].transpose
# => -:3:in `transpose': element size differ (3 should be 2) (IndexError)










#11 
# 実行後の textfile.txt 内容になるようにXXXXに適切なコードを選べ

open('textfile.txt', XXXX) do |f|
  data = f.read.upcase
  f.rewind
  f.puts data
end
# 実行前の textfile.txt 内容

recode 1
recode 2
recode 3
# 実行後の textfile.txt 内容

RECODE 1
RECODE 2
RECODE 3
# 選択肢
'w'

# 選択肢
'a+'

# 選択肢
'w+'

# 選択肢 #=> ✅
'r+'

#同じ処理で、read/write しているから


#Memo
# "r", RDONLY
# ファイルを読み込みモードでオープンします。（デフォルトのモード）

# "w", WRONLY|CREAT|TRUNC
# ファイルを書き込みモードでオープンします。オープン時にファイルがすでに存在していればその内容を空にします。

# "a", WRONLY|CREAT|APPEND
# ファイルを書き込みモードでオープンします。出力は 常に ファイルの末尾に追加されます。例えば、ファイルオープン中にファイルのサイズが小さくなってもその末尾に出力されます。

# 以上の3つの後に "+" があれば、ファイルは読み書き両用モード (RDWR) でオープンされます。

# "r+"
# ファイルの読み書き位置は先頭にセットされます。

# "w+"
# "r+" と同じですが、オープン時にファイルがすでに存在していればその内容を空にします。

# "a+"
# "r+"と同様、ファイルの読み込み位置は先頭にセットされますが、書き込みは常にファイル末尾に行われます。書き込みは IO#seek などの影響を受けません。


# 'r' for read mode
# 'w' for write mode
# 'a' for append mode

rewind -> 0[permalink][rdoc][edit]
ファイルポインタを先頭に移動します。IO#lineno は 0 になります。

[EXCEPTION] IOError:
既に close されている場合に発生します。
f = File.new("testfile")
f.readline               #=> "This is line one\n"
f.rewind                 #=> 0
f.lineno                 #=> 0
f.readline               #=> "This is line one\n"







#12
# 次のコードを実行するとどうなりますか

a, = (1..5).partition(&:odd?)
p a
# 選択肢
[[2, 4]]と表示される

# 選択肢
[[1, 3, 5]]と表示される

# 選択肢
[2, 4]と表示される

# 選択肢
[1, 3, 5]と表示される










#13
# 次のコードを実行するとどうなりますか

str = "1;2:3;4"
p str.split(";|:")
# 選択肢
["1", "2", "3", "4"]と表示される

# 選択肢
["4", "3", "2", "1"]と表示される

# 選択肢
["1;2:3;4"]と表示される

# 選択肢
エラーが発生する





















#14
# 次のコードを実行するとどうなりますか

a = [1, 2, 3, 4]
p a[1..2]
# 選択肢
[1, 2]と表示される

# 選択肢
[1, 2, 3]と表示される

# 選択肢
[2, 3, 4]と表示される

# 選択肢
[2, 3]と表示される















#15
# 次のコードを実行するとどうなりますか

hoge = "a".to_a
puts hoge.class
# 選択肢
Stringと表示される

# 選択肢
Arrayと表示される

# 選択肢
Hashと表示される

# 選択肢
エラーになる



#Memo
# stringはArrayやHashなどに変更出来ない。








#16
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
# 選択肢
class MyModule

end









#17
# 次のコードを実行するとどうなりますか

arr = [1,2].product([3,4])
p arr
# 選択肢
[[1, 3], [1, 4], [2, 3], [2, 4]]と表示される

# 選択肢
[[1, 3], [2, 4]]と表示される

# 選択肢
[1, 2]と表示される

# 選択肢
[[1, 1, 2, 2], [3, 4, 3, 4]]と表示される










#18

h = {a: 100, b: 200}
p h.to_a
# 選択肢
[[:a, 100], [:b, 200]]と表示される

# 選択肢
[[:a, 200], [:b, 100]]と表示される

# 選択肢
[[100, :a], [200, :b]]と表示される

# 選択肢
[[100, :b], [200, :a]]と表示される









#19
# Dirクラスのクラスメソッドを選択してください。

# 選択肢
Dir.delete
# 選択肢
Dir.dirname
# 選択肢
Dir.chmod
# 選択肢
Dir.rmdir


#Memo
# rmdir Method
# ディレクトリ dir を削除します。
# ディレクトリにファイルが残っていた場合は削除に失敗します。


require 'fileutils'
FileUtils.rmdir('somedir')
FileUtils.rmdir(%w(somedir anydir otherdir))
# 実際にはディレクトリの削除は行わずにメッセージ出力のみ
FileUtils.rmdir('somedir', verbose: true, noop: true)












#20
# 次のコードを実行するとどうなりますか

a1 = "abc"
a2 = 'abc'

print a1.eql? a2
print a1 == a2
# 選択肢
falsetrueと表示される

# 選択肢
truetrueと表示される

# 選択肢
falsefalseと表示される

# 選択肢
truefalseと表示される













⭕️#21⭕️
# 実行結果がRExと表示されるプログラムを選択してください。

# 選択肢 #=> ✅
CONST = "REx"

def foo
  CONST
end

puts foo

# 選択肢
def foo
  CONST = "REx"
end

puts foo
# 選択肢 #=> ✅
def foo
  var = "REx"
end

puts foo
# 選択肢 #=> ✅
var = "REx"

def foo
  var
end

puts foo








#22
# 次のプログラムの実行結果として正しいものを選択してください。

class Foo
  attr_accessor :a
end

foo = Foo.new
foo.a = "REx"
puts foo.a
# 選択肢
nilと表示される

# 選択肢
RExと表示される

# 選択肢
NoMethodErrorが発生する

# 選択肢
NameErrorが発生する





#23
# モジュールの定義で正しいものを選んでください。

# 選択肢
class MyModule

end
# 選択肢
module(MyModule) {

}
# 選択肢
module MyModule

end
# 選択肢
module(MyModule) do

end



#24
XXXXに記述してもエラーが発生しないコードを選んでください。

hash = Hash.new {|h, k| raise(KeyError, "Key #{k} does not exist in hash #{h}") }

XXXX
# 選択肢
p hash[:a]
# 選択肢
hash.default = nil
p hash[:a]
# 選択肢
proc = hash.default_proc
p proc.call(1, 2) 
# 選択肢
hash.default_proc = nil
p hash[:a]





#Memo
# default Method
# ハッシュのデフォルト値を返します。
h = Hash.new("default")
p h.default        #=> "default"
p h.default(:some) #=> "default"
p h #=>{}

h = Hash.new{|hash, key| hash[key] ="default" }
p h.default        #=> nil
p h.default(:some) #=> "default"
p h                #=> {:some=>"default"}

h = Hash.new
p h.default        #=> nil
p h.default(:some) #=> nil
p h                #=> {}







#25
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
4が表示される

# 選択肢
5が表示される

# 選択肢
例外が発生する

# 選択肢
0が表示される









#26
# 次のコードを実行するとどうなりますか

a = [1]
a[5] = 10
a.compact!
p a
# 選択肢
エラーが発生する

# 選択肢 #=> ✅
[1, 10]と表示される

# 選択肢
[1, nil, nil, nil, nil, 10]と表示される

# 選択肢
[1, 10, 10, 10, 10, 10]と表示される




#27
次のプログラムの説明で正しい選択肢を選んでください。

str = <<EOS
よりニッチに。よりユニークに。
  IT市場はもちろん、ヘルスケア・医療・介護など
    次世代市場における企業や生活者のユーザビリティを向上させる
      サービス、ソフトウェアを開発しています。
    #{1 + 1}
EOS
puts str
# 選択肢
式展開が行われ、スペース及び改行は正しく評価される。

よりニッチに。よりユニークに。
  IT市場はもちろん、ヘルスケア・医療・介護など
    次世代市場における企業や生活者のユーザビリティを向上させる
      サービス、ソフトウェアを開発しています。
    2
# 選択肢
式展開が行われず、スペース及び改行は正しく評価される。

よりニッチに。よりユニークに。
  IT市場はもちろん、ヘルスケア・医療・介護など
    次世代市場における企業や生活者のユーザビリティを向上させる
      サービス、ソフトウェアを開発しています。
    #{1 + 1}
# 選択肢
式展開が行われるが、スペース及び改行は評価されない。

よりニッチに。よりユニークに。IT市場はもちろん、ヘルスケア・医療・介護など次世代市場における企業や生活者のユーザビリティを向上させるサービス、ソフトウェアを開発しています。2
# 選択肢
式展開が行われず、スペース及び改行は評価されない。

よりニッチに。よりユニークに。IT市場はもちろん、ヘルスケア・医療・介護など次世代市場における企業や生活者のユーザビリティを向上させるサービス、ソフトウェアを開発しています。#{1 + 1}





#28
class Foo
  attr_reader :a

  def initialize
    @a = "REx"
  end
end

foo = Foo.new
puts foo.a
# 選択肢
RExと表示される

# 選択肢
nilと表示される

# 選択肢
NoMethodErrorが発生する

# 選択肢
NameErrorが発生する








#29
Hashクラスについて適切な記述を選びなさい（複数選択）

# 選択肢
member?でハッシュがキーをもつか判断できる

# 選択肢
to_aでハッシュから配列を生成できる

# 選択肢
updateは破壊的メソッドである

# 選択肢
clearの戻り値は空のハッシュ

# Memo
# member Method
# 与えられたタスク名が自身に含まれる場合は真を返します。そうでない場合は偽を返します。
# task default: :test_rake_app
# task :test_rake_app do
#   invocation_chain = Rake::InvocationChain.new("task_a", Rake::InvocationChain::EMPTY)
#   invocation_chain.member?("task_a") # => true
#   invocation_chain.member?("task_b") # => false
# end




#30
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

# 選択肢
%|apple banana orange|


#31
a = [1, 2, 3, 4, 5]

XXXX
実行結果

1
2
3
4
5
# 選択肢
a.each { |n| puts n }
# 選択肢
a.each_index { |n| puts n }
# 選択肢
a.each_with_index { |n, i| puts n }
# 選択肢
a.each_with_index { |n, i| puts i }




# Memo
# each_index Method
# 各要素のインデックスに対してブロックを評価します。

# 以下と同じです。

# 例

(0 ... ary.size).each do |index|
  # ....
end

[1, 2, 3, 4, 5].each_index { |n| puts n } #=> 0, 1, 2, 3, 4


# each_with_index
# 要素とそのインデックスをブロックに渡して繰り返します。
[5, 10, 15].each_with_index do |n, idx|
  p [n, idx]
end
# => [5, 0]
#    [10, 1]
#    [15, 2]







#32
# 次のプログラムと実行結果として正しいものを選択してください。

(x, y), z = 1, 2, 3

p z
# 選択肢
[2, 3]と表示される

# 選択肢
2と表示される

# 選択肢
3と表示される

# 選択肢
ArgumentErrorが発生する



# Memo
# In this case, the valu
(x, y) = 1
z = 2

# Separating Values
Ex:
x, y = 1, 2 #=> x = 1 , y = 2








#33
# 次のコードの実行結果として正しいものを選択してください。

("a".."d").each_with_index do |v, i|
  puts "#{i} / #{v}"
end
# 選択肢
1 / a
2 / b
3 / c
4 / d
# と表示される

# 選択肢
a / 0
b / 1
c / 2
d / 3
# と表示される

# 選択肢
0 / a
1 / b
2 / c
3 / d
# と表示される

# 選択肢
a / 1
b / 2
c / 3
d / 4
# と表示される




#34
Hashクラスについて適切な記述を選びなさい（複数選択）

# 選択肢
Hash[]で空のHashオブジェクトを生成できる

# 選択肢
Hash()で空のHashオブジェクトを生成できる

# 選択肢
revertでキーと値を入れ替えることができる

# 選択肢
fetchでキーにマッチした値を取得できる











#35
# 次のコードを実行するとどうなりますか

h = {a: 100, b: 100}
puts h.invert
# 選択肢
{100=>:a}#と表示される

# 選択肢
{100=>:b}#と表示される

# 選択肢
[[100, :a],[100, :b]]#と表示される

# 選択肢
[[100, :b]]#と表示される









#36
# 次のコードを実行するとどうなりますか

p [1,2,3,4].map { |e| e * e }
# 選択肢
[1, 4, 9, 16]

# 選択肢
#<Enumerator: [1, 2, 3, 4]:map>

# 選択肢
nil

# 選択肢
[1, 2, 3, 4]










#37
Date.today.strftime("%F")と同じ動作をするコードを選びなさい

# 選択肢
Date.today.strftime("%y-%m-%d")

# 選択肢
Date.today.strftime("%y/%m/%d")

# 選択肢
Date.today.strftime("%Y/%m/%d")

# 選択肢
Date.today.strftime("%Y-%m-%d")



# 39
# 以下の変数についての説明のうち、間違っているものをすべて選択してください

# 選択肢
グローバル変数は$から始まる

# 選択肢
クラス変数は@@から始まる

# 選択肢
インスタンス変数は*から始まる

# 選択肢
定数は、アルファベット大文字で始まる







#40
# 次のコードの実行結果として正しいものを選択してください。

IO.read("text.txt", 3, offset = 1)
[text.txtの内容]

REx
Silver
REx
Gold

# 選択肢
"REx\nSilver\nREx\n"と表示される

# 選択肢
"Ex\n"と表示される

# 選択肢
"REx"と表示される

# 選択肢
"Silver\nREx\nGold\n"と表示される







#41
# 次のコードを実行するとどうなりますか

s = ["one", "two", "three"]
s.shift
s.shift
s.unshift("dummy")
s.push "four"
p s
# 選択肢
["one", "two", "three"]#と表示される

# 選択肢
["dummy", "three", "four"]#と表示される

# 選択肢
["dummy", "one", "two", "three"]#と表示される

# 選択肢
["one", "two", "three", "four"]#と表示される











#42
# 次のプログラムと実行結果として正しいものを選択してください。

v1 = false || 1 + 1 == 1.to_i

puts v1
# 選択肢
trueと表示される

# 選択肢
falseと表示される

# 選択肢
1と表示される

# 選択肢
2と表示される









#43
# 次のコードのXXXXに記述するとエラーが発生するコードはどれですか
puts XXXX
# 選択肢
"80"

# 選択肢
0xFF

# 選択肢
7.to_s(3)

# 選択肢
"7".binary


# Memo
# When you have the code puts 7.to_s(3), it means you want to take the number 7 and change it into a special way of writing numbers, like a secret code. This special way is called "base 3".


# In normal numbers, we use ten different symbols (0 to 9) to represent all numbers. 
# But in base 3, we only use three symbols (0, 1, and 2).
#  So, when we change the number 7 into base 3, it becomes 21. This is like saying "two threes and one more."

#
7.to_s(3) #=> 7 base 3
7.to_s(5) #=> 7 base 5


#To convert 7 to base 5, we'll use a similar process as described earlier:

# 7 ÷ 5 = 1 with a remainder of 2 (This means we have 1 group of 5 and 2 left over).
# 1 ÷ 5 = 0 with a remainder of 1 (This means we have 0 groups of 5 and 1 left over).
# If we read the remainders from bottom to top, we get the base 5 representation: 12.

# So, in base 5, the decimal number 7 is represented as 12.

# When you run the code 7.to_s(5) in Ruby, it will return the string "12".





#44
# KeyErrorとStopIterationを捕捉するプログラムを選択肢から選んでください。

# 選択肢 #=> ✅
begin
  # `KeyError`と`StopIteration`が発生する処理
rescue KeyError

rescue StopIteration

end
# 選択肢 #=> ✅ 
begin
  # `KeyError`と`StopIteration`が発生する処理
rescue KeyError, StopIteration

end
# 選択肢
begin
  # `KeyError`と`StopIteration`が発生する処理
rescue [KeyError, StopIteration]

end
# 選択肢 #=> ✅
begin
  # `KeyError`と`StopIteration`が発生する処理
rescue *[KeyError, StopIteration]

end







#45
h = {a: 100, b: 200}
h.delete(:a)
p h
# 選択肢
{:a=>100, :b=>200}と表示される

# 選択肢
{:a=>nil, :b=>200}と表示される

# 選択肢
{:b=>200}と表示される

# 選択肢
エラーが発生する













#46
# 次のプログラムを実行して同じ結果が得られるプログラムを選んでください。

klass = Class.new

hash = {klass => 100}

puts hash[klass]
# 選択
# 選択肢
klass = Class.new

hash = {klass: 100}

puts hash[klass]
# 選択肢
klass = Class.new

hash = {}
hash.store(klass, 100)

puts hash[klass]
# 選択肢
klass = Class.new

hash = {}
hash.store(:klass, 100)

puts hash[klass]
# 選択肢
klass = Class.new

hash = Hash[klass, 100]

puts hash[klass]







#47
Fileクラスのクラスメソッドではないものを選択してください。

# 選択肢
File.dirname
# 選択肢
File.close
# 選択肢
File.home
# 選択肢
File.pwd


# Memo
dirname Method
# filename の一番後ろのスラッシュより前を文字列として返します。スラッシュを含まないファイル名に対しては "."(カレントディレクトリ)を返します。


p File.dirname("dir/file.ext")    # => "dir"
p File.dirname("file.ext")        # => "."


#File.close, File.home, and File.pwd, are not valid as standalone methods in Ruby. 
# File.close is not a method for closing files; you would typically call file.close on an instance of the File class to close a file.
#  File.home is not a standard method in Ruby's File module, and File.pwd is a valid method to get the current working directory
#  using Dir.pwd (since Dir is the class/module for working with directories in Ruby).




#48
# 次のプログラムを実行するとどうなりますか。

x = 1
y = 1.0

print x == y
print x.eql? y
print x.equal? y
print x.equal?(1)
# 選択肢
truetruetruetrueと表示される

# 選択肢
falsefalsefalsefalseと表示される

# 選択肢
truefalsefalsefalseと表示される

# 選択肢
truefalsefalsetrueと表示される



#49
# 次のプログラムの実行結果として正しいものを選択してください。

str = "aaabbcccddd"
p str.scan("c")
# 選択肢
trueと表示される

# 選択肢
["c", "c", "c"]と表示される

# 選択肢
5と表示される

# 選択肢
NoMethodErrorが発生する







#50
# 次のプログラムの実行結果として正しいものを選択してください。

class Foo
  attr_writer :a
end

foo = Foo.new
foo.a = "REx"
puts foo.a
# 選択肢
RExと表示される

# 選択肢
nilと表示される

# 選択肢
NoMethodErrorが発生する

# 選択肢
NameErrorが発生する

