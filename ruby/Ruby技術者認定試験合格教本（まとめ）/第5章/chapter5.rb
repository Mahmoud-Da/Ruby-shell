"Stringクラス"
# 文字列のクラス

"文字列のエンコーデング取得"
*encoding # 文字列のエンコーデング取得
a = "abc"
a.encoding #=> #<Encoding:UTF-8>

"文字列のエンコーデング変更１"
*encode # 引数で指定した文字コードに変換した新しいインスタンスを返す
*encode! # オプジェクトのエンコーデング変更

a = "abc"
b = a.encode("EUC-JP")
b.encoding #=> #<Encoding:EUC-JP>


"文字列のエンコーデング変更2"
a = "ルビー"
a.encode!("EUC-JP")
a.encoding #=> #<Encoding:EUC-JP>

"文字列の比較"
==
>
>=
<
<=
<=>
casecmp # <=>と同じ

"文字列の比較"
"abc" == "abc" #=> true
"ABC" == "abc" #=> false
"a" < "b" #=> true
"A" > "a" #=> falses
"aa" > "b" #=> false
"a" <=> "b" #=> -1

"文字列と数値の変換"
"100" == 100 #=> false
"100" >= 100 #=> ArgumentError

"エンコーデング"
a = "abc"
b = a.encode("EUC-JP") #=> "abc"
b.encoding #=> #<Encoding:EUC-JP>
a == b #=> true

a = "ルビー"
b = a.encode("EUC-JP") #=> "\x{A5EB}\x{A5D3}\x{A1BC}"
a == b #=> false

"文字列の切り出し"
[] # 指定された部分切る出す
*slice # 指定された部分切る出す
*slice! # 指定された部分切る出す、返した文字を元の文字列から取り除く
*split # 文字列や正規表現を使って、文字列を分担する

"abcdefg".split("d") #=> ["abc", "efg"]
"abcdefg".split(/d/) #=> ["abc", "efg"]
"abcde\nfghij".split("\n") #=> ["abcde", "fghij"]


"abcdefg"[2] #=> "c"
"abcdefg".slice(2) #=> "c"
"abcdefg"[-2] #=> "f"
"abcdefg".slice(-2) #=> "f"

a = "abcdefg"
a.slice!(2) #=> "c"
puts a #=> "abdefg"

"範囲指定の場合(1)" #[数字..数字]
# 範囲としてRangeオブジェクトを指定した場合
# -の数字（-1など）から始めるとnilが返す
"abcdefg"[1..3] #=> "bcd"
"abcdefg"[-1..2] #=> ""
"abcdefg".slice(1..3) #=> "bcd"

a = "abcdefg"
a.slice!(1..3) #=> "bcd"
puts a #=> "bcd"

"範囲指定の場合(2)" #[数字, 数字]
# 範囲としてRangeオブジェクトを指定だけではなく
# -の数字（-1など）から始めると末尾から数える
"abcdefg"[1, 3] ##=> "bcd"
"abcdefg"[-1, 2] #=> "g"
"abcdefg".slice(1, 3) #=> "bcd"

"文字列で指定する"
"abcdefg"["bc"] #=> "bc" 

"abcdefg".slice("bc") #=> "bc" 

"abcdefg"["bd"] #=> nil 

a = "abcdefg"
a.slice!("bc") #=> "bc"
puts a #=> "adefg"

"正規表現で指定する"
"abcdefg"[/bc/] #=> "bc" 

"abcdefg".slice(/bc/) #=> "bc" 

"abcdefg"[/bd/] #=> nil 

a = "abcdefg"
a.slice!(/bc/) #=> "bc"
puts a #=> "adefg"

"文字列の変更"
[] # 指定 + 交換
*insert #文字列を交換するため  insert(インデックス数, "文字列")

a = "abcdefg"
a[1..3] = "xyz"
puts a #=> axyzefg

a = "abcdefg"
a.insert(0, "b")
puts a #=> babcdefg

