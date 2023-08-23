#5
IOクラスのクラスメソッドを選択してください。

選択
# 選択肢
IO.size
# 選択肢 #=> ✅
IO.write
# 選択肢 #=> ✅
IO.readlines
# 選択肢
IO.delete










#6
# 次のコードを実行するとどうなりますか

p [1,2,3,4].map do |e| e * e end
# 選択
# 選択肢
[1, 4, 9, 16]

# 選択肢  => ✅
<Enumerator: [1, 2, 3, 4]:map>

# 選択肢
nil

# 選択肢
エラーになる


# Memo
# do ... endと{ ... }を比べた場合、{ ... }の方が結合度が強いです。

# 問題の式の場合、do ... endの結合度が弱いため、p([1, 2, 3, 4].map)が評価されます。
# 問題のように式の内容を直接使用する際は、{ ... }を使用します。


#8
# 次のプログラムの実行結果として正しいものを選択してください。

arr = [
  "a".to_i(36),
  "070".to_i(0),
  nil.to_i,
  "0b0001".to_i
]

p arr
# 選択
# 選択肢
実行時エラーになる

# 選択肢 => ✅
[10, 56, 0, 0]と表示される

# 選択肢
[10, 70, 0, 1]と表示される

# 選択肢
[10, 56, 0, 1]と表示される


# Memo
to_i(base = 10) -> Integer[permalink][rdoc][edit]
文字列を 10 進数表現された整数であると解釈して、整数に変換します。

# 例

p " 10".to_i    # => 10
p "+10".to_i    # => 10
p "-10".to_i    # => -10

p "010".to_i    # => 10
p "-010".to_i   # => -10
p " 10".to_i    # => 10
p "+10".to_i    # => 10
p "-10".to_i    # => -10

p "010".to_i    # => 10
p "-010".to_i   # => -10

整数とみなせない文字があればそこまでを変換対象とします。変換対象が空文字列であれば 0 を返します。

# 例

p "0x11".to_i   # => 0
p "".to_i       # => 0
p "0x11".to_i   # => 0
p "".to_i       # => 0
p nil.to_i      # => 0

基数を指定することでデフォルトの 10 進以外に 2 〜 36 進数表現へ変換できます。それぞれ Ruby の整数リテラルで使用可能なプリフィクスは無視されます。また、base に 0 を指定するとプリフィクスから基数を判断します。認識できるプリフィクスは、 0b (2 進数)、0 (8 進数)、0o (8 進数)、0d (10 進数)、0x (16 進数) です。

0, 2 〜 36 以外の引数を指定した場合は例外 ArgumentError が発生します。

例

p "01".to_i(2)    # => 1
p "0b1".to_i(2)   # => 1

p "07".to_i(8)    # => 7
p "0o7".to_i(8)   # => 7

p "1f".to_i(16)   # => 31
p "0x1f".to_i(16) # => 31

p "0b10".to_i(0)  # => 2
p "0o10".to_i(0)  # => 8
p "010".to_i(0)   # => 8
p "0d10".to_i(0)  # => 10
p "0x10".to_i(0)  # => 16