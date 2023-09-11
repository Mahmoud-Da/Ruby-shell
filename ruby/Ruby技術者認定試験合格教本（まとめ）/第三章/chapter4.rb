"パーセント記法"
# パーセント記法では、文字列を囲んで記号をプログラマ自身が指定できます。
# 「%」の後にどんな記号OK
"例"
a = %*test*
p a #=> "test"

b = %#test#
p b #=> "test"

c = %@test@
p c #=> "test"

d = %{test}
p d #=> "test"
# いつ利用？
# エスケープなしで、ダブルクォートを文字列中に使用
"例"
a = %*"test"*
a #=> "\"test\""

"書式"
# % 
# %q for Single-Quoted String:
str = %q(This is a single-quoted string with special characters: \\n and \\t.)
p str #"This is a single-quoted string with special characters: \\n and \\t."

# %Q for Double-Quoted String (Allows interpolation):
name = "John"
str = %Q(Hello, #{name}!)
p str #=> "Hello, John!"

# %s  for Symbol (Immutable identifiers):
sym = %s(my_symbol)
p sym #=> :my_symbol

# %W or Array of Double-Quoted Strings (Allows interpolation):
name1 = "Alice"
name2 = "Bob"
arr = %W(#{name1} #{name2})
p arr #=> ["Alice", "Bob"]

# %w for Array of Single-Quoted Strings (No interpolation):
arr = %w(apple banana cherry)
p arr #=> ["apple", "banana", "cherry"]


# %x for Running Shell Commands and Capturing Output:
result = %x(ls)
puts result #=> nil
# Applications
# Desktop
# Documents
# Downloads
# Library

# %r for Regular Expression:
pattern = %r(\d{3}-\d{2}-\d{4})
text = "Social Security Number: 123-45-6789"
p text.match(pattern) => #<MatchData "123-45-6789">

"式展開/interpolation"
name = "Alice"
greeting = "Hello, #{name}!"
puts greeting


"文字列演算"
# 右の値に数字値、左の値文字列
# 逆にしてしまうとTypeErrorが発生してしまいます。
a = "ru" + "by" #=> "ruby"
a * 3 #=> "rubyrubyruby"
3 * a #=> TypeError

# 末尾で連結する場合
a = "ru"
p a << "by" #=> "ruby"
p a #=> "ruby"

"異なる文字コード間の文字列操作"
a = "ルビー"
a.encoding #=> #<Encoding:UTF-8>

b = a.encode("SJIS")
b.encoding #=> #<Encoding:Windows-31J>

a + b #=> Encoding::CompatibilityError


"文字列の比較"
"a" < "b"  #=> true
"ab" < "ac" #=> true
"Ab" < "Ab" #=> false
"Ab" == "Ab" #=> true
"Ab" <=> "Ab" #=> 0

"length Method"
"abcde".length #=> 5
"日本語".length #=> 3
