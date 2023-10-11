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
*invert # キーと値を逆にしたハッシュを返す
*clear # ハッシュが空にする


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
