"配列"
# 配列　Arrayクラスのインスタンス
"例"
a = []
b = [10, true, "30"]
b[0] #=> 10

"二次元配列"
a = [[1, 2], [3, 4]]
a[0][0] #=> 1
a[1][1] #=> 4

"パーセント記法による配列の生成"
*join Method: # 破壊的ではない
v1 = %w(hoge foo bar) #=> ["hoge", "foo", "bar"]
v1.join() #=> "hogefoobar"
v1.join("_") #=> "hoge_foo_bar"
v1 #=>=> ["hoge", "foo", "bar"]

"インスタンスの生成による配列の生成"
a = Array.new(5) #=> [nil, nil, nil, nil, nil]
a.length #=> 5
Array.new(2){|index| index + 10} #=> [10, 11]

"要素の初期値の指定"
*replace Method: 同じオプジェクトIDのもの全てreplaceする
"例1"
a1 = Array.new(2, "a") #=> ["a", "a"] {a[0]とa[1]は同一のオプジェクト}
a1[0].replace("b") #　　{a[0]だけではなく、a[1]もreplaceされる}
p a1 #=> ["b", "b"]

Memo
a1[0].replace("b")の代わりに
a1[0] = "b"
p a1 #=> ["a", "b"]

"例2"
a2 = Array.new(2){"a"} #=> ["a", "a"] {a[0]とa[1]は同一のオプジェクトじゃない}
a2[0].replace("b") #　　{a[0]だけreplaceされる}
p a2 #=> ["b", "a"]

"サイズ超えた要素への代入"
v1 = [10] #=> [10]
v1.length #=> 1
v1[3] = "aa" #=> "aa"
v1.length #=> 4
v1 #=> [10, nil, nil, "aa"]

"インデックスの負の整数を指定"
v1 = [10, nil, nil, "aa"]
p v1[-1] #=> "aa" {「-」をつけると未尾から読み始める}
p v1[4 - 1] #=> "aa" {v1[4-1] == v1[3]}
p v1[-4] #=> 10

"要素数を指定した要素の参照"
配列[読み始めるインデックス, 個分数]
a = [0, 1, 2, 3, 4, 5]
a[2, 3] #=> => [2, 3, 4]　{index「2」から「3」elemnts}

"要素数を指定した代入"
