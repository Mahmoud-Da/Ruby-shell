# Here's a simple explanation of **compiled** vs. **interpreted** languages:

# Compiled Language
# **Process**: In a compiled language, the code you write is transformed into machine code (the language your computer's hardware understands) by a **compiler**
# - **How it works**: The entire program is compiled at once, and after that, you can run the machine code directly.
# - **Example**: C, C++.
# - **Speed**: Programs run **faster** because the code is already translated into machine language before execution.
  
# **Analogy**: Imagine writing a letter in English, and someone translates the entire letter into another language (machine code) before you send it. Now, the recipient (your computer) can read it directly without further translation.

# ### Interpreted Language
# - **Process**: In an interpreted language, the code is executed line by line by an **interpreter** as the program runs.
# - **How it works**: The interpreter reads and translates each line of code into machine code on the fly while the program is running.
# - **Example**: Python, JavaScript, Ruby.
# - **Speed**: Programs run **slower** because the code is being translated in real-time, every time it is run.

# **Analogy**: Imagine speaking to someone in English, and a translator (interpreter) stands beside you, translating each sentence to another language as you speak. This takes more time since the translation happens while you're talking.

# ### Summary:
# - **Compiled**: Translates the whole program at once before running (faster execution).
# - **Interpreted**: Translates the program line by line while running (slower execution).

# JavaScript is generally faster than Ruby because of these key reasons:

# ### 1. **JavaScript uses a faster engine**:
#    - JavaScript runs on highly optimized engines like **Google's V8**, which translates JavaScript into machine code quickly using **Just-In-Time (JIT) compilation**. This makes execution much faster.
  
# ### 2. **JavaScript handles many tasks at once**:
#    - JavaScript uses an **event-driven**, **non-blocking** system. This means it can handle multiple tasks, like web requests, without waiting for one to finish before starting another. It's great for multitasking.

# ### 3. **Ruby's design prioritizes simplicity over speed**:
#    - Ruby focuses on making code easy and fun to write, which can sometimes make it slower. It doesn't have the same high-performance engine as JavaScript, and it's traditionally slower at handling multiple tasks at the same time.

# ### Simple Comparison:
# - **JavaScript**: Like a fast car with a powerful engine that can switch lanes quickly (handles multiple tasks efficiently).
# - **Ruby**: Like a smooth, comfortable car designed for a pleasant drive, but not as fast when handling lots of traffic (tasks).


# ================================================

# 複数の値をまとめて管理するには、配列というものを用います。
# 配列は、[値1, 値2, 値3]のように作ります。配列に入っているそれぞれの値のことを要素と呼びます。
# 変数languagesに、複数の文字列を要素に持つ配列を代入
languages = ["日本語","英語","スペイン語"]

# 変数languagesを出力
puts languages
# =>
# 日本語
# 英語
# スペイン語

# 配列の要素には、前から順に「0, 1, 2, ...」と数字が割り振られています。これをインデックス番号といいます。
# インデックス番号は0から始まることに注意。

languages = ["日本語", "英語", "スペイン語"]

# インデックス番号が1の要素を出力
puts languages[1] #=> "英語"

# インデックス番号が0の要素を使って「◯◯を話せます」となるように出力

puts "#{languages[0]}を話せます" #=> 日本語を話せます

# 繰り返し処理には、each文というものを使います。
# each文を使うと、配列の要素を順番に取り出して処理を行うことができます。
languages = ["日本語", "英語", "スペイン語"]

# each文を用いて、要素ごとに「○○を話せます」と出力してください
languages.each do |language|
  puts "#{language}を話せます"
end

# do end は {} と同じなので、一つの行の場合 {} を用います。
languages.each {|language| puts "#{language}を話せます"}
  
# language　はeach文の外で呼び出すとundifinedエラーが発生する


# 複数の値をまとめて管理する方法としては、配列の他にもハッシュというものがあります。
# 配列は複数の値を並べて管理するのに対して、ハッシュはそれぞれの値にキーと呼ばれる名前をつけて管理します。

# 変数examにハッシュを代入
exam = {"subject" => "Math", "score" => 80}

# 変数exam
puts exam #=> {"subject"=>"Math", "score"=>80}

# ハッシュ[キー]
puts exam["subject"] #=> "Math"

# 方法 2
user = {:id => 1, :name => "cham"}
puts user #=> {:id=>1, :name=>"cham"}

# 方法 3
# [:id] シンボル
# ハッシュを代入
user = {id: 1, name: "cham"}
puts user #{:id=>1, :name=>"cham"}
# ハッシュ[キー]
puts user[:id] #=> 1

# 方法３一番利用されている


# 変数examにハッシュを代入
exam = {"subject" => "Math", "score" => 80}


# ハッシュ[キー]
#　更新
exam["subject"] = "History"
puts exam #=> {"subject"=>"History", "score"=>80}


# ハッシュ[キー]
#　追加
exam["name"] = "lili"
puts exam #=> {"subject"=>"History", "score"=>80, "name"=>"lili"}


# シンボルとは、文字を「"」や「'」で囲む代わりに、先頭に「:」をつけた書き方のことをいいます。
puts "ruby" #=> ruby
puts :ruby #=> ruby


# 存在しない「:weight」というキーの値を表示しようとした場合、右の図のようになにも表示されません。
user = {id: 1, name: "cham"}
puts user[:weight] #=> 何も表示されない　「nil」

# Rubyでは「nil」(読み方：ニル)という特別な値で表現されます。
# 「nil」は「何もない」という意味なので、putsしても何も表示されません。
puts nil #=> 何も表示されない

exams.each do |exam|
  puts "#{exam[:subject]}の結果は#{exam[:score]}点です"
end
# 総合例
exam = {subject: "Math"}

# 条件式にキー「:score」の値を使うif文をつくってください
if exam [:score]
  puts "#{exam[:subject]}の結果は#{exam[:score]}点です"
else 
  puts "#{exam[:subject]}の結果は分かりません"
end #=> Mathの結果は分かりません

# 要素がハッシュの配列
exams = [
  {subject: "Math", score: 80},
  {subject: "Science", score: 55}
 ]
# インデックス番号が1の要素の値を出力してください
puts exams[1] #=> {:subject=>"Science", :score=>55}
puts exams[1][:subject] #=> Science

exams.each do |exam|
  puts "#{exam[:subject]}の結果は#{exam[:score]}点です"
end

#=> Mathの結果は80点です
#=> Scienceの結果は55点です

