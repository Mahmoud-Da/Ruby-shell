"Hash"
# ハッシュまたは連想配列と呼ばれます。配列と違う点だとキーと値が存在します。
"ハッシュの生成"
# 1
*default #初期値のキーを参照することができます。{ハッシュがnewとして生成の場合}
*default_proc #初期値のキーを参照することができます。{ハッシュがProcとして生成の場合}
a = {"apple" => "fruits", "coffee" => "drink"}  #=> {"apple"=>"fruits", "coffee"=>"drink"}
a.class #=> Hash



a = {apple: :fruits, coffee: :drink} #=> {:apple=>:fruits, :coffee=>:drink}
a.class #=> Hash

# 2
Hash["apple", "fruits", "coffee", "drink"] #=> {"apple"=>"fruits", "coffee"=>"drink"}
Hash[:apple, :fruits, :coffee, :drink] #=> {:apple=>:fruits, :coffee=>:drink}


# 3
a = Hash.new #=> {}
a["apple"] #=> nil
p a #=> {}

# キーが初期値を設定できます
a = Hash.new("NONE") #=> {}
a["apple"] #=> "NONE"

a.default #=> "NONE"
a.default = "NONE1" #=> "NONE1" {初期値を変更可能}

# 4
a = Hash.new{|hash, key| hash[key] = nil}
a["apple"] #=> nil

a = Hash.new{|hash, key| hash[key] = "NONE"}
a["apple"] #=> "NONE"

"ハッシュのキーや値を取得する"
[]
*keys # ハッシュの全ての「キー」が配列で返す
*values # ハッシュの全ての「値」が配列で返す
*values_at # 指定されたキーに対応する値を配列を返す
*fetch # (取得したいキーの値, 見つからなかった場合を返すキー) またプロックが与えられていればそのプロックを評価した結果を返す
*select # キーと値の組み合わせについてプロックを評価して、結果が真になると組み合わせのみを含む「ハッシュ」を返す
*find_all #selectと同じが、「配列」を返す

a = {"apple" => "fruits", "coffee" => "drink"}
a["apple"] #=> "fruits" 
a.keys #=> ["apple", "coffee"]
a.values #=> ["fruits", "drink"]

a = { 1 => "a", 2 => "b", 3 => "c", 4 => "d" }
a.values_at(1, 2) #=> ["a", "b"] 

a = { 1 => "a", 2 => "b", 3 => "c", 4 => "d" }
a.fetch(1, "g") #=> "a" {1の値が存在していないなら「g」を返す}
a.fetch(5, "g") #=> => "g"
a.fetch(5) {|key| key % 2 == 0} #=> false


a = { 1 => "a", 2 => "b", 3 => "c", 4 => "d" }
a.select{|key, value| key % 2 == 0} #=> {2=>"b", 4=>"d"}
a.find_all{|key, value| key % 2 == 0} #=> [[2, "b"], [4, "d"]]

"ハッシュの変更"
[]= # 指定されたキーに対する値を変更する、またキー存在しながったら、そのキーと値を登録する
*delete # 指定されたキーに対する値を取り除きます。キーが存在しない場合は「①nilを返す。②プロックなら：プロックの評価結果を返す」
*reject # プロックを評価した結果した結果が真になる値を取り除いたハッシュを返す「元のオブジェクトを変更しない」
*reject! # プロックを評価した結果した結果が真になる値を取り除いたハッシュを返す「元のオブジェクトを変更する」(つまり破壊的)
*delete_if # reject!と同じ
*replace # 引数で与えられたハッシュで自分自身を置き換えます。
*shift # ハッシュから先頭のキーと値の組み合わせを一つ取り除き、その組み合わせ配列として返す。
*merge # 指定されたハッシュが自分自身に統合します。デフォルト値も引き継ぎます、ブロックに与えられた場合はキーと自分自身の値、指定されたハッシュの値が渡され、プロックの評価結果を返す。「元のオブジェクトを変更しない」
*merge! # 指定されたハッシュが自分自身に統合します。デフォルト値も引き継ぎます、ブロックに与えられた場合はキーと自分自身の値、指定されたハッシュの値が渡され、プロックの評価結果を返す。「元のオブジェクトを変更する」(つまり破壊的)
*update # merge!と同じ
*invert # キーと値を逆にしたハッシュを返す、ただ値は重複している場合には、結果は不定となる (破壊的ではない)
*clear # ハッシュが空にする (破壊的)


a = {"apple" => "fruits", "coffee" => "drink"}
a["apple"] = "red"
puts a #=> {"apple"=>"red", "coffee"=>"drink"}

a = {"apple" => "fruits", "coffee" => "drink"}
a["orange"] = "orange"
puts a #{"apple"=>"fruits", "coffee"=>"drink", "orange"=>"orange"}

a = {"apple" => "fruits", "coffee" => "drink"}
a.delete("apple") #=> "fruits"
puts a #=> {"coffee"=>"drink"}

a = {"apple" => "fruits", "coffee" => "drink"}
a.reject{ |key, value| value == "drink" } #=> {"apple"=>"fruits"}
a #=> {"apple"=>"fruits", "coffee"=>"drink"}


a = {"apple" => "fruits", "coffee" => "drink"}
a.reject!{ |key, value| value == "drink" } #=> {"apple"=>"fruits"}
a #=> {"apple"=>"fruits"}


a = {"apple" => "fruits", "coffee" => "drink"}
a.object_id #=> 45300
a.replace({"orange" => "fruits", "tea" => "drink"})
a #=> {"orange"=>"fruits", "tea"=>"drink"}
a.object_id #=> 45300


