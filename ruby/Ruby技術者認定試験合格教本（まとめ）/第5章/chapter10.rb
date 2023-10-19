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

File.open("b.tsx", "w") {|file| file.write "let b: string;" }
#=> 14

"Fileの属性を取得するメソッド"
*basename # 指定されたバスからファイル名を取得する
*dirname # 指定されたバスからディレクトリー名を取得する
*extname # 指定されたバスから拡張子を取得する
*split # 指定されたバスからファイル名とディレクトリー名配列として取得する
*stat / lstat # ファイルの属性を示すFile::Statクラスのオブジェクトを返す
*atime / ctime / mtime # それぞれファイルの最終 最終アクセス時刻/状態変更時刻/最終が変更された時刻　を取得できる

File.basename("b.tsx") #=> "b.tsx"
File.dirname("b.tsx") #=> "."
File.extname("b.tsx") #=> ".tsx"
File.split("b.tsx") #=> [".", "b.tsx"]
File.stat("b.tsx") # {lstatは同じ}
# => 
# #<File::Stat
#  dev=0x1000011,
#  ino=7688068,
#  mode=0100644 (file rw-r--r--),
#  nlink=1,
#  uid=501 (mahmouddabbbagh),
#  gid=20 (staff),
#  rdev=0x0 (0, 0),
#  size=14,
#  blksize=4096,
#  blocks=8,
#  atime=2023-10-19 15:23:33.648764571 +0900 (1697696613),
#  mtime=2023-10-19 15:23:32.409393159 +0900 (1697696612),
#  ctime=2023-10-19 15:23:32.409393159 +0900 (1697696612)>

File.atime("b.tsx") #=> 2023-10-19 15:23:33.648764571 +0900
File.atime("b.tsx") #=> 2023-10-19 15:23:33.648764571 +0900
File.mtime("b.tsx") #=> 2023-10-19 15:23:32.409393159 +0900

"Fileをテストするメソッド"
*exist? # 指定されたバスが存在しているかを調べる
*file? / directory? / symlink? # 指定されたバスの / ファイル / ディレクトリー / シンボリリンク
*executable? / readable? / writable? # 指定されたバスの / 実行可能か / 読み取り可能か / 書き込み可能か
*size # ファイルのサイズを返す

File.exist?("b.tsx") #=> true
File.file?("b.tsx") #=> true
File.directory?("b.tsx") #=> false
File.executable?("b.tsx") #=> false
File.readable?("b.tsx") #=> true
File.writable?("b.tsx") #=> true
File.size?("b.tsx") #=> 14

"ファイルの属性を設定する"
*chmod # ファイルの所有者を変更
*utime # ファイルの最終アクセス時刻、更新時刻を設定する
*expand_path # バスは絶対バスに展開する
*delete / unlike # ファイルを削除する
*truncate # ファイルを切り詰める
*rename # ファイルの名前を変更する
*flock # ファイルをロックする

File.chmod(0644, "b.tsx") #=> 1
File.utime(Time.now,Time.now, "b.tsx") #=> 1
File.expand_path("b.tsx") #=> "/Users/mahmouddabbbagh/moody/Ruby-shell/b.tsx"
File.unlink("b.tsx") #=> 1
File.open("b.tsx", "w") {|file| file.write "let b: string;" } #=> 14
File.delete("b.tsx") #=> 1
File.open("b.tsx", "w") {|file| file.write "let b: string;" } #=> 14
File.truncate("b.tsx", 2) #=> 0
File.rename("b.tsx" , "c.ts") #=> 0
File.open("b.tsx", "w") {|file| file.flock(File::LOCK_EX) } #=> 0
