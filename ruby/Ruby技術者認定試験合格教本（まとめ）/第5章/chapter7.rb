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