a = {"apple" => "fruits", "coffee" => "drink"}
a.shift #=> ["apple", "fruits"]
a #=> {"coffee"=>"drink"}


a = {"apple" => "fruits", "coffee" => "drink"}
a.merge({"orange" => "fruits", "tea" => "drink", "apple" => "fruits"}) #=> {"apple"=>"fruits", "coffee"=>"drink", "orange"=>"fruits", "tea"=>"drink"}
a #=> {"apple"=>"fruits", "coffee"=>"drink"}
a.merge({"orange" => "fruits", "tea" => "drink", "apple" => "fruits"}) {|key, self_key, other_val, self_val|} 
#=> {"apple"=>nil, "coffee"=>"drink", "orange"=>"fruits", "tea"=>"drink"}

a = {"apple" => "fruits", "coffee" => "drink"}
a.merge!({"orange" => "fruits", "tea" => "drink", "apple" => "fruits"}) #=> {"apple"=>"fruits", "coffee"=>"drink", "orange"=>"fruits", "tea"=>"drink"}
a #=> {"apple"=>"fruits", "coffee"=>"drink", "orange"=>"fruits", "tea"=>"drink"}

a = {"apple" => "fruits", "coffee" => "drink"}
a.update({"orange" => "fruits", "tea" => "drink", "apple" => "fruits"}) #=> {"apple"=>"fruits", "coffee"=>"drink", "orange"=>"fruits", "tea"=>"drink"}
a #=> {"apple"=>"fruits", "coffee"=>"drink", "orange"=>"fruits", "tea"=>"drink"}

a = {"apple" => "fruits", "coffee" => "drink"}
a.invert #=> {"fruits"=>"apple", "drink"=>"coffee"}
a #=> {"apple"=>"fruits", "coffee"=>"drink"}

{"apple" => "fruits", "coffee" => "drink","orange" => "fruits", "tea" => "drink" }.invert #=> {"fruits"=>"orange", "drink"=>"tea"}

a = {"apple" => "fruits", "coffee" => "drink"}
a.clear #=> {}
a #=> {}

"ハッシュを調べる"
*length # ハッシュの組み合わせの数を返す
*size # lengthと同じ
*empty? # ハッシュからかどうか真を返す
*include? # ハッシュにキー存在しているなら真を返す
*has_key? # include?と同じ
*key? # include?と同じ
*member? # include?と同じ
*has_value? # ハッシュに値が存在する場合は真になる
*value? # has_value?と同じ

a = {"apple" => "fruits", "coffee" => "drink"}
a.length #=> 2
a.size #=> 2
a.empty? #=> false


a = {"apple" => "fruits", "coffee" => "drink"}
a.include?("apple") #=> true
a.has_key?("apple") #=> true
a.key?("apple") #=> true
a.member?("apple") #=> true

a.value?("fruits") #=> true
a.has_value?("fruits") #=> true

"ハッシュを使った繰り返し"
*each # 与えらたプロックにキーと値を渡して評価する
*each_pair # eachと同じ
*each_key # キーに与えらたプロックにキーと値を渡して評価する
*each_value # 値に与えらたプロックにキーと値を渡して評価する

a = {"apple" => "fruits", "coffee" => "drink"}
a.each{ |key, value| puts "key:#{key} " => "value:#{value}" }
# {"key:apple "=>"value:fruits"}
# {"key:coffee "=>"value:drink"}

a.each_pair{ |key, value| puts "key:#{key} " => "value:#{value}" }
# {"key:apple "=>"value:fruits"}
# {"key:coffee "=>"value:drink"}

a.each_key{ |key| puts "key:#{key}" }
# key:apple
# key:coffee

a.each_value{ |value| puts "value:#{value}" }
# value:fruits
# value:drink

# 追加
a.each_with_index do |(key, value), index|
  puts "value#{index + 1}:#{value}"
end

# value1:fruits
# value2:drink

"ハッシュをソートする"
*sort # ハッシュとキーと値の組み合わせの配列に変換し、それおをソートした結果を返す
# ハッシュ自身をソートしりのではないこと注意。(破壊的ではない)
# プロックが与えられた場合には、キーと値の組み合わせの配列が渡される

a = { 4 => "a", 3 => "b", 2 => "c", 1 => "d"}
a.sort #=> [[1, "d"], [2, "c"], [3, "b"], [4, "a"]]
a #=> {4=>"a", 3=>"b", 2=>"c", 1=>"d"}

a.sort{ |a, b| a[1] <=> b[1] } #=> [[4, "a"], [3, "b"], [2, "c"], [1, "d"]]
a.sort{ |a, b| b[1] <=> a[1] } #=> [[1, "d"], [2, "c"], [3, "b"], [4, "a"]]
a.sort{ |a, b| b <=> a } #=> [[4, "a"], [3, "b"], [2, "c"], [1, "d"]]
a.sort{ |a, b| a <=> b } #=> [[1, "d"], [2, "c"], [3, "b"], [4, "a"]]

"ハッシュを変換"
*to_a #配列に変換

a = { 4 => "a", 3 => "b", 2 => "c", 1 => "d"}
a.to_a #=> [[4, "a"], [3, "b"], [2, "c"], [1, "d"]]
a.to_a.flatten #=> [4, "a", 3, "b", 2, "c", 1, "d"]
a #=> {4=>"a", 3=>"b", 2=>"c", 1=>"d"}
