# 文字列
a = 'Hello Ruby'
puts a

# 文字列化
b =  '1'.to_s
puts b #=> "1"
c = 1.to_s
puts c #=> "1"

d = nil.to_s
puts d #=> ""

e = true.to_s
puts e #=> "true"

=begin
どれも同じ
引数の括弧は省略可能
引数がない場合も省略可能
1.to_s()
1.to_s
1.to_s(16)
1.to_s 16
=end
