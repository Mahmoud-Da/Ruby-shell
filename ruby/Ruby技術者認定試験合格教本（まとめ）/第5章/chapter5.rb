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

"範囲指定の場合
"