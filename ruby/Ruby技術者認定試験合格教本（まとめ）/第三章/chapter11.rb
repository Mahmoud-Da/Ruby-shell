"正規表現"
# 「 / 」で囲むと正規表現のオブジェクトが生成される
"正規表現オブジェクトの生成方法"
/Ruby/ #=> /Ruby/
%r(Ruby) #=> /Ruby/
Regexp.new "Ruby" #=> /Ruby/

"case式と正規表現オブジェクト"
/Ruby/ === "I Love Ruby" #=> true

p case "I Love Ruby"
  when /Ruby/
    "Ruby!"
  when /Java/
    "Java!"
  end #=> "Ruby!"