"文字列の変換"
# 「!」を付いてあるメソッドが破壊的 *replace自体は破壊的
*sub # 指定したパターンにマッチした最初のみの部分を特定の文字列に変換します。
*sub!
*gsub # 指定したパターンにマッチした全ての部分を特定の文字列に変換します。
*gsub!
*tr # 指定したパターンに含まれる文字を検索し、それを特定の文字列やパターンに合わせて変換する
*tr!
*tr_s # 指定したパターンに含まれる文字を検索し、それを特定の文字列やパターンに合わせて変換する + 重複する文字列１に圧縮
*tr_s!
*delete # 指定したパターンに含まれる文字を元の文字列から削除する。「パターン複数指定すると、全てのバターンに含まれる文字列のみ削除」
*delete!
*squeeze # 指定した文字が複数並んでいた場合に「1」文字に圧縮する
*squeeze!
*replace # 引数の文字列で自分自身の内容置き換えます。

"sub/gsub"
a = "abcdefg-abcdefg"
a.sub(/abc/, "xyz") #=> "xyzdefg-abcdefg"

a.gsub(/abc/, "xyz") #=> "xyzdefg-xyzdefg"


"sub/gsub プロック"
a = "abcdefg-abcdefg"
a.sub(/abc/) {|str| "xyz"} #=> "xyzdefg-abcdefg"

a.gsub(/abc/) {|str| "xyz"} #=> "xyzdefg-xyzdefg"


"tr"
a = "aabbccddeeffgg"
a.tr("a-c", "A-c") #=> "AABBCCddeeffgg"

a.tr_s("a-c", "A-c") #=> "ABCddeeffgg"

"delete"
a = "aabbccddeeffgg"
a.delete("a-f", "d-g") #=> "aabbccgg"

"squeeze"
a = "aabbccddeeffgg"
a.squeeze("a-e") #=> "abcdeffgg"

"replace"
a = "abc"
a.replace("xyz")
puts a #=> xyz

"文字列の連結"
+ # 連結後に新しいオプジェクトを生成
<< # 元のオプジェクトの内容変更
concat # 元のオプジェクトの内容変更
* # 指定した数値の数だけ繰り返す

a = "abc"

a.object_id #=> 16720
a << "def" #=> "abcdef"  {またはconcat}
a.object_id #=> 16720  {同じオプジェクト}

a += "ghi" #=> "abcdefghi"
a.object_id #=> 31480 {新しいオプジェクト}

"abc" * 2 #=> "abcabc"

"文字列の大文字または小文字への変換"
capitalize # 最初の半角数字のみ大文字に変換、残りの文字小文字化する
capitalize!

downcase # 全半角小文字化
downcase!

upcase # 全半角大文字化
upcase!

swapcase # 全半角小文字化 + 全半角大文字化
swapcase!

a = "abcDEF"

a.capitalize #=> "Abcdef"
a.downcase #=> "abcdef"
a.upcase #=> "ABCDEF"
a.swapcase #=> "ABCdef"

"文字列の末尾や先頭にある空白や改行を削除する"
# 空白文字["\t", "\r", "\n", "\f", "\v"]
chomp # 指定した末尾のみにある改行を削除、指定していない場合全ての改行を取り除く文字列を返す
chomp!

strip # 先頭と末尾にある改行を削除
strip!

lstrip # 先頭のみにある改行を削除
lstrip!

rstrip # 末尾のみにある改行を削除
rstrip!

chop # 末尾の文字列を取り除く
chop!

a = "\n\nabcdef\n\n"

a.chomp #=> "\n\nabcdef\n"
a.strip #=> "abcdef"
a.lstrip #=> "abcdef\n\n"
a.rstrip #=> "\n\nabcdef"
a.chop #=> "\n\nabcdef\n"

a.chomp.chomp.chomp #=> "\n\nabcdef"
a.chop.chop.chop #=> "\n\nabcde"

"文字列逆順にする"
reverse # 逆順にする
reverse!

a = "abcdef"
a.reverse #=> "fedcba"

"文字列の長さ"
length # 文字数を数える　{sizeと同じ}
size
count # 指定したバターンの文字数を数える
empty? # 空かどうか判定する
bytesize # バイト数を数える

a = "abdef"
a.length #=> 5
a.count # ArgumentError
a.count("a-e") #=> 4
a.empty? #=> false
"".empty? #=> true
a.bytesize #=> 5

