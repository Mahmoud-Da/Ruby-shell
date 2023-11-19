"Exception"
# 例外やエラー発生するスーパークラス

"例外クラスを自作する"
class MyError < RuntimeError; end

begin
  raise MyError
rescue => ex
  p ex
end

#<MyError: MyError>
=> #<MyError: MyError>

"エラーメッセージを指定する"
class MyError < RuntimeError; end

begin
  raise MyError.exception("エラーが発生しました。")
rescue => ex
  p ex
end
#<MyError: エラーが発生しました。>
=> #<MyError: エラーが発生しました。>

"エラーメッセージ取得する"
class MyError < RuntimeError; end

begin
  raise MyError.exception("エラーが発生しました。")
rescue => ex
  p ex.message
end
"エラーが発生しました。"
=> "エラーが発生しました。"

"バックトレースを取得する"
class MyError < RuntimeError; end

begin
  raise MyError.exception("エラーが発生しました。")
rescue => ex
  p ex.backtrace
end
=> 
["(irb):35:in `<top (required)>'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb/workspace.rb:117:in `eval'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb/workspace.rb:117:in `evaluate'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb/context.rb:525:in `evaluate'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:559:in `block (2 levels) in eval_input'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:877:in `signal_status'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:552:in `block in eval_input'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:634:in `block in each_top_level_statement'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:629:in `loop'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:629:in `each_top_level_statement'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:551:in `eval_input'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:503:in `block in run'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:502:in `catch'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:502:in `run'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/lib/irb.rb:409:in `start'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/gems/irb-1.8.3/exe/irb:9:in `<top (required)>'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/bin/irb:25:in `load'",
 "/Users/mahmouddabbbagh/.rbenv/versions/3.2.2/bin/irb:25:in `<main>'"]


"バックトレースを設定する"
class MyError < RuntimeError; end
begin
  raise MyError.exception("エラーが発生しました。")
rescue => ex
  ex.set_backtrace("this is new backtrace")
end
=> ["this is new backtrace"]
