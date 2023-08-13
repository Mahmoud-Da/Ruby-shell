# 1
# 次のコードの実行結果として正しいものを選択してください。

0.upto(5).select(&:odd?)
# 選択肢
[0, 2, 4]#と表示される

# 選択肢 #=>  ✅
[1, 3, 5]#と表示される

# 選択肢
[0, 1, 2, 3, 4, 5]#と表示される

# 選択肢
[2, 4]#と表示される


# Memo
# upto Method
# upto(max) -> Enumerator
# self から max まで 1 ずつ増やしながら繰り返します。 self > max であれば何もしません。

# [PARAM] max:
# 数値
# [RETURN]
# self を返します。

5.upto(10) {|i| print i, " " } # => 5 6 7 8 9 10





#4
# 次のプログラムを実行するとどうなりますか

puts "Ruby-Examination"[5]

# 選択肢 #=>  ✅
Eと表示される

# 選択肢
-と表示される

# 選択肢
NoMethodErrorが発生する

# 選択肢
Ruby-と表示される












# 5
# 次のコードを実行するとどうなりますか

a = "Ruby"
b = " on Rails"
a.append b #=> 配列用のメソッド
a.reverse
p a.index("R", 1)
# 選択肢
8が表示される

# 選択肢 #=>  ✅
エラーが発生する

# 選択肢
4が表示される

# 選択肢
nilが表示される




# Memo
# index Method
# 文字列のインデックス pos から右に向かって pattern を検索し、
# 最初に見つかった部分文字列の左端のインデックスを返します。見つからなければ nil を返します。

# 引数 pattern は探索する部分文字列または正規表現で指定します。

# pos が負の場合、文字列の末尾から数えた位置から探索します。
p "astrochemistry".index("str")         # => 1
p "regexpindex".index(/e.*x/, 2)        # => 3
p "character".index(?c)                 # => 0

p "foobarfoobar".index("bar", 6)        # => 9
p "foobarfoobar".index("bar", -6)       # => 9
p "foobarfoobar".index("f", 0)          # => 0   (where the index of first f)
p "foobarfoobar".index("f", 1)          # => 6   (where the index of second f)






#11
# 以下の実行結果となる選択肢を選んでください。

a = [1, 2, 3, 4, 5]
b = [2, 4, 6]
実行結果

[2, 4, 6]
# 選択肢
(a - b).map(&:next)
# 選択肢
a & b
選択
# 選択肢
a && b
# 選択肢
a | b

# Memo
Enumerable#mapメソッドは、レシーバの各要素に対して引数で指定した処理を行なった結果を含む配列を返します。

[1, 2, 3].map(&:to_s)                # => ["1", "2", "3"]
[1, 2, 3].map { |n| n + 1 }          # => [2, 3, 4]
Integer#nextメソッドはレシーバの次の整数を返します。

1.next #=> 2
10.next #=> 11











#13
# Fileクラスのクラスメソッドを選択してください。

#選択肢 #=>  ✅
File.chmod
#選択肢
File.pwd
#選択肢 #=>  ✅
File.delete
#選択肢
File.home















#15
# 次のコードを実行するとどうなりますか

p "Hello%d" % 5
# 選択肢
"HelloHelloHelloHelloHello"と表示される

# 選択肢
"Hello"と表示される

# 選択肢 #=>  ✅
"Hello5"と表示される

# 選択肢
エラーが発生する










#19
# 次のコードを実行するとどうなりますか。

10.times{|d| print d == 3..d == 5 ? "T" : "F" }
# 選択肢
シンタックスエラーとなる

# 選択肢
FFFFFFFFFF と表示される

# 選択肢
FFFTFTFFFF と表示される

# 選択肢 #=>  ✅
FFFTTTFFFF と表示される







#20
次のコードを実行するとどうなりますか

h = {a: 100}
h.each {|p|
  p p.class
}

# 選択肢 #=>  ✅
Arrayと表示される

# 選択肢
Hashと表示される

# 選択肢
Symbolと表示される

# 選択肢
Fixnumと表示される











#25
# 次のコードを実行するとどうなりますか

a = "Ruby"
b = " on Rails"
a.concat b
a.reverse!
p a.index("R", 1)
# 選択
# 選択肢
4が表示される

# 選択肢
8が表示される

# 選択肢
3が表示される

# 選択肢
9が表示される


# Memo
# concat Method
# self に文字列 other を破壊的に連結します。 other が 整数である場合は other.chr(self.encoding) 相当の文字を末尾に追加します。

str = "string"
str.concat "XXX"
p str    # => "stringXXX"

str << "YYY"
p str    # => "stringXXXYYY"

str << 65  # 文字AのASCIIコード
p str    # => "stringXXXYYYA"







#27 unknown
# 次のコードの実行結果として正しいものを選択してください。

class Foo
  @@var = 0

  def var
    @@var
  end

  def var=(value) 
    @@var = value
  end
end

class Bar < Foo
end

