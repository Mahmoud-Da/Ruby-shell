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
