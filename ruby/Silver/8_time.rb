# 18
# 次のプログラムを実行するとどうなりますか

hash = {a: 100, b: 200}

def splat_hash(a, b)
  p a
  p b
end

splat_hash(*hash)
# 選択肢
# 次の内容が出力される。

{a: 100, b: 200}
{a: 100, b: 200}
# 選択
# 選択肢
# 次の内容が出力される。

[100, :a]
[200, :b]
# 選択肢
# 次の内容が出力される。

{a: 100}
{b: 200}

# 選択肢 => ✅
# 次の内容が出力される。

[:a, 100]
[:b, 200]













#25
# 次のプログラムの実行結果として正しいものを選択してください。

arr = [5, 3, 8, 1, 4, 2, 6, 9, 0, 7]
arr.sort!{ |a, b | b <=> a }.reverse!
p arr
# 選択肢
[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]と表示される

# 選択肢 => ✅
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]と表示される

# 選択肢
実行時エラーになる

# 選択肢
reverse!メソッドは存在しないためエラーになる


# <=> operator The <=> operator is called the spaceship operator, and it's used for comparison and sorting purposes in Ruby
# It returns -1 if the left operand is less than the right operand, 0 if they are equal, and 1 if the left operand is greater than the right operand.

Ex:
a = 5
b = 10

result = a <=> b

if result == -1
  puts "a is less than b"
elsif result == 0
  puts "a is equal to b"
else
  puts "a is greater than b"
end








#28
# 次のコードを実行するとどうなりますか

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

# 選択肢 => ✅
[]

選択
# 選択肢
エラーが発生する

# Memo
# 以下が、問題コードで使用されているメソッドと説明です。

# IO#eof?: ファイルポインタが終端にある場合、trueを返します。
# IO.readlines: ファイルから全てを読み込みます。
# IO#seek(offset, whence): ファイルポインタをwhenceからoffsetまで移動します。
# IO::SEEK_CUR: 現在のファイルポインタから
# その他whenceで使用できる値はRubyリファレンスを参照してください。
# 4行目で、ファイルから全て読み込んだ時点で、ファイルポインタはファイル終端にあります。
# 5行目は、ファイル終端から0文字移動するため、6行目では[]のみ表示されます。

# 以下のコードは問題コードに行番号をつけています。

1: io = File.open('list.txt')
2: 
3: while not io.eof?
4:   io.readlines
5:   io.seek(0, IO::SEEK_CUR)
6:   p io.readlines
7: end









#31
# 実行後の textfile.txt 内容になるようにXXXXに適切なコードを選べ

open('textfile.txt', XXXX) do |f|
  data = f.read.upcase
  f.rewind
  f.puts data
end
# 実行前の textfile.txt 内容

# recode 1
# recode 2
# recode 3
# 実行後の textfile.txt 内容

# RECODE 1
# RECODE 2
# RECODE 3
# 選択
# 選択肢
'w'

# 選択肢
'a+'

# 選択肢
'w+'

# 選択肢
'r+'


# Memo

# れぞれの実行結果と解説は以下のようになります。

# w+
# recode 2
# w+は新規作成・読み込み + 書き込みモードで開きます。
# 既にファイルが存在する場合は、空になります。
# IO#seekはファイルポインタを指定の位置に移動します。IO:SEEK_SETがファイルの先頭からの位置を指定する識別子です。

# よって、recode 1を書き込み後にファイルの先頭にファイルポインタを移動し、recode 2で上書きしています。

# w
# recode 2
# wは書き込みモードで開きます。
# その他はw+と同様です。

# a+
# recode 1
# recode 2
# a+はファイルを読み込みモード + 追記書き込みモードで開きます。
# ファイルの読み込みは、ファイルの先頭から行いますが、書き込みは、ファイルの末尾に行います。

# a
# recode 1
# recode 2
# aはファイルを追記書き込みモードで開きます。
# ファイルの読み込みを行うことはできません。読み込みを行なった場合は、not opened for reading (IOError)が発生します。

# w
# not opened for reading (IOError) が発生します。
# wはファイルを書き込みモードで開くため、f.readでエラーになります。

# 31
# 実行後の textfile.txt 内容になるようにXXXXに適切なコードを選べ

open('textfile.txt', XXXX) do |f|
  data = f.read.upcase
  f.rewind
  f.puts data
end
# 実行前の textfile.txt 内容

# recode 1
# recode 2
# recode 3
# 実行後の textfile.txt 内容

# RECODE 1
# RECODE 2
# RECODE 3
# 選択
# 選択肢
'w'

# 選択肢
'a+'

# 選択肢
'w+'

# 選択肢
'r+'


# a+
# recode 1
# recode 2
# recode 3
# RECODE 1
# RECODE 2
# RECODE 3
# a+はファイルを読み込みモード + 追記書き込みモードで開きます。
# ファイルの読み込みは、ファイルの先頭から行いますが、書き込みは、ファイルの末尾に行います。
# f.rewindでファイルポインタをファイルの先頭に移動したとしても、ファイルの末尾に書き込まれます。

# w+
# 空ファイルになります。

# w+は新規作成・読み込み + 書き込みモードで開きます。
# 既にファイルが存在する場合は、空になります。

# r+
# RECODE 1
# RECODE 2
# RECODE 3
# r+は読み込み + 書き込みモードで開きます。



#34
実行後の textfile.txt 内容になるようにXXXXに適切なコードを選べ。
ただし、空ファイルは作成済みである。

File.open('testfile.txt', XXXX) do |f|
  f.write("recode 1\n")
  f.seek(0, IO::SEEK_SET)
  f.write("recode 2\n")
end
実行後の textfile.txt 内容

recode 1
recode 2
# 選択
# 選択肢
'w+'

# 選択肢
'w'


# 選択肢  => ✅
'a+'

# 選択肢
'a'





#49
# 次のコードを実行するとどうなりますか

a1 = [1,2,3]
a2 = [4,2,3]

p a1 - a2
# 選択
# 選択肢
[1, 2, 3, 4]
# と表示される

# 選択肢
[2, 3]
# と表示される

# 選択肢  => ✅
[1]
# と表示される

# 選択肢
[1, 2, 3, 4, 2, 3]
# と表示される


#Memo
# The code you provided calculates the difference between two arrays a1 and a2 using the - operator. This operation will return an array containing elements from a1 that are not present in a2. Here's what the code does step by step:


a1 = [1, 2, 3]
a2 = [4, 2, 3]

result = a1 - a2

p result
a1 is [1, 2, 3]
a2 is [4, 2, 3]
# When you perform the operation a1 - a2, it subtracts the elements of a2 from a1. In other words, it returns an array that contains the elements of a1 which are not present in a2. In this case, the result will be [1], because 1 is the only element in a1 that is not present in a2.

# So, when you execute p result, it will print:

# result
[1]





#40
# 次のコードを実行するとどうなりますか

def foo(n)
  n ** n
end

puts foo (2) * 2
# 選択
# 選択肢
8と表示される

# 選択肢
256と表示される

# 選択肢
16777216と表示される

# 選択肢
nilと表示される


# Memo
# foo (2) * 2はメソッド名と引数の間に空白があるため、foo((2) * 2)が呼ばれたと解釈されます。
# よって、4の4乗の256になります。