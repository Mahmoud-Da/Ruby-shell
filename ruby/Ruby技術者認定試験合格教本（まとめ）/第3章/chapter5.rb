"シンブル"
# that symbols are immutable strings.
# immutable object is something that cannot be changed. When you create an immutable object,
# it will remain the same until it is destroyed
# if a value does not need to change, use a symbol instead of a string

"記述例"
foo1 = :"foo1" #=> :foo1
foo2 = :"#{foo1}foo1" #=> :foo1foo1
foo3 = :'foo3' #=> :foo3
foo4 = :foo4 #=> :foo4

"文字列とシンプルの変換"
v1 = "foo1" #=> "foo1"
v2 = v1.to_sym #=> :foo1
v3 = v2.to_s #=> "foo1"


# シンブルは、文字の並びが同じであれば、同一のオブジェクトを参照する
# 文字列は、文字の並びが同じでも、指定するごとに新たなStringオブジェクトが生産される
"文字列とシンプルの違い"
"例１"
p "foo1".object_id #=> 141180
p "foo1".object_id #=> 148480


p :foo1.object_id #=> 2469148
p :foo1.object_id #=> 2469148
p :foo2.object_id #=> 2469468

"例２"
*equal Method: object_id は同一かどうか判定
"foo1" == "foo1" #=> true
"foo1".equal? "foo1" #=> false

:foo1 == :foo1 #=> true
:foo1.equal? :foo1 #=> true

*eql Method: 型と値を判定
"foo1".eql? "foo1" #=> true
1.0 == 1 #=> true
(1.0).eql? 1 #=> false
(1.0).eql? 1.0 #=> true
(1.02).eql? 1.04 #=> false

"変数の代入"
v1 = "foo1"
v2 = v1
v1.equal? v2 #=> true

"自己代入におけるオブジェクトの参照先"
v1 = "foo1"
v2 = v1
v1 += "foo2"
p v1 #=> "foo1foo2"
p v2 #=> "foo1"

"引数の参照先"
def func v1
  v1.object_id
end

v1 = "foo1"
p v1.object_id #=> 317720
p func(v1) #=> 317720

"メソッドの内部で自己代入"
def func v1
  v1 += "foo2"
end

v1 = "foo1"
p func v1 #=> "foo1foo2"
p v1 #=> "foo1"

"破壊的メソッドの例"
# 破壊的メソッドは「変数の参照先にも影響する」
v1 = "foo1"
v2 = v1
p v1.chop #"foo"
p v2 #"foo1"

p v1.chop! #=> "foo"
p v2 #=> "foo"
