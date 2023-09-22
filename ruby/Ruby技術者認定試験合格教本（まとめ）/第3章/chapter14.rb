"スレッド"
# Therad classを使用して、マルチスレッドのプログラムを書くことがきます。
t = Thread.new do 
  p "start"
  sleep 5
  p "end"
end
p "wait"
t.join # waitを出力して、５秒後にendが出力されます。

# new / fork /start でスレッドを生成することができます。

3.times do |i|
  Thread.start(i) do |index|
    p "thread-#{index} start"
  end
end
sleep 1
# joinメソッドでスレッドの終了を持つこと


"ファイバ"
# 複数のタスクを切り替え、並行処理するための機能です。
f = Fiber.new do
  (1..3).each do |i|
    Fiber.yield i
  end
  nil
end

p f.resume #=> 1
p f.resume #=> 2
p f.resume #=> 3
p f.resume #=> nil
p f.resume #=> FiberError(例外発生)