foo = Foo.new
foo.var += 1
bar = Bar.new
bar.var += 2

puts "#{foo.var}/#{bar.var}"
# 選択肢
NoMthodErorrが発生する

# 選択肢  #=>  ✅
3/3と表示される

# 選択肢
1/2と表示される

# 選択肢
NameErrorが発生する



# Memo
# 問題ではFooクラスにクラス変数@@varが定義されています。

# クラス変数は継承されたクラスにも反映されるので、
# そのクラス変数が定義されているクラスとそのサブクラスの全インスタンスで共有されます。

# FooクラスのインスタンスfooとFooクラスを継承しているBarクラスのインスタンスbarで@@varの値を参照・更新しています。

# foo, barではFooクラスの@@varは共有され実行結果は3/3となります。






# 28
# 次のコードを実行するとどうなりますか

str = "Liberty Fish   \r\n"
str.strip
p str
# 選択肢 #=>  ✅
"Liberty Fish \r\n"と表示される

# 選択肢
"Liberty Fish "と表示される

# 選択肢
"Liberty Fish"と表示される

# 選択肢
"Liberty Fish \r"と表示される








# Memo
# strip Method
# 文字列先頭と末尾の空白文字を全て取り除いた文字列を生成して返します。空白文字の定義は 
# " \t\r\n\f\v" です。また、文字列右側からは "\0" も取り除きますが、左側の "\0" は取り除きません。

例

p "  abc  \r\n".strip    #=> "abc"
p "abc\n".strip          #=> "abc"
p "  abc".strip          #=> "abc"
p "abc".strip            #=> "abc"
p "  \0  abc  \0".strip  # => "\000  abc"   # 右側のみ "\0" も取り除く

str = "\tabc\n"
p str.strip              #=> "abc"
p str                    #=> "\tabc\n" (元の文字列は変化しない)








#31
# 次のコードを実行するとどうなりますか

p "Hello" % 5
# 選択肢
"HelloHelloHelloHelloHello"と表示される

# 選択肢 #=>  ✅
"Hello"と表示される

# 選択肢
"Hello5"と表示される

# 選択肢
エラーが発生する



















#32
# 次のコードと同じ実行結果になるものを選択してください。

str = "abcdefgh"
puts str[4..6]
# 選択肢
puts str[-3..6]

選択
# 選択肢 #=>  ✅
puts str[4...-1]

# 選択肢
puts str[4..0]

# 選択肢
puts str[-4...7]







# Memo
# str[4...-1] is used to extract a substring. The range [4...-1] includes indices from 4 up to (but not including) the last index, which is -1.

# Index 4 corresponds to the character 'e'.
# The index -1 in Ruby refers to the last element of the string, which is 'h'.


# In Ruby, string indexing and slicing can be done using the square brackets notation. The notation str[start_index...end_index] is used to extract a substring from the string str, where:

# start_index is the index of the first character to include in the substring.
# end_index is the index of the character just after the last character to include in the substring.
# The notation uses a half-open range, which means the starting index is included in the substring, but the ending index is not.

# However, the negative index values have a special meaning in Ruby:

# A negative index refers to counting from the end of the string, where -1 is the index of the last character, -2 is the second-to-last character, and so on.
# So, when you use str[4...-1]:

# 4 is the starting index. It refers to the character at the 5th position in the string (remember, indexing starts from 0).
# -1 is the ending index. It refers to the character just before the last character in the string.
# The resulting substring includes characters from index 4 up to (but not including) the character at index -1.

# Here's an example with the string "abcdefgh":

string = "this is a string"
string.slice!(2)        #=> "i"
string.slice!(3..6)     #=> " is "
string.slice!(/s.*t/)   #=> "sa st"
string.slice!("r")      #=> "r"
string[3...6]           #=> "s i"   the index 3 is [i] then we read six index from [i] so we have [s]
string[3...-1]          #=> "s is a strin"
string[3...-2]          #=> "s is a stri"
string                  #=> "thing"



# .., ...は範囲オブジェクトを生成します。
# ..は終端を含み、...は終端を含みません。
# 範囲にマイナスを指定する事で後ろの要素から指定することができます。

# 例

puts "abc"[0..2] # => abc
puts "abc"[0...2] # => ab
puts "abc"[0..-2] # => ab




# 35
# 次のコードを実行するとどうなりますか

arr = (1..30).to_a
container = []

arr.each_cons(7) do |i|
  container << i
end

p container.length
# 選択肢 #=>  ✅
24と表示される

# 選択肢
5と表示される

# 選択肢
7と表示される

# 選択肢
0と表示される





# Memo

arr.each_cons(7) do |i|
    container << i
