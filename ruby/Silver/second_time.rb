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

# 選択肢
def bar(n)
  puts n
end

bar 5
# 選択肢
def bar(n)
  puts n
end

bar (10)
選択
# 選択肢
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

bar 5, 6, 7, 8








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


