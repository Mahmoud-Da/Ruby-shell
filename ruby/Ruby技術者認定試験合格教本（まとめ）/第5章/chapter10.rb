"File"
# ファイルを扱うクラスです。{多くのメソッドがUNIX系システムのコマンドに対応する}

"ファイルを開いて読み込む"
*open # ファイルを開きます。引数として、ファイル名与えるだけだと、読み取りモードで開く
*new # openと同じ
*read # ファイルの中身を取得できます。
*close # ファイルを閉じる
*encoding # ファイルのエンコーデングを参照できる

Dir.chdir("/Users/mahmouddabbbagh/moody/RUBY-SHELL/ruby") #=> 0
file = File.open("a.tsx") #=> #<File:a.tsx>
file = File.new("a.tsx") #=> #<File:a.tsx>

file.read #=> "let a: string = \"hi\";\nconsole.log(a);\n"
file.read.encoding #=> #<Encoding:UTF-8>
file.close #=> nil

"プロックで開く"
# プロックで開くと、プロックを終了の時に自動的にファイルを閉じる {ファイルの閉じ忘れを防げるようにいつもプロック利用した方がいい}
File.open("a.tsx") {|file| file.read } #=> "let a: string = \"hi\";\nconsole.log(a);\n"

"ファイルモード"
"r" #=> 読み込みモード
"w" #=> 書き込みモード、既存ファイルの場合はファイルの内容空にする
"a" #=> 追加モード、常にファイルの末尾で追加
"r+" #=> 読み込みモード、ファイルの読み込み位置が先頭
"w+" #=> 読み込みモード、"r+"と同じが、既存ファイルの場合はファイルの内容が空にする
"a+" #=> 読み込みモード、ファイルの読み込み位置が先頭、書き込み位置は常にファイルの末尾になる
