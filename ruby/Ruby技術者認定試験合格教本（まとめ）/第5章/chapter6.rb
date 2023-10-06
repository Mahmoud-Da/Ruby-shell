"Array"
"生成1"
a = Array.new
a = []

"生成2"
a = [1, 2, 3] #=> [1, 2, 3]
a.class #=> Array
Array[1, 2, 3] #=> [1, 2, 3]

"生成2"
Array.new(3, "str") #=> ["str", "str", "str"]
Array.new([1, 2, 3]) #=> [1, 2, 3]
# プロックには配列のインデックスを渡せれ、プロックの評価結果各要素の値として設定する
Array.new(3) {|i| i * 3} #=> [0, 3, 6]

"配列に要素を追加"
<< # 指定された「引数」にあるオブジェクトを自身自分の末尾に追加
*push # << と同じ
*concat # 指定された「配列」にあるオブジェクトを自身自分の末尾に追加
*insert # 二つの引数を渡わされ、一番目の引数で指定された場所、それ以降指定さらたオプジェクトを挿入
+ # 自分自身と引数で与えられた配列を連結した配列を新たに生成する
*unshift # 指定された「引数」にあるオブジェクトを自身自分の[先頭]に追加

"例"
a = [1, 2, 3]
a << 4 #=> [1, 2, 3, 4]
a.push(5) #=> [1, 2, 3, 4, 5]
a.concat [5, 6] #=> [1, 2, 3, 4, 5, 5, 6]
a.insert(3, 9)#=> [1, 2, 3, 9, 4, 5, 5, 6]
a.insert(3, 16, 16)#=> [1, 2, 3, 16, 16, 9, 4, 5, 5, 6]

a.object_id #=> 79180
b = a + [10] #=> [1, 2, 3, 16, 16, 9, 4, 5, 5, 6, 10]
b.object_id #=> 87600

a.unshift(10) #=> [10, 1, 2, 3, 16, 16, 9, 4, 5, 5, 6]

"配列を変換"
# (オブジェクトID変換しない)
[]= # 指定したインデックスにある要素を書き換え。インデックス（Range、整数から）始点と終点を指定でき、配列の要素より大きな引数入れいるnilを戻す 
*fill # 全ての要素を指定したオプジェクトに変更します。
*replace # 指定された配列配列自分自身の内奥置き換えます

"[]の例"
a = [1, 2, 3]
a[1] = 10 
p a#=> [1, 10, 3]
a[1..2] = [11, 12]
p a #=> [1, 11, 12]
a[8] = 8
p a #=> [1, 11, 12, nil, nil, nil, nil, nil, 8]

"fillの例"
a = [1, 2, 3]
a.fill("s") #=> ["s", "s", "s"]
a.fill("t", 1..2) #=> ["s", "t", "t"]
a.fill(1..2){|index| index} #=> ["s", 1, 2]

"replaceの例"
a = [1, 2, 3]
a.replace([3, 2, 1]) #=> [3, 2, 1]

"配列の要素を参照する"
# 要素数以上渡すとnilを返す
[] # 指定したインデックス参照
slice # []と同じ
at # []と同じ
values_at # []と同じ、ただ配列で返す
fetch # []と同じ、要素数以上渡すエラーを返す
first # 配列の先頭を返す
last # 配列の末尾を返す
assoc # 配列の配列を検索し、その配列の「最初」の要素が指定された値と＝＝で等しければその要素を返す、等しじゃなければnilを返す
rassoc # 配列の配列を検索し、その配列のインデックス１の要素が指定された値と＝＝で等しければその要素を返す

"例"
a = [1, 2, 3]

a.slice(1) #=> 2
a.slice(1, 2) #=> => [2, 3]
a.slice(1..2) #=> => [2, 3]
a[1] #=> 2
a[1, 2] #=> [2, 3]
a[1..2] #=> [2, 3]
a.at(2) #=> 3
a.values_at(2) #=> [3]
a.values_at(4) #=> [nil]
a.fetch(4) #=> IndexError

a = [[1, 2], [3, 4], [5, 6], [7, 8]]
a.assoc(3) #=> [3, 4]
a.assoc(4) #=> nil
a.assoc(10) #=> nil

