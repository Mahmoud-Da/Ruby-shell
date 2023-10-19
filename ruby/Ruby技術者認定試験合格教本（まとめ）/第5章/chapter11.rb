"IO"
# Filrクラスのスーパークラスでもあり、基本的な機能を揃えたクラスです。多くのメソッドはFileクラスでも利用可能
"ファイル開く"
# karnelのopenメソッドを利用する
io = open("b.tsx")
#自動的に閉じる
open("b.tsx") { |file| file.read } #=> "let b: string;"

"バイブを開く"
*popen # コマンドをサブプロセスとして実行し、そのプロセスと入出力のバイブを開くことができます。

IO.popen("grep -i ruby", "r+") do |io|
  io.write("this is Ruby program")
  io.close_write
  puts io.read
end
#=> this is Ruby program

"IOからの入力"
*read # 内容を読み込み。長さも指定可能 クラスメソッド・インスタンスメソッド
*each / each_lines / for_each # 各ブロックに渡して実行可能
*readline #  readlineクラスメソッド{全てのファイるを読み取り、配列として戻す}
*readline / gets # get・readlineインスタンスメソッド(一行読み込む) readlineの場合は最後の行に到着したら「EOFError」が発生する
*each_byte # バイト取得 クラスメソッド
*getbyte / readbyte # バイト取得
*each_char # 文字一つずつを読むこむ クラスメソッド
*getc / readchar # 文字に対応する文字を返す


IO.read("b.tsx") #=> "let b: string;"
IO.read("b.tsx", 3) #=> "let"


IO.foreach("b.tsx") {|line| puts line }   #=> let b: string;

io = open("b.tsx") #=> #<File:b.tsx>
io.gets #=> "let b: string;"
io.readline # (irb):37:in `readline': end of file reached (EOFError)
io.gets #=> nil 
io.close

io = open("b.tsx") #=> #<File:b.tsx>
io.getc #=> "l"
io.getc #=> "e"
io.close

"空ファイルの場合"
IO.read # "" を返す {指定があればnilを返す}
IO.readline # 空配列 ([])
IO.for_each # プロック実行されない

each / for_each # EOFであれば何もしない
getc / gets # nil
read # "" を返す {指定があればnilを返す}
readchar / readline # EOFError
readlines # 空配列 ([])
getbyte # nil
readbyte # EOFError


"IOからの出力"
*write # IOに対して、引数の文字列を出力し、引数が文字例以外の場合は、_to.sメソッドで文字列化して出力する。
*puts # IOに対して、複数のオプジェクトを出力し、引数が文字例や配列以外の場合は、まず_to.aryメソッドで配列化、その後_to.sメソッドで文字列化して出力する。
*print # IOに対して、引数の文字列を出力し、複数のオプジェクトを渡された場合は、各オプジェクトの間に「$.」の値を出力する
*printf # C言語と同じで指定されたフォーマットで返す
*putc # IOに対して、引数の文字列を出力し、引数が整数の場合にはその最下位バイトを文字する文字を、文字列の場合は先頭の一文字を出力する
<< # 指定されたオブジェクトを出力数重する。
*flush # IO内部バッファをフラッシュして出力する

STDOUT.write("this.is Ruby programe") # this.is Ruby programe=> 21
STDOUT.puts("abcdefg", "hijklmn")
# abcdefg
# hijklmn
# => nil
STDOUT.print("abcdefg", "hijklmn") # abcdefghijklmn=> nil
STDOUT.printf("%010d", 123456) #0000123456=> nil
STDOUT.putc("a") #a=> "a"
STDOUT.putc(0x3042) #B=> 12354
