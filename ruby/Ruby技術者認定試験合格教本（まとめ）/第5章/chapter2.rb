"オブジェクトのクラス"
*class メソッド # オブジェクトのクラスが理解できるためにを利用します。

"例"
"foo".class #=> String
:foo.class #=> Symbol

*equal? # オプジェクトIDを比較
*eql? # オブジェクトの値を比較　{== か === は同じ}

"例"
a = "foo" # => "foo"
a.hash # => 95033188825740131
a.object_id # => 24300


b = "foo" # => "foo"
b.hash # => 95033188825740131
b.object_id # => 35780


a.eql?(b) # => true {同じ内容}　{a == b} または　{a === b} => true

a.equal?(b) # => false {異なるオプジェクト}

"メソッドのオブジェクト一覧"
methods
private_methods
protected_methods
public_methods
singleton_method
# 全ての呼び出し可能なメソッドの一覧を配列で返します。
# 配列の要素はメソッド名のシンブル

"例"
a = "foo" #=> "foo"
a.methods #=> a　に利用できるメソッドを全て表示
# =>
[:each_grapheme_cluster,
 :slice,
 :slice!,
 :rpartition,
 :encoding,
 :force_encoding,
 :b, #=> 先ほど定義した変数
 :valid_encoding?,
 :ascii_only?,
 :hash,
 ....など
]

"オブジェクトの複製"
*clone # コピー + freezeメソッドつけたまま
*dup # コピーのみ

a = "hoge" # => "hoge"
a.object_id # => 76060
b = a.dub # => "hoge"
b.object_id # => 89980

"オブジェクトの凍結"
*freeze # オプジェクトの内容を変更を禁止化する

a = "abc" #=> "abc"
a.freeze 
a[1] = "z" #=>  `[]=': can't modify frozen String: "abc" (FrozenError)

"インスタンス変数にアクセスする"
*instance_variables # インスタンスの変数の取得
*instance_variable_get # インスタンス変数の設定
*instance_variable_set # インスタンスの一覧


class Foo
  def initialize
    @hoge = 1
  end
end

f = Foo.new
f.instance_variables #=> [:@hoge]
f.instance_variable_get(:@hoge) #=> 1
f.instance_variable_set(:@hoge, 2) #=> 2
f.instance_variable_get(:@hoge) #=> 2

"未定義のメソッドの呼び出し"

class Foo
  def initialize
    @hoge = 1
  end
end

f = Foo.new
f.hoge_method #=> (NoMethodError)

"オプジェクトの文字列表現"
a = 1.2
a.to_s #=> "1.2"

class Hoge
  def initialize
    @foo = "bar"
  end
end

hoge = Hoge.new

hoge.to_s #=> "#<Hoge:0x00000001056ee208>"  {オプジェクトの名前のみ表示}

hoge.inspect #=> "#<Hoge:0x00000001056ee208 @foo=\"bar\">"　{オプジェクトの名前+インスタンス変数+値}
