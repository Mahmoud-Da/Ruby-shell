"BasicObjectクラス"
# Objectクラスでは定義されているメソッドが多すぎる場合など、
# 特殊な用途のために用意されているクラスです

"Karnel Module"
# karnelモジュールは、全てのクラスから参照できるメソッドを定義しているモジュールです。

"Objectクラス"
Objectクラスは全てのクラスのスーバークラスです。ObjectクラスはKarnelモジュールをインクレード
しているため、全てのオブジェクトで、Karnel モジェールのメソッドを使用することができます。


"オプジェクトID"
*object_id
# オベジェクト
# 各オブジェクトに対して一意な整数を返します。
p "ruby".object_id #=> 60
p "ruby".object_id #=> 80

p [].object_id #=> 100
p [].object_id #=> 120

p :ruby.object_id #=> 710428
p :ruby.object_id #=> 710428

p 11.object_id #=> 23
p 11.object_id #=> 23

p true.object_id #=> 20
p true.object_id #=> 20


# Rubyでは、全てのオプジェクトで、同じリテラルであっても基本的に
# オブジェクトIDが異なります。
*"ただ"
TrueClass FalseClass NilClass SymbolClass
# 同じリテラルに対して、同じオブジェクトIDを持つ。

"foo".object_id #=> 156560
"foo".object_id #=> 161140

:foo.object_id #=> 2470428
:foo.object_id #=> 2470428
