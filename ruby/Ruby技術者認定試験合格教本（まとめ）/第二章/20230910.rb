# RVMとは：
Mac OS用の複数Rubyバージョンを切り替えることができるオープンソースのツールのことです。

def add(a, b)
  a + b
end

add(1, 3)

# ;を利用して、一つの行で書ける
def add2(a,b); a + b end


# クラス定義
class Hoge
  def test
    p "test"
  end
end

hoge = Hoge.new
hoge.test

# require vs load
require #=> なんでも実行しても一回しか実行しない　/ 自動的に補完する
load #=> 実行された回数だけ実行する　/ 補完しない



