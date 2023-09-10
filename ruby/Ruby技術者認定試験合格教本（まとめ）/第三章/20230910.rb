"Chapter1"
"職別子"
# システムがクラス名・メソッド名や変数名の書類を認識するためにです。
# つまり、対象変数がローカル変数またはグローバル変数などを認識できる。

"例"
ローカル変数の先頭が
1- アンダースコア「_」=> _name
2- 英文字 => hoge

"不正な例"
obj-1
name?
1_to_10

"予約語"
nil true not or and
Begin END begin end do then yield rescue ensure 
class module def defined? alias undef super self return
while until for in break next redo retry
case when if unless else elsif


"変数と定数のスコープ"


                                           
"ローカル変数"
命名原則: 先頭: 英文字または_      
        構造文字: 英文字または_

スコープ: 最初に代入式が使用された位置から、その代入を含め
プロックまたはメソッド終わるまでに

初期されてない時に紹介した場合の動作:
*参照箇所より前に、代入文字が記述してあるか実行されなかった場合
*nil または代入文字が記述されていない場合は例外発生 「(NameError)」
"グローバル変数"
命名原則: 先頭: $      
        構造文字: 英文字または_

スコープ: どちらも参照可能（メソッド外でも内でも）

初期されてない時に紹介した場合の動作:
*nil


"クラス変数"
命名原則: 先頭: @@      
        構造文字: 英文字または_

スコープ: そのクラス全てインスタンスから参照可能

初期されてない時に紹介した場合の動作:
*例外発生「(NameError)」
"インスタンス変数"
命名原則: 先頭: @      
        構造文字: 英文字または_

スコープ:そのクラスの全インスタンスから参照可能 

初期されてない時に紹介した場合の動作:
*nil

"定数"
命名原則: 先頭: 英大文字      
        構造文字: 英文字または_

スコープ:定数が定義されたクラス・モジュール内、そのクラス、モジュール内側で定義されたクラス・モジュール
ない、およびそのクラス・モジュールを継承またはインクレードしているモジュール内
クラス名やモジュール名修飾すれば、外部からアクセス可能

初期されてない時に紹介した場合の動作:
*例外発生「(NameError)」



"例"
foo = 1

def bar
  foo # メソッドから外そくローカル変数は参照出来ないため、メソッド呼び出しと見される
end

bar  => 例外発生「(NameError)」 barメソッドの内側で定義されてないためです
baz => 例外発生「(NameError)」 ローカル変数bazには対応する代入文字がないため

"例"
$foo = 1

def bar
  $foo
end

bar => 1
$dodo => nil


"Chapter2"
"リテラル"
# リテラルは変数と対になるもので。プログラムはそのまま記述する値を指します。
"例"
foo = 1 => #リテラルは「1」になります。この場合はリテラルは数字型 


Rubyのリテラル
数字値
論理値
文字列
シンプル
配列
ハッシュ
範囲
正規表現
コマンド出力


"数字値"
2 進数(binary)         b       0b10 => 2
4 進数(octal)       oまたはO    0o10 => 4
8 進数(decimal)        d       0d10 => 8
16 進数(hexadecimal)   x       0x10 => 16

"例"
0b101 #=> 5
0b2 #=> エラー発生（syntaxエラー）：２進数では「2」の数字はないから

"例"
100_122 #=> 100122 もっと描きやすい書き方

"有理数(rational)"
# 整数の比（英: ratio）として表すことができる実数のことである。 分母・分子ともに整数の分数（分母≠0）として表すことができる実数との説明もされる。
#  整数は、分母が 1 の分数と考えることにより、有理数の特別な場合となる。
# Here are a few examples of rational numbers:
1/2
# This is a rational number because it's the fraction of two integers, 1 and 2.
-3/4
# Similarly, this is a rational number since it's the fraction of two integers, -3 and 4.

"複素数(Complex numbers)"
# 数学の分野で使用される特殊な数の一種です。複素数は実数（Real numbers）と区別され、通常 "i" という記号で表される虚数単位（imaginary unit）を含みます。一般的な複素数は、実数部分と虚数部分から構成されます。

# 複素数 z は以下の形式で表されます：

z = a + bi

# ここで、

# "a" は実数部分（real part）で、実数であることがあります。
# "b" は虚数部分（imaginary part）で、虚数単位 "i" と実数であることがあります。

"例"
42/10r #=> (21/5)
(42/10r).class #=> Rational
3.14r #=>  (157/50)
42i #=> (0+42i)
42i.class #=> Complex
3.14i #=> (0+3.14i)
42ri #=> (0+(42/1)*i)
(42ri).class #=> Complex

"数字演算"
"演算"
1 + 2 #=> 3
1 - 2 #=> -1
2 * 3 #=> 6
4 / 2 #=> 2
4 % 3 #=> 1 (あまり取得)


"比較"
1 == 1 #=> true
1 != 2 #=> true
1 < 2 #=> true
2 >= 2 #=> true

"UFO演算"
100 <=> 100 #=> 0
100 <=> 10 #=> 1 (右の値大きいなら)
10 <=> 100 #=> -1（左の値は大きいなら）

"自己代入演算子"
a = 100
a += 1 #=> 101
a -= 1 #=> 99
a *= 2 #=> 200
a **= 2 #=> 10000

"数字クラス"
1.class #=> Integer
1.class.superclass #=> Numeric
1.class.superclass.superclass #=> Object
1.2.class #=> Float

"メソッドの実行"
1.+(2) #=> 3

"演算子名"
スコープ演算子：「::」
代入演算子：「=」
条件演算子：「?:」
範囲演算子：「.. ...」
論理演算子：「&& and || or not」
