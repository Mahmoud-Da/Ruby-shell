# メソッドとは、複数の処理を1つにまとめたものです。
# 「def メソッド名」と「end」の間に、まとめたい処理を書くことでメソッドをつくることができます。
# def
# 半角「２」　処理
# end
def interduce
  puts "こんにちは"
  puts "私はにんじゃわんこです"
  puts "14歳です"
end

# introduceメソッドを呼び出し
interduce
#=> こんにちは
# 私はにんじゃわんこです
# 14歳です
 

# 引数（ひきすう）とはメソッドに与える追加情報の


def introduce(name)
  puts "こんにちは"
  puts "私は#{name}です"
end

# 引数を渡してメソッドを呼び出し
introduce("cham")
#=>こんにちは
# 私はchamです

# 引数渡さないとArgumentエラーを発生する

# 引数priceも受け取るように変更し
def print_info(item, price)
  puts "わんこでんきへようこそ！"
  puts "今日は#{item}がセール中で#{price}円です！"
end

# print_infoメソッドを呼び出し
print_info("SDカード",1200)
#=> わんこでんきへようこそ！
#  今日はSDカードがセール中で1200円です！


# メソッドの処理結果を呼び出し元で受け取る方法を学びます。
# 呼び出し元で受け取る処理結果を戻り値（もどりち）と呼び、このことを「メソッドが戻り値を返す」と言います。
def sumNumber a, b
  return a + b
end

puts sumNumber(1, 3) #=> 4

# Ruby は自動的に return入っているので、returnというもの利用しなくても良い
def sumNumber a, b
  a + b
end

puts sumNumber(1, 3) #=> 4


# 注意メソッドの戻り値がboolean型でしたら、メソッド名の末にに[?]につけます

def shipping_free?(price)
  price >= 5000
end

puts shipping_free?(3000)

# return使い時例
def price_with_shipping(price)
	# priceが5000以上のとき、戻り値としてpriceを返すif文を作成
	if price >= 5000
	  return price
	end

  # priceに500を加えた値を戻り値として返し
	return price + 500
end

# キーワード引数という特殊な書き方　
# キーワード引数を使うように書き換え
def buy(item:, price:, count:)
	puts "#{item}を#{count}台のお買い上げです"
	puts "合計金額は#{price * count}円です"
end

# キーワード引数を使うように書き換え
buy(item:"テレビ", price:15000, count: 2)
