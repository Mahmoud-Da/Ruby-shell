str = '東急田園都市線/江田駅 歩18分'
re = Regexp.new(/^(\W+)線\/(\W+)駅\s歩(\d+)分$/)
re =~ str

line = Regexp.last_match[1]
station = Regexp.last_match[2]
walk_minutes = Regexp.last_match[3]

puts "#{line}線の#{station}駅まで徒歩で#{walk_minutes}分です。"
