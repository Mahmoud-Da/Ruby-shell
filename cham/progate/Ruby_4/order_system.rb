require "./menu"

pizza_menu = Menu.new(name: "ピザ", price: 800)
sushi_menu = Menu.new(name: "すし", price: 1000)
cola_menu = Menu.new(name: "コーラ", price: 300)
tea_menu = Menu.new(name: "お茶", price: 200)

menus = [pizza_menu, sushi_menu, cola_menu, tea_menu]
index = 0
menus.each do |menu|
  puts "#{index}. " + menu.info
  index += 1
end

puts "--------------"
puts "メニューの番号を選択してください"

select_number = gets.chomp.to_i
if select_number > 3
  puts "0から3まで選択してください。" 
  exit 
else
  order = select_number
end


# 選択されたメニューのインスタンスを変数selected_menuに代入してください
selected_menu = menus[order]
# 「選択されたメニュー: ○○」となるように出力してください
puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円割引)"

# 入力を数値として受け取って変数countに代入してください
count = gets.chomp.to_i

# 「お会計は○○円です」となるように出力してください
puts "お会計は#{selected_menu.get_total_price(count)}円です"
