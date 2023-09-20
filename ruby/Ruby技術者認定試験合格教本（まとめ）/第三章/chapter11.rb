"正規表現"
# 「 / 」で囲むと正規表現のオブジェクトが生成される
"正規表現オブジェクトの生成方法"
/Ruby/ #=> /Ruby/
%r(Ruby) #=> /Ruby/
Regexp.new "Ruby" #=> /Ruby/

"case式と正規表現オブジェクト"
/Ruby/ === "I Love Ruby" #=> true

p case "I Love Ruby"
  when /Ruby/
    "Ruby!"
  when /Java/
    "Java!"
  end #=> "Ruby!"

"正規表現の組み込み変数"
#  「=~」match a regular expression against a string
/bb/ =~ "aabbcc" #=> 2
/bb/ =~ "aacc" #=> nil
# 「$`」マッチした文字列より前の文字列を参照する
p $` #=> "aa"
# 「$&」マッチした文字列参照する
p $& #=> "bb"
# 「$'」マッチした文字列より後の文字列を参照する
p $' #=> "cc"

"マッチ処理"
# 送られた文字と箱が一致したら、箱に文字を入れて閉じ、次の文字を処理します。一致しない文字が届いた場合は、全ての箱
# を空にした上で次の文字を処理します。そして全ての文字の処理が完了した特に全ての埋まったいればマッチすると判定される

"選択"
# いずれを満たす場合には「｜」で区切りします。または「｜」の優先度が低いので、選択のバターンをカッコ囲む必要がある
# === operator is often used to test whether a pattern matches a value.
# When you use it with a regular expression on the left-hand side and a string on the right-hand side, 
# it checks if the regular expression pattern matches the string.
reg = /^(aa|bb)c$/
reg === "aac" #=> true
reg === "bbc" #=> true

"集合判定"
reg = /a[bcd]e[fg]h/
reg = "abegh" #=> "abegh"

"正規表現記号とオプション"
"文字クラス"
/a[1-5]z/ === "a2z" #=> true
/a[b-d]z/ === "abz" #=> true

"正規表現記号"
/./ # 改行を除く任意の文字、ただし、後述する m　オプションつけると、改行を含むことになる
/\d/ # 数字
/\D/ # 数字以外
/\w/ # 英数字と「 _ 」の文字
/\W/ # 英数字と「 _ 」の文字以外
/\s/ # 空白文字（\t, \n, \r, \f）
/\S/ # 空白文字以外
/\A/ # 先頭の文字。改行の有無に影響されない
/\z/ # 末尾の文字。改行の有無に影響されない 
/\Z/ # 末尾の文字。改行で終わっていればその改行の直前にマッチ

"例"
/a\db/ === "a2b" #=> true

"繰り返しを表現する正規表現記号"
* # 直前の文字 0以上の繰り返し
/a*b/ # "ab" "aab" "aab"

+ # 直前の文字 1以上の繰り返し
/a+b/ # "aab" "aab"

# m 直前の文字「m」回繰り返し
/a{2}b/ # "aab"

# m, 直前の文字最低「m」回繰り返し
/a{2,}b/ # "aab" "aaab" "aaaab" 

# m,n 直前の文字最低「m」回,最高「n」の繰り返し
/a{2,3}b/ # "aab" "aaab"

"例"
p /a(bc)*d/ === "abcbcd" #=> true {(bc)* bcの0回以上の繰り返し}

"正規表現グループ"
%r|(http://www(\.)(.*)/)| =~ "http://www.xyz.org/"

p $1 #=> "http://www.xyz.org/"
p $2 #=> "."
p $3 #=> "xyz.org"
p $4 #=> nil

Memo
p $0 # Rubyのスクリプト名を保持する
p $0 #=> "irb"

"コマンド出力"
# ``を利用することによって、Linuxのコマンドを実行可能になる
puts `ls`
# =>
# README.md
# git
# progate
# ruby
# shell

puts `date /T` # Windows の場合
