# frozen_string_literal: true

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

# どれも可能
# 引数の括弧は省略可能
# 引数がない場合も省略可能
# 1.to_s()
# 1.to_s
# 1.to_s(16)
# 1.to_s 16

# リテラル値
# 123 数値
# 1.23 浮動小数点
# "Hello" 文字列
# [1, 2, 3] 配列
# {a: 1, b: 2} ハッシュ
# /regexp/ 正規表現
#
# 変数はスネークケースが一般的
#
# 下のような再代入もできる
# x = 123
# x = 'Hello'
# x = 456
#
# 下のような複数の変数を同時に代入もできる
# a, b = 1, 2
#
# 下のような複数の変数に同じ値を代入もできる
# a = b = 100
# 問題もある
# 下のように参照渡しになるので注意
# a = 101
# a #=> 101
# b #=> 101
#
# シングルクォートとダブルクォートの違い
# シングルクォートはエスケープシーケンスが使えない
# シングルクォートは文字列展開が使えない
#
# a = 'Hello\nWorld'
# puts a #=> Hello\nWorld
#
# b = "Hello\nWorld"
# puts b #=> Hello
#         # World
#
# name = 'Alice'
# a = "Hello, #{name}" #=> Hello, Alice
#
# b = 'Hello, #{name}' #=> Hello, #{name}
#
# puts "Hello\\nWorld" #=> Hello\nWorld
#
# 暗黙的な型変換はおこなわれない

n  = 10
if n > 5
  puts 'nは5より大きい'
else
  puts 'nは5以下'
end

country = 'italy'
greeting =
  # if country == 'japan'
  #   'こんにちは'
  # elsif country == 'us'
  #   'Hello'
  # elsif country == 'italy'
  #   'ciao'
  # else
  #   '???'
  # end
  case country
  when 'japan', '日本'
    'こんにちは'
  when 'us', 'アメリカ'
    'Hello'
  when 'italy', 'イタリア'
    'ciao'
  else
    '???'
  end

puts greeting

def add(num1, num2)
  num1 + num2
end

puts add(1, 2) #=> 3

puts %(hello#{add(1, 2)})

# ヒアドキュメント
a = <<TEXT
  これはヒアドキュメントです
複数行にわたる長い文字列を作成するのに便利です
# hello
TEXT
puts a

# <<~を使うと内部のインデントが無視される
b = <<~TEXT
これはヒアドキュメントです
複数行にわたる長い文字列を作成するのに便利です
# hello
TEXT
puts b

def some_method
  # <<-を使うと最後の識別子をインデントさせることができる
  <<-TEXT
これはヒアドキュメントです
複数行にわたる長い文字列を作成するのに便利です
# hello
  TEXT
end
puts some_method

# ラショナル
r = 2 / 3r
puts r #=> 2/3

puts __FILE__ #=> sample.rb
# この行の行番号を表示
puts __LINE__ #=> 144
puts __ENCODING__ #=> UTF-8
