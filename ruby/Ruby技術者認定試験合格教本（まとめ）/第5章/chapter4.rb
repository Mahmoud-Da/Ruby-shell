"Encodingクラス"
# Encoding情報を扱うクラス

"デフォルトのエンコーディング確認"
Encoding.default_external #=> #<Encoding:UTF-8>

"エンコーディングの互換性確認"
Encoding.compatible?(Encoding::UTF_8, Encoding::US_ASCII) #=>  #<Encoding:UTF-8> {ある}



Encoding.compatible?(Encoding::UTF_8, Encoding::Shift_JIS) #=> nil {ない}

"互換性がない場合"
# 文字列結合できない
*encode # エンコーディング変更
a = "るびー"

b = a.encode("EUC-JP") #=> "\x{A4EB}\x{A4D3}\x{A1BC}"

a + b #=> Encoding::CompatibilityError

# ただし、互換性のないエンコーディングでもどちらか一方の文字列がASCII文字しか含まない場合は結合できます。

a = "abc"

b = "あいう".encode("EUC-JP") #=> "\x{A4EB}\x{A4D3}\x{A1BC}"

a + b #=> "abc\x{A4A2}\x{A4A4}\x{A4A6}"

(a + b).encoding #=> #<Encoding:EUC-JP>

