#2
# 下記の実行結果になるようにXXXXに当てはまる適切なプログラムを選択してください。

str = "-1234567890-"

XXXX

puts str
# 実行結果

-1234-
# 選択肢 #=> "567890"
str.delete("2-41-")


# 選択肢 #=>  ✅
str.delete!("^2-41-")

# 選択肢 
str.delete!("0^5-9-") #=> "1234"


# 選択肢 #=>  ✅
str.delete("05-9", "^1-4-")





# Memo
# delete Method  (delete!は破壊的)
"123456789".delete("2-8")  #=> "19"
"123456789".delete("^2-8") #=> "2345678"
"-1234567890-".delete!("2-41") #=> "-567890-"
"-1234567890-".delete!("2-41-") #=> "567890"









#4
# 次のコードを実行するとどうなりますか

arr = (1..30).to_a
container = []

arr.each_slice(7) do |i|
  container << i
end

p container.length
# 選択肢
24

# 選択肢 #=>  ✅
5

# 選択肢
7

# 選択肢
0


# Memo
# each_slice Method
n 要素ずつブロックに渡して繰り返します。

要素数が n で割り切れないときは、最後の回だけ要素数が減ります。

ブロックを省略した場合は n 要素ずつ繰り返す Enumerator を返します。

区切る要素数を示す整数です。
例

(1..10).each_slice(3) {|a| p a}   ## divid array on n number 
    # => [1, 2, 3]
    #    [4, 5, 6]
    #    [7, 8, 9]
    #    [10]




#6

