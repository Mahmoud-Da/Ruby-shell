"特殊なオプジェクト"
"Numreicクラス"
*ceil # 自身と同じか、自身より大きい整数返す
*floor #　自身と同じか、自身より小さい整数返す
*round # 最も近い整数を返す
*truncate # 自身と０の間にある整数で最も近い返す

1.9.ceil # 2
1.9.floor # 1
1.9.round # 2
1.9.truncate # 1

-1.1.ceil # -1
-1.1.floor # -2
-1.1.round # -1
-1.1.truncate # -1


"数値の絶対値"
-3.abs #=> 3
-3.abs2 #=> 9 {3 * 3}

"数値使って繰り返し"
1.step(10, 2) {|n| puts n} #=> 1 3 5 7 9

"Floatクラス"
1.2
1.to_f #=> 1.0

"Integerクラス"
"整数のべき乗"
2.**(4) #=> 16
2**4 #=> 16

"整数の除算"
*divmod # 自身を割る数を指定します。 [結果、余り]
10 / 3 #=> 3 
10 / 3.0 #=> 3.3333333333333335

10.divmod(3) #=> [3, 1]
"整数に対応する文字を求める"
*chr # 対応文字列を返す
65.chr #=> "A"
-1.chr #=> out of char range (RangeError)

"次の整数、前の整数求める"
*next / *succ # 次の整数を返す
*pred # 前の整数を返す
10.next #=> 11
10.succ #=> 11
10.pred #=> 9

"整数を作った繰り返し"
*times # 整数の数だけ
*upto / downto #与えらたプロックを実行
* sum #calculate the sum of numbers

sum = 0
10.times {|i| sum += i}
puts sum #=> 45

"数値の除算の残り"
*modulo # 余りを返す
10.modulo(3)#=> 1
10 % 3 #=> 1

"ビット演算"
# ビット演算 【bitwise operation】 ビット演算とは、主にコンピュータ上で行われる演算の一つで、
#　対象データをビット列（2進数の0と1の羅列）とみなして、ビットの移動やビット単位の論理演算などを行うもの。
# ビット単位の演算は、アセンブリ言語で高速な演算を行わせるため、CPU内部のレジスタを使った処理で多用されます。 
| #論理和
& #論理積
^ #非知的論理和
~ #否定
<< #左シフト演算
>> #右シフト演算

10 | 3 #=> 11
10 & 3 #=> 2
10 ^ 3 #=> 9
~ 10 #=> -11
10 << 3 #=> 80
10 >> 3 #=> 1

# 少数を使った繰り返し
1.5.step(21.5, 2.5) {|f| puts f} #=> 1.5 4.0 6.5 9.0 11.5 14.0 16.5 19.0 21.5

"Rationalクラス"
# 有理数のインスタンス作成
Rational(a, b = 1) #=> (10/1)

*denominator #　分母を返す
* numerator #　分子を返す

a = Rational(1, 2) #=> (1/2)

a.denominator #=> 2
a.numerator #=> 1

(0.25).denominator #=> 4
(0.25).numerator #=> 1


"divmodによる演算結果"
Rational(1, 2).divmod Rational(1, 3) #=> [1, (1/6)]
Rational(-4, 13).abs #=> (4/13)

"Rationalクラスのインスタンスと異なるクラスのインスタンス四則演算"
# 四則演算とは、「+, -, * /」
Rational(1, 2) + Rational(1, 3) #=> (5/6)
Rational(1, 2) + 1 #=> (3/2)
Rational(1, 2) + 0.25 #=> 0.75

"Complexクラス"
# 複素数のインスタンス作成
Complex(a, b)

Complex(1, 2) #=> (1+2i)
a = (1 + 2i) #=> (1+2i)

*real #数値の部分を返す
*imaginary #嘘部を返す

a = (1 + 2i) #=> (1+2i)

a.real #=> 1
a.imaginary #=> 2

3.real #=> 3
3.imaginary #=> 0

"極座標に変換"
*polar # 極座標に変換 [絶対値, 偏角値]
*abs # 絶対値
*arg # 偏角値

Complex(1, 2).polar # => [2.23606797749979, 1.1071487177940904]
Complex(1, 2).abs #=> 2.23606797749979
Complex(1, 2).arg #=> 1.1071487177940904

"Complexクラスのインスタンスと異なるクラスのインスタンス四則演算"
Complex(1, 2) + 0.5 #=> (1.5+2i)