end
=>
[[1, 2, 3, 4, 5, 6, 7],
 [2, 3, 4, 5, 6, 7, 8],
 [3, 4, 5, 6, 7, 8, 9],
 [4, 5, 6, 7, 8, 9, 10],
 [5, 6, 7, 8, 9, 10, 11],
 [6, 7, 8, 9, 10, 11, 12],
 [7, 8, 9, 10, 11, 12, 13],
 [8, 9, 10, 11, 12, 13, 14],
 [9, 10, 11, 12, 13, 14, 15],
 [10, 11, 12, 13, 14, 15, 16],
 [11, 12, 13, 14, 15, 16, 17],
 [12, 13, 14, 15, 16, 17, 18],
 [13, 14, 15, 16, 17, 18, 19],
 [14, 15, 16, 17, 18, 19, 20],
 [15, 16, 17, 18, 19, 20, 21],
 [16, 17, 18, 19, 20, 21, 22],
 [17, 18, 19, 20, 21, 22, 23],
 [18, 19, 20, 21, 22, 23, 24],
 [19, 20, 21, 22, 23, 24, 25],
 [20, 21, 22, 23, 24, 25, 26],
 [21, 22, 23, 24, 25, 26, 27],
 [22, 23, 24, 25, 26, 27, 28],
 [23, 24, 25, 26, 27, 28, 29],
 [24, 25, 26, 27, 28, 29, 30]]


# The given code generates an array arr containing numbers from 1 to 30 and then uses the each_cons method to iterate over consecutive groups of 7 numbers in the array. 
# It stores each group of 7 numbers in the container array and finally prints the length of the container array.

# Here's the breakdown of the code:

# The range (1..30) is converted to an array using the to_a method, resulting in the array arr containing numbers from 1 to 30.
# The each_cons(7) method is used to iterate over consecutive groups of 7 numbers in the arr array.
# Inside the block, each group of 7 numbers is represented by the local variable i, and it's added to the container array.
# After the iteration is complete, the container array will contain all the groups of 7 consecutive numbers from the original array.
# The p container.length statement prints the length of the container array, which corresponds to the number of groups of 7 consecutive numbers.
# Since the original array has 30 numbers and you are creating groups of 7 numbers each, there will be a total of 30 - 7 + 1 = 24 groups of 7 consecutive numbers.

# Therefore, the code will output: 24










#36
# 次のプログラムを実行するとどうなりますか

raise ['Error Message']
# 選択肢
StandardErrorが発生して、Error Messageが表示される

# 選択肢
StandardErrorが発生して、['Error Message']が表示される

# 選択肢
RuntimeErrorが発生して、Error Messageが表示される

選択
# 選択肢 #=>  ✅
TypeErrorが発生して、exception class/object expectedが表示される











# 40
# 次のコードを実行するとどうなりますか

s = <<-EOF
      Hello,
      Ruby
      EOF

p s
# 選択肢
"Hello,\nRuby\n"と表示される

# 選択肢
"Hello,\nRuby\nEOF"と表示される

# 選択肢 #=>  ✅
" Hello,\n Ruby\n"と表示される

# 選択肢
エラーが発生する



#46
# 次のコードを実行するとどうなりますか

def foo(n)
  n ** n
end

puts foo (2) * 2
# 選択肢
8と表示される

# 選択肢 #=>  ✅
256と表示される

# 選択肢
16777216と表示される

# 選択肢
nilと表示される










# 47
# 次のプログラムを実行すると何が表示されますか

hash = { a: 100, b: 200, c: 300, a: 150, c: 250 }
p hash
# 選択肢 #=>  ✅
{:a=>150, :b=>200, :c=>250}
# 選択肢
{ a: 100, b: 200, c: 300, a: 150, c: 250 }
# 選択肢
{:a=>100, :b=>200, :c=>300}
# 選択肢
{:a=>100, :b=>200, :c=>250}


# Memo
# ハッシュが複数されたら、最新のキーのvalueが表示されます。








# 49
# 次のプログラムの実行結果として正しいものを選択してください。

arr = ["c", 2, "a", 3, 1, "b"]
arr.sort
p arr
# 選択肢
["c", 2, "a", 3, 1, "b"]と表示される

# 選択肢
ArgumentErrorになる

# 選択肢
[1, 2, 3, "a", "b", "c"]と表示される

# 選択肢
["a", "b", "c", 1, 2, 3]と表示される


# Memo
# sort Method
# 配列の内容をソートします。要素同士の比較は <=> 演算子を使って行います。
# sort はソートされた配列を生成して返します。 sort! は self を破壊的にソートし、self を返します。

ary1 = [ "d", "a", "e", "c", "b" ]
p ary1.sort                             #=> ["a", "b", "c", "d", "e"]

ary2 = ["9", "7", "10", "11", "8"]
p ary2.sort                             #=> ["10", "11", "7", "8", "9"] (文字列としてソートするとこうなる)
p ary2.sort{|a, b| a.to_i <=> b.to_i }  #=> ["7", "8", "9", "10", "11"] (ブロックを使って数字としてソート)

# sort_by を使っても良い
p ary2.sort_by{|x| x.to_i }             #=> ["7", "8", "9", "10", "11"]








arr.sort! #でしたら =>  ArgumentErrorになる