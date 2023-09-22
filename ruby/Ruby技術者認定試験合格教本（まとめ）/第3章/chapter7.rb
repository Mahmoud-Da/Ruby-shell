"for式"
a = [2, 3, 4]
for i in a do
  p i
end #=> [2, 3, 4]

# for <職別子> in <式> do
# end

for i,j in [[1, 2], [3, 4]] do
  p i + j
end 
# => 3
# => 7

"スコープ"
# 中に定義した変数を参照可能
for i in [2, 3, 4]
  bar = 1
end
p bar #=> 1

# 中に定義した変数を参照不可能
[2, 3, 4].each do
  bar = 1
end

p bar #=> NameError
