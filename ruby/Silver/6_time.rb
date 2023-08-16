# 6
#次のプログラムを実行するとどうなりますか

raise ['Error Message']
# 選択
# 選択肢
StandardErrorが発生して、Error Messageが表示される

# 選択肢
StandardErrorが発生して、['Error Message']が表示される

# 選択肢
RuntimeErrorが発生して、Error Messageが表示される

# 選択肢 #=>  ✅
TypeErrorが発生して、exception class/object expectedが表示される



# 7
# Dirクラスのクラスメソッドではないものを選択してください。

# 選択肢 #=>  ✅
Dir.directory?
# 選択肢 #=>  ✅
Dir.chmod
# 選択肢 #=>  ✅
Dir.chown
# 選択肢
Dir.pwd




#19
# 次のコードを実行するとどうなりますか

h = {a: 100, b: 200}
h.delete(:a)
p h
# 選択
# 選択肢
{:a=>100, :b=>200}と表示される

# 選択肢
{:a=>nil, :b=>200}と表示される

# 選択肢 #=>  ✅ (deleteはハッシュと一緒に利用できると破壊的になります　strの場合は破壊的ではない)
{:b=>200}と表示される

# 選択肢
エラーが発生する
