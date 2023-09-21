"プロックを受けるメソッド"
"配列のeachメソッド"
[1, 2, 3].each do |value|
  p value
end #=> 1から3まで

"each_with_indexメソッド"
[3, 4, 5].each_with_index do |value, index|
  p value
end  #=> 3,4,5

"ハッシュのeachメソッド"
{:a => 1, :b => 2}.each do |key, value|
  p "#{key}: #{value}"
end #=> "a: 1" "b: 2"

"ハッシュのeach_keyメソッドとeach_valueメソッド"
{:a => 1, :b => 2}.each_key do |key|
  p "#{key}"
end #=> "a" "b"

{:a => 1, :b => 2}.each_value do |value|
  p "#{value}"
end #=> "1" "2"


"範囲オプジェクトのeachメソッド"
("a".."z").each do |value|
  p value
end #=> aからzまで表示

"uptoメソッド"
2.upto(4) do |i|
  p i
end #=> 2から4まで表示

5.downto(1) do |i|
  p i
end #=> 5から1まで表示

"timeメソッド"
4.times do |i|
  p i
end #=> 0から3まで表示
