# 2
# 次のコードを実行するとどうなりますか

def foo(n)
  n ** n
end

puts foo(2) * 2
# 選択肢 #=>  ✅
8と表示される


# 選択肢
256と表示される

# 選択肢
16と表示される

# 選択肢
nilと表示される






# 17

問題
次のコードを実行するとどうなりますか

a = [1]
a[5] = 10
a.compact
p a
選択肢
エラーが発生する

選択肢
[1, 10]と表示される

選択肢 #=>  ✅
[1, nil, nil, nil, nil, 10]と表示される

選択
選択肢
[1, 10, 10, 10, 10, 10]と表示される

# Memo 
# a.length = 1の配列の5番目へ値を入れると、配列の長さが拡張されます。未指定の要素へはnilが入ります。

# Array#compactはselfからnilを取り除くメソッドです。
# 問題では、Array#compact!ではないので、selfは変わりません。







# 29
def hoge(n)
  unless n != 3
    "hello"
  elsif n == 5
   "world"
  end
end

str = ''
str.concat hoge(3)
str.concat hoge(5)

puts str
# 選択肢  #=>  ✅
エラーになる

選択
# 選択肢
"helloworld"と表示される

# 選択肢
"worldhello"と表示される

# 選択肢
""と表示される

# Memo
# unlessは条件が成立しない場合に中の処理が実行されます。
# elseを用いることはできますが、elsifを用いることはできません。




# 33
# 実行後の textfile.txt 内容になるようにXXXXに適切なコードを選べ

open('textfile.txt', XXXX) do |f|
  data = f.read.upcase
  f.rewind
  f.puts data
end
実行前の textfile.txt 内容

recode 1
recode 2
recode 3
実行後の textfile.txt 内容

RECODE 1
RECODE 2
RECODE 3
# 選択肢
'w'

# 選択肢
'a+'

# 選択肢
'w+'

# 選択肢
'r+'


# Memoそれぞれの実行結果と解説は以下のようになります。

# w
not opened for reading (IOError) が発生します。
wはファイルを書き込みモードで開くため、f.readでエラーになります。

# a+
recode 1
recode 2
recode 3
RECODE 1
RECODE 2
RECODE 3
a+はファイルを読み込みモード + 追記書き込みモードで開きます。
ファイルの読み込みは、ファイルの先頭から行いますが、書き込みは、ファイルの末尾に行います。
f.rewindでファイルポインタをファイルの先頭に移動したとしても、ファイルの末尾に書き込まれます。

# w+
空ファイルになります。

w+は新規作成・読み込み + 書き込みモードで開きます。
既にファイルが存在する場合は、空になります。

# r+
RECODE 1
RECODE 2
RECODE 3
r+は読み込み + 書き込みモードで開きます。