a = "ルビー"
a.length #=> 3
a.bytesize #=> 9

"文字列の割り付け"
center # 中央
ljust #左側
rjust #右側

a = "abc"
a.center(20) #=> => "        abc         "
a.center(20, "*") #=> "********abc*********"
a.ljust(20) #=> "abc                 "
a.rjust(20, "-") #=> "-----------------abc"

"非表示文字列を交換する"
dump # 文字列の中にある改行コードやタブ文字などの非表示文字列をバックスラッシュ記法に置き換えた文字列を返す
a = "abc\tdef\tghi\n"
puts a #=> abc	def	ghi
puts a.dump #"abc\tdef\tghi\n"

"文字列アンパック"
# Unpacking a string in Ruby is the process of converting a string into a list of values. This can be done using the unpack() method.

# The unpack() method takes a template string as an argument and returns an array of values. The template string specifies the format of the string that is being unpacked.

# For example, the following code unpacks a string containing a date and time into an array of values:

date_time_string = "2023-10-01 17:27:34"

date_time_array = date_time_string.unpack("%Y-%m-%d %H:%M:%S")

puts date_time_array
# This code will print the following output to the console:

["2023", "10", "01", "17", "27", "34"]
["abc"].pack("a")    # => "a"
["abc"].pack("a*")   # => "abc"
["abc"].pack("a4")   # => "abc\x00"

"abc\0".unpack("a4") # => ["abc\x00"]
"abc ".unpack("a4")  # => ["abc "]

"文字列内での検索"
include? #指定した文字列が含んでいるなら、trueを返す
index # indexメソッドは、し文字列や配列の中に指定した文字列が含まれていた場合、右方向で検索して、その文字列の開始位置を整数の値で返します。{str.index(検索したい文字列, [検索を開始する位置])}
rindex # indexと同じですが、左方向で検索する
match #　指定された正規表現によるマッチング行い、マッチした場合Matchオプジェクトを返す
scan # マッチした部分文字列の配列を返す

a = "abcdefg"
a.include?("abc") #=> true
a.index("cd", 2) #=> 2
a.rindex("cd", 5) #=> 2
a.match(/[c-f]/)=> #<MatchData "c">
a.scan(/[a]/) #=> ["a"]

"ababab".scan(/[a]/) #=> ["a", "a", "a"]

"次の文字列を求める"
succ # 次の文字や数字を返す　最後の文字列が一緒なら全てを変更する
succ!
next # succと同じ
next!

"abc123".succ #=> "abc124"
"123abc".succ #=> "123abd"
"123xyz".succ #=> "123xza"
"9999".succ #=> "10000"
9999.succ #=> 10000
"zzzz".succ #=> "aaaaa"
"ZZZZ".succ #=> "AAAAA"

"文字列に対する文字列"
each_line # 文字列の各行に対して、繰り返する
lines

each_byte # 文字列のバイト単位として、繰り返す
bytes

each_char # 字列の文字単位として、繰り返す
chars

upto # 自分自身指定さらて文字列まで、succメソッドで生成される次の文字列を使って繰り返する
"abc\ndef\nngh".each_line {|c| puts c}
# abc
# def
# ngh
"abc\ndef\nngh".lines #=> ["abc\n", "def\n", "ngh"]

"abc".each_byte {|c| puts c}
# 97
# 98
# 99
"abc".bytes #=> [97, 98, 99]

"ルビー".each_char {|c| puts c}
# ル
# ビ
# ー
"ルビー".chars #=> ["ル", "ビ", "ー"]

"a".upto("c") { |c| puts c }
# a
# b
# c

"他のクラスへの変換"
hex # 16進数に変換
oct # 8進数に変換
to_f # Floatに変換
to_i # Integerに変換
to_s # 自分自身を返す
to_str # 自分自身を返す
to_sym # Symbolに変換
intern # Symbolに変換

"abc".hex #=> 2748
"010".oct #=> 8
"1.2".to_f #=> 1.2
"10".to_i #=> 10
"a".to_s #=> "a"
"a".to_str #=> "a"
"a".to_sym #=> :a
"a".intern #=> :a
