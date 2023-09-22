"case式"
case <式>
when <条件式>
  処理
when <条件式>
  処理
else
  処理
end

"例"
case 1
when 1 then
  p 1
end #=> 1


case "abc"
when "abc"
  p 1
when "abc"
  p 2 #{実行されない}
end #=>1

a = 10
case a
when 1
  p 1
else
  p 2
end #=> 2

"複数の条件式の指定"
# カンマで複数の条件を指定できる
a = 3
case a
when 1, 2
  p 1
when 3, 4
  p 2
else
  p 3
end #=> 2

"条件式に範囲を指定"
a = 7
case a
when 1...5 #{(1...5) === 7 false}
  p 1
when 5..10 #{(1...5) === 7 false}
  p 2
end #=> 2

"while式とuntil式"
"while式"
while <条件式> do
  
end

"until式の例"
i = 0
until i == 5 do
  p i
  i += 1
end #=>0 1 2 3 4

"後置"
i = 0
begin
  p i
  i += 1
end while(1..4) === i #=>0 1 2 3 4

"whike修飾子"
i = 0
p i += 1 while (1..4) === i #=>0 1 2 3 4 
