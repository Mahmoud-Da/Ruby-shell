"Regexp"
# 正規表現を扱うクラス。

"オプジェクト生成"
a = /abcdef/i #=> /abcdef/i
a.class #=> Regexp
Regexp.new("abc") #=> /abc/

a = Regexp.new("abcdef",Regexp::MULTILINE | Regexp::IGNORECASE ) #=> /abcdef/mi

"正規表現オブジェクトをマッチング"
*match # マッチした場合はMatchDataオブジェクトを返す、マッチしなかった場合にはnilを返す
=~ # マッチした場合は位置のインデックスを返す、マッチしなかった場合にはnilを返す {Stringクラスでも同じ動作}
=== # マッチした場合はtrueを返す、マッチしなかった場合にはfalseを返す
~ # 特殊変数と「$_」マッチングするメソッド

a = Regexp.new("abc") #=> /abc/
a.match("abcdef") #=> #<MatchData "abc">
a =~ "abcdef" #=> 0
a === "abcdef" #=> true

$_ = "abcdef" #=> "abcdef"
a = Regexp.new("abc") #=> /abc/
~ a #=> 0

"正規表現の特殊をエスケープする"
*escape / quote # 「., \, [], ()」などをエスケープする際

Regexp.escape("array.push(hash[key])") #=> "array\\.push\\(hash\\[key\\]\\)"

"マッチした結果を取得"
*last_match / $~ # の中で最後に行った正規表現のマッチ結果である、特殊変数でも取得できる

/abcdefg/ =~ "abcdefghijklmnopqrstuvwxyz" #=> 0
Regexp.last_match #=> #<MatchData "abcdefg">
$~ #=> #<MatchData "abcdefg">

/(abc)d(efg)/ =~ "abcdefghijklmnopqrstuvwxyz"
Regexp.last_match(0) #=> "abcdefg"
$& #=> "abcdefg"
Regexp.last_match(1) #=> "abc"
$1 #=> "abc"

"正規表現の論理和を求める"
*union # 複数の正規表現を統合し

a = Regexp.new("abc") #=> /abc/
b = Regexp.new("ABC") #=> /ABC/
c = Regexp.union(a, b) #=> /(?-mix:abc)|(?-mix:ABC)/

c =~ "abc" #=> 0
Regexp.last_match #=> #<MatchData "abc">

"正規表現オプジェクトの属性を取得"
option # Regexp::MULTILINE,Regexp::MULTILINE | Regexp::IGNORECASE, Regexp::EXTENDEDの論理和を返す
casefold? # Regexp::IGNORECASE　が設定されているかどうか,booleanを返す
encoding # encodingを返す
source # 正規表現の元となった文字列表現を返す、{他の正規表現に埋め込んでも「to_s」元の意味が保たれるように形式「inspect」元の意味が保たない}

a = Regexp.new("abcdef",Regexp::MULTILINE | Regexp::IGNORECASE ) #=> /abcdef/mi
a.options #=> 5
a.options & Regexp::IGNORECASE #=> 1


a = Regexp.new("abcdef") #=> /abcdef/
a.casefold? #=> false
a = Regexp.new("abcdef",Regexp::MULTILINE | Regexp::IGNORECASE ) #=> /abcdef/mi
a.casefold? #=> true


a = Regexp.new("ルビー")  #=> /ルビー/
a.encoding #=> #<Encoding:UTF-8>

# source:
# The source method is used to return the source or the actual regular expression pattern as a string.
# It returns the pattern without any surrounding slashes or flags.
# This is helpful if you want to retrieve the raw pattern from a regular expression object.
# Example:

regex = /abc/i
pattern = regex.source #=> 'abc'

# to_s:
# The to_s method returns a string representation of the regular expression.
# It includes the pattern enclosed in slashes and any flags applied to the regular expression.
# Example:


regex = /abc/i
pattern_string = regex.to_s #=> '/abc/i'

# inspect:
# The inspect method returns a more detailed and human-readable representation of the regular expression.
# It includes the pattern, flags, and additional information about the regular expression object.
# Example:


regex = /abc/i
regex_inspect = regex.inspect #=> '/abc/i'
# The main differences between these methods are in the format of the returned string and the level of detail provided:

# source returns just the pattern.
# to_s returns the pattern enclosed in slashes and includes flags.
# inspect provides a more detailed representation of the regular expression object, including pattern, flags, and additional information.
# You would choose the method that best suits your needs based on the level of detail and formatting you require for your regular expression representation.
