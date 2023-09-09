# 4
# 次のコードを実行するとどうなりますか

hoge = *"a"
puts hoge.class
# 選択
# 選択肢 
Stringと表示される

# 選択肢
Arrayと表示される

# 選択肢
Hashと表示される

# 選択肢  => ✅
エラーになる






# 45
# 次のコードの実行結ß果として正しいものを選択してください。

exceptions = {
  NameError => "変数または定数が存在しません",
  ArgumentError => "引数が不正です",
  RuntimeError => "特定の例外が発生しました"
}

begin
  raise
rescue => e
  puts exceptions[e.class]
else
  puts "例外は発生しませんでした"
end
# 選択
# 選択肢
例外は発生しませんでしたと表示される

# 選択肢 => ✅
特定の例外が発生しましたと表示される

# 選択肢
引数が不正ですと表示される

# 選択肢
変数または定数が存在しませんと表示される

