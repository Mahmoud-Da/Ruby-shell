# 課題
# 　3の倍数かつ5の倍数（= 15の倍数）結果： 15の倍数です
# ・5の倍数　結果： 5の倍数です
# ・3の倍数 結果： 3の倍数です

number=5

if number == 0
    puts "0です"
elsif number%3==0 && number%5==0
    puts "15の倍数です"
elsif number%5==0
    puts "5の倍数です"
elsif number%3==0
    puts "3の倍数です"
else
    puts "15の倍数じゃないです"
end
