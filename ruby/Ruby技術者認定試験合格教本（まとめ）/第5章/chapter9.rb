"Dir"
# ディレクトリーを扱うクラスです。
*open # ディレクトリーを開く
*close # ディレクトリーを閉じる

dir = Dir.open("/Users/mahmouddabbbagh/moody")
#=> #<Dir:/Users/mahmouddabbbagh/moody>

dir.each { |file| puts file }
# .
# ..
# HTML-CSS
# Type_script
# Task_mangment_System
# .DS_Store
# JS
# React18
# PHP
# freinds_app
# reails7
# My-first-project-web-page-
# Ruby-shell
# => #<Dir:/Users/mahmouddabbbagh/moody>

dir.close #=> nil

"自動的にclose方法"
# openメソッドにプロック与えると自動てにディレクトリーをcloseする
Dir.open("/Users/mahmouddabbbagh/moody") {|dir| puts dir.path}
# /Users/mahmouddabbbagh/moody
#=> nil

"主なメソッド"
*pwd # currentディレクトリーを取得
*getwd # pwdと同じ
*chdir # 指定されたディレクトリーに変更する、指定なかったら、
#環境変数HOMEやLOGDIRが指定されていれば、そのディレクトリーに移動し、プロック与えるとそのプロック内のディレクトリーに移動し、プロックを出る時に元に戻る。
# 移動成功したら、0を返す。
*mkdir # ディレクトリー作成、二つ名の引数にはパーミッション(mode)を指定できる
*rkdir # ディレクトリーを削除
*unlink # rkdirと同じ
*delete # rkdirと同じ

Dir.pwd #=> "/Users/mahmouddabbbagh/moody/Ruby-shell"
Dir.getwd #=> "/Users/mahmouddabbbagh/moody/Ruby-shell"

Dir.chdir("/Users/mahmouddabbbagh") #=> 0
Dir.pwd #=> "/Users/mahmouddabbbagh"
Dir.chdir("/Users/mahmouddabbbagh/moody") { |dir| puts Dir.pwd}
# /Users/mahmouddabbbagh/moody
#=> nil
Dir.pwd #=> "/Users/mahmouddabbbagh"


Dir.mkdir("/tmp/foo") #=> 0 {作成}
Dir.rmdir("/tmp/foo") #=> 0 {削除}
Dir.mkdir("/tmp/foo", 0755) #=> 0　{作成}
Dir.unlink("/tmp/foo") #=> 0 {削除}
Dir.mkdir("/tmp/foo") #=> 0 {作成}
Dir.delete("/tmp/foo") #=> 0 {削除}
