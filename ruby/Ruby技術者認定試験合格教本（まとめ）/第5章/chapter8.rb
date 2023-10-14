"Symbol"
# コロン「:」で始める文字列で、変更不可能です。
# また同じ表記であれば必ず同じオプジェクトIDとなる
a = :foo
a.object_id #=> 3136348

b = :foo #=> 3136348
b.object_id

*all_symbols # Symbolオプジェクトの一覧
Symbol.all_symbols # =>
# [:!,
#  :"\"",
#  :"#",
#  :"$",
#   .....
# :foo, -----------> コンソールで定義したものも含めて
# :boo,

"文字列に変換"
:foo.to_s #=> "foo"
