# 1
# 次のコードの実行結果として正しいものを選択してください。
count = 0

begin
  1 / count
rescue NameError
  count += 1
  retry
rescue NoMethodError
  count += 2
  retry
rescue ZeroDivisionError
  count += 3
  retry
else
  puts 4
ensure
  puts "count: #{count}"
end
# 選択
# 選択肢
count: 3#と表示される

# 選択肢 => ✅
4
count: 3
#と表示される

# 選択肢
count: 1#と表示される


# 選択肢
4
4
count: 3
# と表示される






# 35
# 以下のコードを実行するとどうなりますか

def hoge
  x = 10
  Y = x < 10 ? "C" : "D"
  puts Y
end
hoge


# 選択肢
警告が表示される

# 選択肢
Dが表示された後、警告が表示される

# 選択肢
Dが表示される

# 選択肢 => ✅
エラーが発生する

# Memo
# どうやらrubyでは、メソッドの中で定数を定義できない仕様になっているらしい。




# 42
次のコードを実行するとどうなりますか。

10.times{|d| print d == 3..d == 5 ? "T" : "F" }

# 選択
# 選択肢
シンタックスエラーとなる

# 選択肢
FFFFFFFFFF と表示される

# 選択肢
FFFTFTFFFF と表示される


# 選択肢  => ✅
FFFTTTFFFF と表示される