a.rassoc(3) #=> nil
a.rassoc(4) #=> [3, 4] 
a.rassoc(10) #=> nil

"配列の検索を調べる"
*include? # 指定された値が要素の中に存在する場合真を返す
*index # 配列の先頭や末尾から指定された値が要素の中に＝＝等しいなら位置を返す、見つからない場合nilを返す
*rindex # 

# The index() method searches for the substring from the beginning of the string, while the rindex() method searches for the substring from the end of the string.

# The index() method returns the index of the first occurrence of the substring, while the rindex() method returns the index of the last occurrence of the substring.

# The index() method returns nil if the substring is not found, while the rindex() method returns nil if the substring is not found or if the substring is empty.

a = [1, 2, 3, 4, 4]
a.include?(3) #=> true
a.index(4) #=> 3
a.rindex(4) #=> 4

"配列の要素を削除する"
*delete_at # 指定されたインデックスに対応する要素を取り除き、その要素を返す
*delete_if # プロックを渡し、その評価結果が真になった要素全て取り除いた自分自身を返す
*reject! # delete_if と同じ
*delete # 指定された値と＝＝メソッドで等しい要素があれば取り除いてその値を、なければnilを返す
*clear # 要素を全て削除します。
*slice! # 指定されたインデックスに対応する要素を取り除き、その取り除いた要素を返します。
*shift # 「先頭」指定された数だけ要素を取り除いて返します、指定がなければ１が指定されたとして先頭の要素を返します。
*pop # 「末尾」指定された数だけ要素を取り除いて返します、指定がなければ１が指定されたとして先頭の要素を返します。
- # 指定された配列にある要素を自身自分から取り除いた配列を返す

"例"
a = [1, 2, 3, 4, 5]
a.delete_at(2) #=> 3
p a #=> [1, 2, 4, 5]

a = [1, 2, 3, 4, 5]
a.delete_if {|n| n % 2 == 0} #=> [1, 3, 5]
a = [1, 2, 3, 4, 5]
a.reject! {|n| n % 2 == 0} #=> [1, 3, 5]

a = [1, 2, 3, 4, 5]
a.delete(2) #=> 3
p a #=> [1, 2, 4, 5]

a = [1, 2, 3, 4, 5]
a.clear #=> []

a = [1, 2, 3, 4, 5]
a.slice!(2, 2) #=> [3, 4]
p a #=> [1, 2, 5]


a = [1, 2, 3, 4, 5]
a.shift(2) #=> => [1, 2]
p a #=> [3, 4, 5]
a.shift #=> 3
p a #=> [4, 5]

a = [1, 2, 3, 4, 5]
a - [3, 4] #=> [1, 2, 5]

"配列の演算"
| # 異常を返す
& # 共通を返す


[1, 2, 3] | [1, 3, 5] #=> [1, 2, 3, 5]
[1, 2, 3] & [1, 3, 5] #=> [1, 3]



"配列の比較"
[1, 2, 3] == [1, 3, 5] #=> false
[1, 2, 3] <=> [1, 3, 5] #=> -1


"配列の要素での繰り返し"
*each # 各要素を返す
*each_index # 各インデックスを返す
*cycle # 配列の要素に繰り返す、末尾まできたらまた先頭に戻って、繰り返し続きます。
*reverse_each # 各要素を返す「逆順」

[1, 2, 3, 4].each{ |n| puts n } #=> 1 2 3 4
[1, 2, 3, 4].each{ |n| puts n * 2 } #=> 2 4 6 8

[1, 2, 3, 4].each_index{ |n| puts n } #=> 0 1 2 3
[1, 2, 3, 4].each_index{ |n| puts n * 2 } #=> 0 2 4 6

[1, 2, 3, 4].reverse_each{ |n| puts n } #=>  4 3 2 1
[1, 2, 3, 4].cycle{ |n| puts n } #=> 1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4 {無限まで}

"配列の要素を連結する"
*join # 配列の要素を指定された区切り文字で連結した文字列を返す
* # joinと同じ

[1, 2, 3].join(",") #=> "1,2,3"
[1, 2, 3] * "," #=> => "1,2,3"

# 配列に戻すなら
"1,2,3".split(",").map {|n| n.to_i} #=> [1, 2, 3]

"配列の長さを求める"
